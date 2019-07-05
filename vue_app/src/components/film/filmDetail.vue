<template>
    <div class="film-detail">
        <div style="position:fixed">
        <!-- 页面头 -->
        <titlebar :title="detail[0].title" :back='true'></titlebar>
        <!-- 背景 -->
        <div class="bg" ></div>
        <!-- 遮罩层 -->
        <div class="mask"></div>
        <!-- 详情块 -->
        <div class="detail">
            <div class="detail-img">
                <img :src="detail[0].img" alt="">
            </div>
            <div class="detail-info">
                <div class="film-title"> {{detail[0].title}}</div>
                <div class="film-otitle">{{detail[0].otitle}}</div>
                <div class="film-score">
                    {{detail[0].score}}
                    <span>(12.7万人评)</span>
                </div>
                <div class="film-point" >
                   {{detail[0].point}}
                </div>
                <div class="film-country">
                    {{detail[0].country}}/125分钟
                </div>
                <div class="film-time">
                   {{detail[0].time}} 08:00大陆上映
                </div>
            </div>
        </div>
        <!-- 时间块 -->
        <div class="times">
            <ul>
                <li>今天6月27日</li>
                <li>明天6月28日</li>
                <li>后天6月29日</li>
                <li>大后天6月30日</li>
                <li>大后天7月1日</li>
                <li>大后天7月2日</li>
                <li>大后天7月2日</li>
                <li>大后天7月2日</li>
                <li>大后天7月2日</li>
            </ul>
        </div>
        <div class="filter">
            <div>
                <span>全城</span>
                <span class="drop">></span>
            </div>
            <div>
                <span>品牌</span>
                <span class="drop">></span>
            </div>
            <div>
                <span>特色</span>
                <span class="drop">></span>
            </div>
        </div>
        </div>
        <div class="blank" style="height:20rem"></div>
        <CinemaList></CinemaList>
    </div>
    
</template>

<script>
//引入titlebar
import titlebar from "./common/titlebar";
//引入cinemaList
import CinemaList from  "./common/CinemaList";
export default {
    data(){
        return{
            detail:[{fid:'',title:'',img:'',otitle:'',player:'',point:'',score:'',time:'',title:''}]
        }
    },
    methods:{
        //1.获得fid对应电影的数据
        onload(){
            //拿到fid
            var fid=this.$route.params.fid;
            console.log(fid);
            //发送请求,拿到数据
            this.axios.get('/filmdetail',{params:{fid:fid}}).then(result=>{
                //console.log(result);
                this.detail=result.data.data;
                // console.log(this.detail)
            })
        }
    },
    created(){
        this.onload();
    },
    components:{
        titlebar,
        CinemaList
    }
}
</script>
<style scoped>
    /* bg */
    div.bg{
        width: 100%;
         height:10rem;
         padding: 1rem 2rem 1rem 1rem; 
         background: url('../../assets/movie1.jpg');
         background-size:cover;
         position: absolute;
         filter:blur(20px);
         opacity: 0.2;
    }
    div.mask{
        position: absolute;
        width: 100%;
        height:10rem;
        padding: 1rem 2rem 1rem 1rem; 
        background-color:#333;
        top: 50px;
        left:0;
        z-index: -1;
    }
    /* div.detail */
    div.detail{
        display: flex;
        height:10rem;
        padding: 1rem 2rem 1rem 1rem; 
       /* background-color: #222; */
    }
    div.detail div.detail-img{
        width: 7.5rem;
        height:10rem;
    }
    div.detail div.detail-img img{
        width: 100%;
        height: 100%;
    }
    div.detail-info{
        margin-left: 0.9rem;
    }
    div.detail-info>div{
        font-size: 12px;
        color: #fff;
        opacity: .8;
    }
    div.detail-info>div.film-title{
        font-size: 20px;
        margin-top: 2px;
        font-weight: 700;
        overflow: hidden;
         color: #fff;
         opacity:1;
    }
    div.detail-info>div.film-otitle{
        margin-top: 10px;
        font-size: 12px;
        color: #fff;
        opacity: .8;
    }
    div.detail-info>div.film-score{
        font-size: 18px;
        font-weight: 700;
        color: #fc0;
        margin-top: 10px;
    }
    div.detail-info>div.film-score span{
        margin-top: 10px;
        font-size: 12px;
        color: #fff;
        opacity: .8;
    }
     div.detail-info>div.film-country,div.detail-info>div.film-time{
         margin-top: 10px;
     }
     /* div.times */
     div.times{
        width: 24rem;
        overflow: hidden;
        background-color: #fff;
     }
     div.times ul{
         width: 100rem;
         height: 2.5rem;
         display: flex;
         justify-content: left;
         list-style: none;
         padding-left:0;   
         align-items: center;
         margin-top:0;
         margin-bottom: 0;
         /* margin-left: -8rem; */
         border-bottom: 1px solid red;
     }
     div.times ul li{
         width: 8rem;
         height:2rem;
         text-align: center;
         font-size: 0.8rem;
         line-height: 2rem;
     }
     /* div.filter */
     div.filter{
        display: flex;
        justify-content: space-around;
        height: 2.5rem;width: 24rem;
        align-items: center;
        font-size: 0.8rem;
        border-bottom: 1px solid #ddd;
        color:#666;
        position: absolute;
        top:17.7rem;
        background-color: #fff;
    }
    div.filter>div{
        width: 8rem;height: 1rem;
        text-align: center;
    }
    div.filter>div+div{
        border-left: 1px solid #ddd;
    }
</style>
