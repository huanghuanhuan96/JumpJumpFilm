<template>
    <div>
        <div class="titlebar">
            <span class="back" v-show="back" @click="goBack"></span>
            <span :style="width">{{title}}</span>
        </div>
        <!-- 空 -->
        <div class="blank" style="height:50px;"></div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            width:''
        }
    },
    props:[
        "title",
        'back'
    ],
    methods:{
        goBack(){
            history.go(-1);
        }
    },
    created(){
        if(this.back){
            this.width='width:80%';
        }else{
            this.width='width:100%';
        }
    }
}
</script>

<style scoped>
    div.titlebar{
        width: 100%;
        background-color: #e54847;
        height: 50px;
        position: fixed;
        top: 0;
        line-height: 50px;
        display: flex;
        justify-content: left;
        align-items: center;
        z-index: 1;
    }
    div.titlebar>span:first-child{
        display: inline-block;
        height: 40px;
        width: 1rem;
        background-image: url('../../../assets/back.png');
        background-repeat: no-repeat;
        margin-left: 1rem;
    }
    div.titlebar>span:last-child{
        /* width: 80%; */
        height: 100%;
        display: inline-block;
        text-align: center;
        color:#fff;
        font-size: 18px;
    }
</style>
