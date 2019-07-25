<template>
    <div class="filmlist">
        <div class="film" v-for="(item,index) of filmList" :key="index">
            <div class="film-img">
                <img :src="item.img" alt="">
            </div>
            <div class="message">
                <div>
                    <div class="film-title">{{item.title}}</div>
                    <div class="film-score">观众评分<span>{{item.score}}</span></div>
                    <div class="film-player">主演:{{item.player}}</div>
                    <div class="film-times">今天217家影院放映2868场</div>
                </div>
                <div>
                    <span @click="toFilmDetail(item.fid)">购票</span>
                </div>
            </div>
        </div>
        <mt-button size="large" type="danger" @click="loadMore">加载更多</mt-button>    
    </div>
</template>

<script>
import Qs from 'qs'
export default {
    data(){
        return{
            filmList:[],//电影列表数组
            pno:1,       //分页查询时的页码
            fid:''      //用于传递的fid
        }
    },
    methods:{
        //1.页面加载电影数据事件
        onload(){
            var url="/filmList";
            var obj={
                pno:this.pno,
                ps:''
            }
            this.axios({
                 method:'post',
                 url:"/filmList",
                 headers:{'deviceCode': "A95ZEF1-47B5-AC90BF3"},
                 transformRequest:[function(data){
                     return Qs.stringify(this.obj) 
                 }]          
                 }
               ).then(result=>{
                // console.log(result);
                var list=this.filmList.concat(result.data.data);//凭借数组用list接住返回值
                this.filmList=list //再给filmList
               //console.log(this.filmList)
            })
        },
        //2.去电影详情页面事件
        toFilmDetail(fid){
            //先得到函数传来的参数fid
            console.log(fid);
            //去详情页          
            this.$router.push('/filmDetail/'+fid);
        },
        //3.加载更多
        loadMore(){
            this.pno++;
            this.onload();
        }
    },
    created(){
        this.onload();
    },
    components:{

    }
}
</script>

<style scoped>
    div.film{
        display: flex; 
        padding-left: 15px;
    }
    div.film div.film-img{
        width: 5rem;
        height: 90px;
        padding-bottom: 12px;
        padding-top: 12px;
    }
    div.film div.film-img img{
        width: 100%;height: 100%;
    }
    div.message{
        width: 100%;
        height: 90px;
        margin-left: 15px;
        padding-bottom: 0.9rem;
        padding-top: 0.9rem;
        padding-right:1rem;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    div.message div.film-title{
        font-family: PingFangSC-Regular,Hiragino Sans GB,sans-serif;
        font-size: 17px;
        color: #333;
        font-weight: 700;
        padding-right: 0.4rem;
        flex-shrink: 1;
        margin-bottom: 0.1rem;
    }
    div.message div.film-score{
        font-size: 13px;
        color: #666;
    }
    div.message div.film-score span{
        font-weight: 700;
        color: #faaf00;
        font-size: 15px;
    }
    div.message div.film-player{
        margin-top:6px;
        font-size: 13px;
        color: #666;
    }
    div.message div.film-times{
        margin-top:6px;
        font-size: 13px;
        color: #666;
    }
    div.message>div:last-child{
        width: 47px;
        height: 27px;
        background: #e54847;
        border-radius: 5px;
        text-align: center;
        line-height: 27px;
    }
    div.message>div:last-child span{
        color:#fff;
        font-size: 12px;
    }
</style>
