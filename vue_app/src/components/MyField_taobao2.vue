<template>
  <div class="container">
    <!--登录提示文字-->
    <div class='tipsLogin'>
      <span>您需要登录才能继续访问</span>
      <span class='closeSpan'>关闭</span>
    </div>
    <!--淘宝logo图片-->
    <div class="imgDiv">
      <img src="../assets/tblogo.png" alt="" class="logo">
    </div>
    <!-- 操作区域 -->
    <div class="operateDiv">
      <!-- 账号 -->
      <mt-field :placeholder='place' v-model="uname" ></mt-field>
      <!-- 密码 -->
      <mt-field v-show="isUser" placeholder='请输入密码' type='password' v-model="upwd"></mt-field>
      <!-- 短信验证码 -->
      <!-- 免费注册 -->
      <!-- 登录和切换方式 -->
      <div>
        <mt-button size='large' class="mybutton" @click="login">登录</mt-button>
        <mt-button type='primary' size='large' class='mybutton' @click="change">{{defaultAccount}}</mt-button>
      </div>
    </div>
  </div>
</template>
<script>
export default {
    data(){
       return {
        //  account:'账号',
         uname:'',
         upwd:'',
         place:'手机号/邮箱/会员名',
         defaultAccount:'短信验证登录',
        //  是否是账户的方式
         isUser:true
       }
    },
    created() {
       
    },
    methods: {
      change(){
        console.log('打桩');
        if(this.isUser){
          this.place='请输入手机号码';
          this.defaultAccount='账户密码登录'; 
        }else{
          this.place='手机号/邮箱/会员名';
          this.defaultAccount='短信验证登录'; 
        }
        this.isUser=!this.isUser
      },
      login(){
        console.log('打桩2');
        if(!this.uname){
          this.$messagebox('','请输入用户名')
        }else if(!this.upwd){
          this.$messagebox('','请输入密码')
        }else{
          this.$toast({
            message:'登陆成功'
          })
        }
      }
    },
}
</script>
<style>
    /* 你需要登录才能继续仿问的布局样式 */
    .tipslogin {
      display: flex;
      justify-content: space-between;
      align-items: center;
      height: 52px;
      background: rgb(238, 238, 238);
      padding-left: 20px;
      padding-right: 20px;
    }
    /* 半闭样式 */
    .closeSpan {
      color: rgb(153, 153, 153)
    }
    /* 图片 logo 根样式 */
    .imgDiv {
      display: flex;
      justify-content: center;
    }
    /* 图片样式 */
    .logo{
      width: 80px;
      height: 80px;
    }
    /* 上面的线隐藏 */
    .mint-cell-wrapper  {
      background-image: linear-gradient(180deg, #fff, #fff 0%, transparent 0%);
    }
   /* 输入框底边框样式 */
    .mint-cell-wrapper  {
      border-bottom: 1px solid #ff5000;
    }

    /* 修改按钮按钮下的默认颜色 */
    .mint-button::after {
      background-color: transparent;
    }
    /* 操作区域的样式*/
    .operateDiv {
      padding-left: 20px;
      padding-right: 20px;
    }
    /* 输入框边距 */
    .myinput {
      margin-top: 30px;
    }
    /* 获取短信验证码字体颜色 */
    .getCode {
      color:#ff5000;
      font-size: 17px;
      border-left:1px solid #b5b5b5;
      padding-left: 7px;
    }
    /* 免费注册根样式 */
    .registerDiv {
      margin-top: 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    /* 免费注册字体样式*/
    .registerDiv span {
      color: #555;
    }
    /* 登录短信验证按钮边距 */
    .mybutton {
      margin-top: 20px;
    }
    /* 修改默认 butoon 的样式 达到和淘宝登录一样 */
    .mint-button--default {
      background: -webkit-linear-gradient(left,#ff9000,#ff5000) no-repeat;
      border-radius: 25px;
      color: #fff;
      height: 48px;
    }
    /* 同上 */
    .mint-button--primary {
      border-radius: 25px;
      height: 48px;
      background-color: transparent;
      border: 1px solid #ff5000;
      color: #ff5000
    }
    /* 修改默认弹框的样式，达到基本和淘宝的效果一样 */
    .mint-msgbox{
      border-radius: 8px;
      width: 70%
    }
    /* 弹出框内容样式 */
    .mint-msgbox-content {
      min-height: 50px;
      font-size: 18px;
    }
    /* 弹出内容居中 */
    .mint-msgbox-message{
      line-height: 50px;
    }
    /* 弹出框确定按钮样式 */
    .mint-msgbox-btns{
      height: 60px;
    }
    /* 弹出框确定按钮字体 */
    .mint-msgbox-confirm {
      color: #f40;
    }


</style>