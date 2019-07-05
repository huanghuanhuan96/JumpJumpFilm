<template>
  <div class="page-head">
     <span>{{leftTitle}}</span>
     <div class="right-head">
        <div class="searchDiv" @click="search">
          <img :src="rightFirstImg" alt="" style="width:25px;">
        </div>
        <div class="searchDiv" style="margin-left:20px;" @click="add">
          <img :src="rightSecondImg" alt="" style="width:25px;margin-right:15px;">
        </div>
     </div>
  </div>
</template>
<script>
export default {
  props:{
    leftTitle:{default:""},
    rightFirstImg:{default:""},
    rightSecondImg:{default:""},
    search:{type:Function},
    add:{type:Function}
  },
  data(){
    return {}
  }
}
</script>
<style>
 .page-head{
   display: flex;  /*弹性布局*/
   position: fixed; /*固定定位*/
   z-index: 999;
   width:100%;     /*宽度*/
   justify-content: space-between;
   align-items: center;/*垂直居中*/
   height:48px;
   padding-left:7px;
   padding-right: 7px;
   background-color: #e4393c;
   color:#fff;
   font-size:18px; 
 }
 .right-head{
   display: flex;
 }
 .searchDiv{
    display: flex;
    align-items: center;
    height: 48px;
 }
</style>

