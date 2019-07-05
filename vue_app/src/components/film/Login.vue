<template>
    <div class="Login">
        <!-- 网页头 -->
        <titlebar :title="title" :back="true" ></titlebar>
        <!-- 创建页面面板 -->
        <mt-tab-container v-model="selected">
            <!-- 面板一  美团账号登录 -->
            <mt-tab-container-item id="meituanMethod" >
                <div class="login-method">
                    <p class="meituan">美团账号登录</p>
                    <p @click="changeMethod">手机验证登录</p>
                </div>
                <div class="login-main">
                    <input type="text" placeholder="账户名/手机号/Email" v-model="uname">
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
                    <mt-button size="large" type="danger" @click="login">登录</mt-button>
                </div>
                <div class="login-other">
                    <span @click="toRegister" >立即注册</span>
                    <span>找回密码</span>
                </div>
                <div class="phone">
                    © 跳跳电影 客服电话：13598580362
                </div>
            </mt-tab-container-item>
            <!-- 面板二  手机验证登录 -->
            <mt-tab-container-item id="phoneMethod">
                <div class="login-method">
                    <p @click="changeMethod">美团账号登录</p>
                    <p class="phone">手机验证登录</p>
                </div>
            </mt-tab-container-item>
        </mt-tab-container>
    </div>
</template>

<script>
// 引入网页头子组件
import titlebar from "./common/titlebar"
export default {
    data(){
        return{
            title:"跳跳电影",
            selected:"meituanMethod",
            uname:"",
            upwd:"",
            uname_popupVisible:false,
            upwd_popupVisible:false,
        }
    },
    components:{
        titlebar
    },
    methods:{
        //1.改变登录方式事件
        changeMethod(){
            console.log(111);
            //先判断当当前的面板,然后切换
            if(this.selected=="meituanMethod"){
                this.selected="phoneMethod"//切换到手机方式
            }else {
                this.selected="meituanMethod"
            }
        },
        //2.用户登录事件
        login(){
            console.log('登录打桩');
            //先判断用户名和密码是否为空
            if(this.uname==""){
                this.uname_popupVisible=true;
                return
            }else if(this.uname!=="" && this.upwd==""){
                this.upwd_popupVisible=true;
                return;
            }
            var url="/login";
            // 获取到输入框中的用户名和密码
            var obj={
                uname:this.uname,
                upwd:this.upwd
            };
            this.axios.get(url,{params:obj}).then(result=>{
                //console.log(result)
                if(result.data.code==1){ //如果返回值为200
                    return new Promise((open)=>{  //设置promise
                        this.$toast({  //弹出提示
                        message:'登录成功',
                        position:'middle',
                        duration:1000
                        });
                        sessionStorage.uid=result.data.uid;
                    }).then(
                        setTimeout(()=>{ //一秒后跳转
                            this.$router.push('/')
                        },1000)
                        
                    )
                    
                }else{
                    console.log('err')
                }
            })
        },
        //3.去注册事件
        toRegister(){
            this.$router.push('/register')
        }
        
    }
}
</script>

<style scoped>
    /* 美团账号方式面板 */
    div.login-method{
        height: 28px;
        padding:10px 15px 0 15px;
        display: flex;
        justify-content: space-between;
        line-height: 22px;
    }
    div.login-method p{
        width:255px;height: 22px;
        text-align: center;
        margin: 0;
        padding-bottom: 5px;
        font-size: 14px;       
    }
    div.login-method p.meituan{
        border-bottom: 4px solid #df2d2d;
        color:#df2d2d;
    }
    /* div.login-main */
    div.login-main{
        display: flex;
        flex-direction: column;
        margin-top: 5px;
    }
    div.login-main input{
        outline: none;
        border: 0;
        height: 2rem;
        padding-top: 0.5rem;
        padding-bottom: 0.5rem;
        padding-left: 0.8rem;
        border-bottom: 1px solid #ccc;
    }
    div.login-main button{
        width: 345px;height: 3rem;
        margin: 0.5rem auto;
        font-size: 1.3rem;
        
    }
    div.login-other{
        display: flex;
        justify-content: space-between;
        padding: 0 1rem;
    }
    div.login-other span{
        color: #df2d2d;
        font-size: 0.9rem;
    }
    div.phone{
        width: 345px;height:2rem;
        margin: 0.5rem auto;
        text-align: center;
        line-height: 2rem;
        font-size: 0.9rem;
    }
    /* 手机方式面板 */
    div.login-method p.phone{
        border-bottom: 4px solid #df2d2d;
        color:#df2d2d;
    }
    /* mt-popup */
    div.mt-uname{
        width: 10.5rem;
        height: 2rem;
        border-radius: 5px;
        background-color: #fff;
        position: absolute;
        top:-19rem;
        left:-5rem;
        text-align: center;
        line-height: 2rem;
        font-size: 1rem;
    }
    div.mt-upwd{
        width: 10.5rem;
        height: 2rem;
        border-radius: 5px;
        background-color: #fff;
        position: absolute;
        top:-16rem;
        left:-5rem;
        text-align: center;
        line-height: 2rem;
        font-size: 1rem;
    }
</style>
