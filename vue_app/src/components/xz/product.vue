<template>
  <div class="container">
    <!--商品详细信息 start-->
    <div class="goods-item" v-for="(item,index) of list" :key="index">
      <img :src="require('../../assets/01.png')"/>
      <h4>{{item.title}}</h4>
      <div class="info">
       <span class="now">{{item.price}}</span>
      </div>
    </div>
    <!--商品详细信息 end-->
    <mt-button size="large" type="primary" @click="loadMore">加载更多</mt-button>
  </div>
</template>
<script>
export default {
  data(){
    return {
       list:[],  //保存服务器数据
       pno:0,    //页码
       pageSize:4//页大小
    }
  },
  created() {
     //组件创建成功
     this.loadMore();
  },
  methods: {
    //加载更多
    //加载第1 2 3 ..数据
    loadMore(){
      //1:获取当前页码加1
      this.pno++;
      //2:创建url 请求地址
      var url = "product";
      //3:创建参数对象
      var obj = {pno:this.pno,pageSize:this.pageSize};
      //4:发送ajax 15:45
      this.axios.get(url,{params:obj}).then(result=>{
        //this.list = result.data.data;
        var rows = this.list.concat(result.data.data);
        this.list = rows;
      })
      //5:接收服务器返回数据
      //6:保存list
    }
  },
}
</script>
<style>
 /*最外层父元素*/
 .container{
   display: flex;/*弹性布局*/
   flex-wrap: wrap;/*子元素换行*/
   justify-content: space-between;
   padding:4px;
 }
 .container .goods-item{
  width:49%;  /*元素宽度*/
  border:1px solid #ccc;
  box-sizing: border-box;
  margin:2px 0;
  padding:2px;
  display: flex;/*设置弹性布局*/
  flex-direction: column; /*方向按列*/
  min-height: 247px;
  border-radius: 5px;
 }
 /*商品图片*/
 .container .goods-item img{
   width:100%;
 }
</style>


