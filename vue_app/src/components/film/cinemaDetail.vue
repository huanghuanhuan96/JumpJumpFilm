<template>
    <div class="cinemaDetail" style="position:relative">
        <titlebar :title="cDetail.title" :back="true"></titlebar>
        <div class="cinema">
            <!-- 背景 -->
            <div class="bg" ></div>
            <!-- 遮罩层 -->
            <div class="mask"></div>
            <div class="cinema-head">
                <div class="cinema-info">
                    <p>{{cDetail.title}}</p>
                    <span>{{cDetail.position}}</span>
                </div>
                <div class="gps">
                    <img src="../../assets/dingwei.png" alt="">
                </div>
            </div>
            <div class="cinema-block">
                <!-- 滑动图 -->
                <div class="swiper-container">
                    <ul class="swiper-wrapper" ref="swipper">
                        <li  ref="wrapper" class="swiper-slide" :class="active?'actived':''"  v-for="(item,index) of fDetail" :key="index" @click="scale(index)">
                            <img :src="item.img" alt="">    
                        </li>   
                    </ul>
                </div>
                <!-- 电影介绍 -->
                <div class="film-info"  v-for="(item,index) of fDetail" :key="index" v-show="index==onshow" >
                    <div>
                        <span>{{item.title}}</span>
                        <span>{{item.score}}</span>
                        <span>分</span>
                    </div>
                    <div>
                        125分钟&nbsp;|&nbsp;{{item.point}}&nbsp;|&nbsp;{{item.player}}&nbsp;| 
                    </div>
                </div>
            </div>
            <!-- 场次列表组件 -->
            <times :fid="fid" :cid="cDetail.cid" ></times>
        </div>
    </div>
</template>

<script>
//引入titlebar
import titlebar from "./common/titlebar"
//引入times
import times from "./common/times"
export default {
    data(){
        return{
            active:false,
            cDetail:{cid:'',title:'',position:''},  //影院信息
            fDetail:[],  //电影信息
            onshow:0,
            fid:''      //电影id
        }
    },
    methods:{
        //1.点击电影图片时放大
        scale(n){
            this.onshow=n;  //让下方对应电影信息显示
            //console.log(n, this.$refs)
            for(var el of this.$refs.wrapper){  //初始化时遍历每一个加了ref的元素
                el.setAttribute('class','swiper-slide')  //设置原本样式
            }
            this.$refs.wrapper[n].setAttribute('class','swiper-slide actived'); //取出点击的元素,加上放大样式
           // console.log(111);
            if(n>=3){  //当点击每个li时,根据不同情况 移动margin-left
                var moved=(n-2)*4;
                this.$refs.swipper.style.marginLeft=-moved+'rem';
            }else if(n==2){
                this.$refs.swipper.style.marginLeft=0+'rem';
            }else if(n==1){
                this.$refs.swipper.style.marginLeft='4rem';
            }else if(n==0){
                 this.$refs.swipper.style.marginLeft='8rem';
            }
            
        },
        //2.获取影院,电影数据
        onload(){
            var cid=this.$route.params.cid;
            var fid=this.$route.params.fid;
            this.fid=fid;
            var url="/cinemaDetail";
            var obj={cid:cid}
            this.axios.get(url,{params:obj}).then(result=>{
                //console.log(result.data[0]);
                this.cDetail=result.data[0];
                this.cName=this.cDetail.title
            });
            this.axios.get('/filmlist',{params:''}).then(result=>{
                //console.log(result);
                this.fDetail=result.data.data;
            });   
        }     
    },
    created(){
        //1.页面一加载就拿到页面fid
        //console.log(this.$route.params.fid)
        if(this.$route.params.fid=="undefined"){ //先判断是否有params中有fid(当从影院列表直接进入影院详情时)
            this.$route.params.fid=1  //如果没有,接赋值为1
        }
        var fid=this.$route.params.fid;
        this.fid=fid;
        this.onshow=this.fid-1  //将显示初始值给onshow,让它优先显示      
        //console.log(this.onshow)
        this.onload();
        3.//显示页面前显示个刷新提示
        this.$indicator.open('加载中...')
        //2..设置定时器
        setTimeout(()=>{//设置一个定时器,页面元素加载完成后,让对应fid电影显示
            this.scale(this.onshow);
            this.$indicator.close();
        },100);
        
    },
    components:{
        titlebar,
        times
    }
}
</script>

<style scoped>
    /* bg */
    div.bg{
        width: 100%;
        height: 8.5rem;
         /* padding: 1rem 2rem 1rem 1rem;  */
         background: url('../../assets/movie1.jpg');
         background-size:cover;
         position: absolute;
         filter:blur(10px);
         opacity: 0.5;
         top:8rem;
    }
    div.mask{
        position: absolute;
        width: 100%;
        height: 8.5rem;
        /* padding: 1rem 2rem 1rem 1rem;  */
        background-color:#333;
        top: 8rem;
        left:0;
        z-index: -1;
    }


    /* div.cinema-head*/
    div.cinema-head{
        display: flex;
        position: relative;
        padding: 1rem 6rem 1rem 1rem;
    }
    div.cinema-info{
        width: 15rem;
        height: 3rem;
       
    }
    div.cinema-info p{
        margin: 0;
        font-size: 17px;
        line-height: 24px;
        font-weight: 700;
        color: #333;
    }
    div.cinema-info span{
        margin-top: 2px;
        font-size: 13px;
        line-height: 18.5px;
        color: #999;
        white-space: nowrap;
    }
    div.gps{
        position: absolute;
        right: 0;
        top: 30%;
        width: 70px;
        height: 31px;
        border-left: 1px solid #d8d8d8;
        text-align: center;
    }
    div.gps img{
        display: inline-block;
        width: 19px;
        height: 22px;
        margin-top: 5px;
    }
    /* div.cinema-block */
    div.swiper-container{
        height: 8.5rem;
        /* background: #f0f; */
        overflow: hidden;
    }
    ul.swiper-wrapper{
        width:100rem;
        height: 100%;
        position: relative;
        display: flex;
        box-sizing: content-box;
        list-style: none;
        margin: 0;
        align-items: center;
        padding-left: 0;
    }
    
    ul>li.swiper-slide{
        width: 4rem;
        height: 6rem;
        background-color: red;
        margin-left: 0.6rem;
       
    }
    ul>li.swiper-slide img{
        width: 100%;height: 100%;
    }
    li.actived{
        transform: scale(1.2);
        transition: all 1.5s;
    }
         /* film-info */
    div.film-info{
        display: flex;
        flex-flow: column;
        align-items: center;
        height: 3rem;
        padding: 0.7rem 1rem 0.7rem 1rem;
    }
     div.film-info>div:first-child>span{
         color: #ffb400;
         font-size: 16px;
         font-weight: bolder;
     }
     div.film-info>div:first-child>span:last-child{
         font-size: 10px;
     }
    div.film-info>div:first-child>span:first-child{
        line-height: 24px;
        font-size: 17px;
        color: #333;
        font-weight: 700;
        margin-right: 1rem;
    }
    div.film-info>div:last-child{
        margin-top: 2px;
        height: 18.5px;
        line-height: 18.5px;
        font-size: 13px;
        color: #999;
       
    }
</style>
