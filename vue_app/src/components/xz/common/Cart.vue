<template>
   <div class="cart">
     <!--全选按钮16:10-->
     <div class="selectAll">
      全选
      <input type="checkbox" @change="selectAll"/>
     </div>
     <!--购物商品信息-->
     <div class="cart-item" v-for="(item,index) of list" :key="index">
       <div class="leftImgTxt"> 
         <input type="checkbox" v-model="item.cb" />
         <img :src="'http://127.0.0.1:3000/'+item.img" class="img"/>
         <div class="rightImg">
           <span>{{item.price}}</span>
           <span></span>
         </div>
       </div>
       <mt-button @click="delItem" :data-id="item.id">删除</mt-button>
     </div>
     <!--删除选中商品-->
     <div class="delAll">
       <mt-button @click="delAll">清空购物车</mt-button>
     </div>
   </div>
</template>
<script>
export default {
  data(){
    return {
      list:[]
    }
  },
  created() {
    this.loadMore();
  },
  methods: {
    delAll(){
      //0:确认框
      //清空购物车中所有商品 20
      //1:创建变量保存空字符串
      var str = "";
      //2:创建循环遍历数组
      for(var item of this.list){
         str += item.id+","
      }
      //3:获取当前元素id拼接字符串
      //4:结果 "6,7,9"
      str = str.substring(0,str.length-1);
      //5:发送ajax请求获取数据
      //6:创建url delAll 
      var url = "delAll";
      //7:创建obj
      var obj = {ids:str};
      //8:发送ajax请求
      this.axios.get(url,{params:obj}).then(result=>{
        console.log(result);
      })
      //9:刷新

    },
    selectAll(e){
      //1:获取当前全选按钮状态
      var rs = e.target.checked;
      //2:获取购物车数组列表
      //3:创建循环
      for(var item of this.list){
       //4:将当前商品cb状态修改全选状态
       item.cb = rs;
      }
    },
    //删除指定购物车商品 15:00
    delItem(e){
     //0:确认提示消息
     this.$messagebox({
       title:"消息",
       message:"是否删除指定数据",
       showConfirmButton:true,
       showCancelButton:true
     }).then(result=>{
        //如果用户选中取消按钮,停止执行
        if("cancel"==result){
          return;
        }else{
     //1:获取当前商品id
     var id = e.target.dataset.id;
     //2:发送ajax删除商品
     var url = "del";
     var obj = {id:id};
     this.axios.get(url,{params:obj}).then(result=>{
         this.loadMore();
      })
      }
     })
    },
     //加载购物车数据
     loadMore(){
       //1:创建url
       var url = "cart";
       //2:发送ajax请求
       this.axios.get(url).then(result=>{
       //1:获取数组
       var rows = result.data.data;
       //2:创建循环为数组中元素添cb属性
       for(var item of rows){
         item.cb = false;
       }
       //3:将修改后数据赋值list
       this.list = rows;
       })
       //3:获取服务器购物车数据
       //4:保存
     }
  },
}
</script>
<style>
/*最外层商品容器*/
.cart-item{
  display: flex;
  justify-content: space-between;
  align-items: center;
}
/*修改左侧图片与文字 11:33*/
.leftImgTxt{
  display: flex;
}
/*左侧图片*/
.img{
  width:50px;
  height:50px;
}
.rightImg{
  display: flex;
  align-items: center;
  margin-left:25px;
}
</style>


