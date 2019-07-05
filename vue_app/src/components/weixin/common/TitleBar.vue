<template>
    <!-- <div class="container">
        <ul>
            <li>{{message}}</li>
            <li>
                <img :src="img_url" alt="">
            </li>
            <li>
                <img src="../../../assets/ic_add.png" alt="" @click="add">
            </li>
        </ul>
    </div> -->
    <div class="page-head">
        <span>{{message}}</span>

        <div class="right-head" >
            <div class="searchdiv" @click="search">   
                <img :src="rightFirstImg" style="width:25px" alt="">
            </div>
            <div class="searchdiv" style="margin-left:20px;" @click="add">
                <img :src="rightSecondImg" style="width:25px;margin-right:20px;" alt="" @click="add">
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name:'Subtitle',//子组件名字
    props:{     //接受父组件数据
        message:{default:''},//message默认字符串
        rightFirstImg:{default:''},
        rightSecondImg:{default:''},
        search:{type:Function},
        add:{type:Function}  //函数
    },
    data(){
        return {
            
        }
    }
}
</script>
<style scoped>
    /* div.container{
        background: #3e3a39;
    }
    ul{
        padding:0;
        list-style: none;
        display: flex;
        justify-content: space-between;
        align-items: center;
        color:#fff;
    }
    ul li img{
        width: 30px;height: 30px;
    }
    ul>li:nth-child(2){
        margin-left: 14rem;
    } */
    div.page-head{
        display: flex;
        position: fixed;
        z-index:999;
        width:100%;
        justify-content: space-between;
        align-items:center;
        background-color: #3e3a39;
        padding: 0 7px 0 7px;
        height:48px;
        color:#fff;
        font-size: 18px;
    }
    div.right-head{
        display: flex;
    }
    div.searchdiv{
        display: flex;
        align-items: center;
        height:48px;
    }
</style>
