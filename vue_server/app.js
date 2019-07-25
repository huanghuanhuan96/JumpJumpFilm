//app.js node.js 服务器
//1:第三方模块 
//  express          web服务器
//  cors             跨域
//  express-session  session
//  body-parser      处理post数据
//  multer           上传文件
//  fs               文件操作(内置)
//  mysql            mysql驱动模块 
//下载指令:联网 
//npm i express-session body-parser //multer mysql express cors
//1:引入二个模块  express mysql
const express = require("express");
const mysql = require("mysql");
//2:创建连接池
var pool = mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  password:"",
  port:3306,
  database:"tt",
  connectionLimit:15
})
//3:创建express对象 nodejs app.js
var server = express();
//4:指定静态资源目录
server.use(express.static("public"))
//5:处理跨域请求
const cors = require("cors");
server.use(cors({
  origin:["http://127.0.0.1:8080",
  "http://localhost:8080"],
  credentials:true
}));
//6:添加session功能
const session = require("express-session");
server.use(session({
  secret:"128位字符串",
  resave:true,
  saveUninitialized:true
}));
//9:绑定监听端口
server.listen(3000);

//功能一：接收用户登录请求
server.get("/login",(req,res)=>{
   //1:接收脚手架参数 uname upass
   var uname = req.query.uname;
   var upwd = req.query.upwd;
   console.log(uname,upwd);
   //2:sql
   //  SELECT id FROM t_login WHERE //uname = ? AND upass = md5(?)
   var sql =" SELECT id FROM tt_user WHERE uname = ? AND upwd =?"; //md5(?)
   //3:返回结果 
   pool.query(sql,[uname,upwd],(err,result)=>{
     if(err)throw err;	
	 console.log(result);
     if(result.length==0){
       res.send({code:-1,msg:"用户名或密码有误"});
     }else{
       //result=[{id:1}]
       req.session.uid = result[0].id;
//       console.log(1);
//       console.log(req.session); 
       res.send({code:1,msg:"登录成功",uid:result[0].id});
     }
   });
});
//功能二:用户注册
server.get("/register",(req,res)=>{
	var uname=req.query.uname;
	var upwd=req.query.upwd;
	console.log(uname,upwd);
	pool.query("insert into tt_user values(null,?,?)",[uname,upwd],(err,result)=>{
		if(err){throw err};
		if(result.affectedRows>0){
			res.send('200')
		}else{
			res.send("404")
		}
	})
})
	//验证用户是否存在
server.get('/hasUname',(req,res)=>{
	var uname=req.query.uname;
	pool.query('select id from tt_user where uname=?',[uname],(err,result)=>{
		if(err){throw err};
		if(result.length>0){
			res.send('200')
		}else{
			res.send('404')
		}
	})
})
//功能三:电影列表 
server.get("/filmlist",(req,res)=>{
 //1:参数 pno pageSize
 var pno = req.query.pno;
 var ps = req.query.pageSize;
 //2:默认值 
 if(!pno){pno=1}
 if(!ps){ps=8}
 //2:sql
 var sql ="select*from tt_filmlist limit ?,?"
 var offset = (pno-1)*ps;
 ps = parseInt(ps);
 //3:json
 pool.query(sql,[offset,ps],(err,result)=>{
   if(err)throw err;
   res.send({code:1,msg:"查询成功",data:result});
 })
});
//功能四:电影详情页
server.get("/filmdetail",(req,res)=>{
 //1:参数 
 var fid=req.query.fid
 //2:sql
 var sql ="select*from tt_filmlist where fid=?"
 pool.query(sql,[fid],(err,result)=>{
   if(err)throw err;
   res.send({code:1,msg:"查询成功",data:result});
 })
});
//功能五:电影院列表
 server.get("/cinemalist",(req,res)=>{
 //1:参数 pno pageSize
//	 var pno = req.query.pno;
//	 var ps = req.query.pageSize;
//	 //2:默认值 
//	 if(!pno){pno=1}
//	 if(!ps){ps=8}
	 //2:sql
	 var sql ="select*from tt_cinemalist"
//	 var offset = (pno-1)*ps;
//	 ps = parseInt(ps);
	 //3:json
	 pool.query(sql,(err,result)=>{
	   if(err)throw err;
	   console.log(result);
	   res.send({code:1,msg:"查询成功",data:result});
	 })
});
	 //功能五.1:指定cid的电影院名字,地址
 server.get("/cinemaDetail",(req,res)=>{
	 var cid=req.query.cid;
	 var sql ="select cid,title,position from tt_cinemalist where cid=?"
	 pool.query(sql,[cid],(err,result)=>{
	   if(err)throw err;
	   res.send(result);
	 })
});
//功能六:获取电影场次列表
server.get('/times',(req,res)=>{
	//参数
  var fid=req.query.fid;
  var cid=req.query.cid;
  //console.log(req.query);
	var sql="select * from tt_times where fid=? and cid=?";
	pool.query(sql,[fid,cid],(err,result)=>{
		if(err){throw err};
		if(result.length>0){
			res.send(result)
		}
	})
})
//*****获取选座页数据 */
server.get('/choose',(req,res)=>{
  //参数
  var fid=req.query.fid;
  var cid=req.query.cid;
  var tid=req.query.tid;
  var output={};
  pool.query('select cid, title from tt_cinemalist where cid=?',[cid],(err,result)=>{
    if(err){throw err};
    if(result.length>0){
      output.cData=result[0];
      pool.query('select fid, title,time from tt_filmlist where fid=?',[fid],(err,result)=>{
        if(err){throw err};
        if(result.length>0){
          output.fData=result[0];
          pool.query('select tid, starttime,edition from tt_times where tid=?',[tid],(err,result)=>{
            if(err){throw err};
            if(result.length>0);
            output.tData=result[0];
            res.send(output);
          })
        }
      })
    }
  })
})


//功能三:查询指定用户购物车信息88~114
//app.js
server.get("/cart",(req,res)=>{
  console.log(2);
  console.log(req.session);
  //参数
  var uid = req.session.uid;
  //sql
  var sql = "SELECT id,img,uid,price,count FROM xz_cart WHERE uid = ?";
  pool.query(sql,[uid],(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:"查询成功",data:result})
  });
  //json
})


