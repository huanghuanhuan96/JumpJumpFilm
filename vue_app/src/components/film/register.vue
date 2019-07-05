<template>
    <div class="register" >
        <!-- 网页头 -->
        <titlebar :title="title" ></titlebar>

         <div class="register-main" style="position:relative">
            <input type="text" placeholder="账户名/手机号/Email" v-model="uname" @blur="hasUname">
            <span class="err" v-show="has">该用户名已被注册</span>
            <mt-popup 
                v-model="uname_popupVisible"
                position="middle">
                <div class="mt-uname">
                   此段不能为空
                </div>
            </mt-popup>
            <input type="password" placeholder="请输入您的密码" v-model="upwd">
            <mt-popup
                v-model="upwd_popupVisible"
                position="middle">
                <div class="mt-upwd">
                   此段不能为空
                </div>
            </mt-popup>
            <input type="password" placeholder="请再次输入您的密码" v-model="upwdAgain" >
            <mt-popup
                v-model="upwdAgain_popupVisible"
                position="middle">
                <div class="mt-upwdAgain">
                   此段不能为空
                </div>
            </mt-popup>
            <mt-popup
                v-model="upwdErr_popupVisible"
                position="middle">
                <div class="mt-upwdErr">
                   两次密码不一致
                </div>
            </mt-popup>
            <mt-button size="large" type="danger" @click="register">注册</mt-button>
        </div>

    </div>
</template>

<script>
//引入titlebar
import titlebar from "./common/titlebar"
export default {
    data(){
        return{
            title:"跳跳电影",
            uname:"",
            upwd:"",
            upwdAgain:"",
            uname_popupVisible:false,
            upwd_popupVisible:false,
            upwdAgain_popupVisible:false,
            upwdErr_popupVisible:false,
            has:false

        }
    },
    methods:{
        //1.注册事件
        register(){
            console.log("打桩");
            //1.1判断是否为空
            if(this.uname==""){
                this.uname_popupVisible=true;
                return
            }else if(this.uname!=="" && this.upwd==""){
                this.upwd_popupVisible=true;
                return;
            }else if(this.uname!=="" && this.upwd!=="" &&this.upwdAgain==""){
                this.upwdAgain_popupVisible=true;
                return;
            }else if(this.upwd!==this.upwdAgain){
                this.upwdErr_popupVisible=true;
                return;
            }
            var url="/register";
            var obj={
                uname:this.uname,
                upwd:this.upwd
            };
            //1.2发送请求,添加用户
            this.axios.get(url,{params:obj}).then(result=>{
                //console.log(result);
                if(result.data==200){ //如果返回值为200
                    return new Promise((open)=>{  //设置promise
                        this.$toast({  //弹出提示
                        message:'注册成功',
                        position:'middle',
                        duration:1000
                        });
                    }).then(
                        setTimeout(()=>{ //一秒后跳转
                            this.$router.push('/login')
                        },1000)
                        
                    )     
                }
            })
        },
        //2.失去焦点,判断用户名是否被注册过
        hasUname(){
            //如果不是空,验证用户名是否存在
            if(this.uname){
                var url="/hasUname";
                var obj={uname:this.uname};
                this.axios.get(url,{params:obj}).then(result=>{
                    //console.log(result.data);
                    if(result.data==200){
                        //已被注册
                        this.has=true
                    }else(this.has=false)
                })
            }
           
        }
    },
    components:{
        titlebar
    }
}
</script>

<style scoped>

    div.register-main{
        display: flex;
        flex-direction: column;
        margin-top: 5px;
    }
    div.register-main input{
        outline: none;
        border: 0;
        height: 2rem;
        padding-top: 0.5rem;
        padding-bottom: 0.5rem;
        padding-left: 0.8rem;
        border-bottom: 1px solid #ccc;
    }
    div.register-main button{
        width: 345px;height: 3rem;
        margin: 0.5rem auto;
        font-size: 1.3rem;
        
    }
    div.register-main span.err{
        position: absolute;
        font-size: 0.8rem;
        color: red;
        top:1rem;
        left: 60%;
    }
    /* 提示 */
     /* mt-popup */
    div.mt-uname{
        width: 10.5rem;
        height: 2rem;
        border-radius: 5px;
        background-color: #fff;
        position: absolute;
        top:-21rem;
        left:-5rem;
        text-align: center;
        line-height: 2rem;
        font-size: 1rem;
        color:red;
    }
    div.mt-upwd{
        width: 10.5rem;
        height: 2rem;
        border-radius: 5px;
        background-color: #fff;
        position: absolute;
        top:-18rem;
        left:-5rem;
        text-align: center;
        line-height: 2rem;
        font-size: 1rem;
        color:red;
    }
    div.mt-upwdAgain{
        width: 10.5rem;
        height: 2rem;
        border-radius: 5px;
        background-color: #fff;
        position: absolute;
        top:-15rem;
        left:-5rem;
        text-align: center;
        line-height: 2rem;
        font-size: 1rem;
        color:red;
    }
    div.mt-upwdErr{
        width: 10.5rem;
        height: 2rem;
        border-radius: 5px;
        background-color: #fff;
        position: absolute;
        top:-15rem;
        left:-5rem;
        text-align: center;
        line-height: 2rem;
        font-size: 1rem;
        color:red;
    }
</style>
