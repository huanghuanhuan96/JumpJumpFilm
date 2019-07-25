<template>
    <div class='container'>
        <h1>您需要登录后才能继续访问</h1>
        <!--操作区域-->
         <mt-field :label='account' :placeholder='place'></mt-field>
         <mt-field label='账户' placeholder='手机号/邮箱/会员名'></mt-field>   
         <mt-field label='密码' placeholder='请输入密码'></mt-field>
         <mt-field label='验证码'></mt-field>
        <!--登录和切换登录按钮-->
        <div>
            <button>登录</button>
            <button @click='change'>切换</button>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return {
            place:'手机号/邮箱/会员名',
            account:'账户',
            isUser:true
        }
    },
    methods:{
        change(){
            if(this.isUser==true){
                this.account='手机号'
                this.place='请输入手机号';
               this.isUser=false;
            }else{
                this.account='账号';
                this.place='手机号/邮箱/会员名';
                this.isUser=true;
            };
            
        }
    }
}
</script>

<style scoped>
    
</style>