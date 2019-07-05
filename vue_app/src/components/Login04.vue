<template>
  <div class="container">
     <h3>你需要登录后才能继续访问</h3>
     <!--操作区域-->
     <!--帐号-->
     <mt-field :placeholder="accountPlaceholder"></mt-field>
     <!--密码-->
     <!--如果当前帐户登录方式:显示否则藏-->
     <!--短信验证码-->
     <!--如果当前状态 false-->
     <!--免费注册-->
     <!--登录和切换登录按钮-->
     <div>
       <button>登录</button>
       <!--验证提示 用户名空-->
       <button>帐户密码登录</button>
       <!--变量修改-->
     </div>
  </div>
</template>
<script>
export default {
  data(){
    return {
      //提示信息
      accountPlaceholder:"手机号/邮箱/会员名",
      //当前登录方式
      isUserAccount:true,
      //为按钮绑定点击
    }
  }
  //1:添加methods
  //2:changeLoginMethod
  //3:如果当前是以帐户登录
  //4:修改提示消息 手机号/邮箱/会员名
  //5:否则修改提示 请输入手机号码
  //6:isUserAccount切换
}
</script>
<style>
</style>


