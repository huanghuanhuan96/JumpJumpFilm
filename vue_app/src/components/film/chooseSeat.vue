<template>
    <div class="choose">   
        <titlebar :title="cData.title" :back="true"></titlebar> 
        <div class="filminfo">
            <div>{{fData.title}}</div>
            <div>{{fData.time}} &nbsp; {{tData.starttime}} &nbsp; {{tData.edition}}</div>
        </div>
        <div class="seat">
            <img :src="img" alt="">
        </div>
        <div class="reco-seat">
            <div>推荐座位</div>
            <div>
                <div v-for="(item,index) of seatImgs" :key="index" @click="chooseSeat(index)">
                    <mt-button>{{index+1}}人</mt-button>
                </div>
                <!-- <div>
                    <mt-button>2人</mt-button>
                </div>
                <div>
                    <mt-button>3人</mt-button>
                </div>
                <div>
                    <mt-button>4人</mt-button>
                </div> -->
            </div>
              
        </div>
        <div class="confirm">
            <mt-button size="large" @click="order(fData.fid,cData.cid,tData.tid)">确认选座</mt-button>
        </div>
    </div>
</template>

<script>
//引入titlebar
import titlebar from "./common/titlebar";
export default {
    data(){
        return{
            seatImgs:["image/seat1.png","image/seat2.png",
                "image/seat3.png","image/seat4.png"
            ],
            img:'image/seat.png',
            cData:{},
            tData:{},
            fData:{}
        }
    },
    methods:{
        //1.选择推荐座位事件
        chooseSeat(e){
            //改变座位图中的图片          
            this.img=this.seatImgs[e]
        },
        //2.加载电影数据事件
        onload(){
            // 拿到url中需要的所有数据
            var fid=this.$route.params.fid;
            var tid=this.$route.params.tid;
            var cid=this.$route.params.cid;
            var obj={
                fid:fid,
                cid:cid,
                tid:tid
            };
            this.axios.get('/choose',{params:obj}).then(result=>{
                console.log(result.data);
                this.cData=result.data.cData;
                this.fData=result.data.fData;
                this.tData=result.data.tData;
            });      
        },
        //2.确认选座事件
        order(fid,cid,tid){
            // console.log(this.cData.cid);
            // console.log(fid,cid,tid)
            this.$router.push('/order/'+fid+"/"+cid+"/"+tid)
        }   
    },
    created(){
        this.onload();
    },
    components:{
        titlebar
    }
}
</script>

<style scoped>
    /* div.filminfo */
    div.filminfo{
        height: 2.5rem;
        padding: 1rem;
    }
    div.filminfo>div:first-child{
        width: 20rem;
        height: 1.5rem;
        line-height: 1.5rem;
        font-size: 1rem;
        font-weight: 700;
        color: #333;
    }
     div.filminfo>div:last-child{
         font-size: 0.8rem;
         color: #777;
     }
    /* div.seat */
    div.seat{
        width: 24rem;
        height: 35rem;
    }
    div.seat>img{
        width: 100%;
        height: 100%;
    }
    /* div.reco-seat */
    div.reco-seat{
        height: 2rem;
        display: flex;
        padding: 0.6rem 0.6rem  0.5rem 0.6rem;
        line-height: 3rem;
        font-size: 0.8rem;
    }
    div.reco-seat>div:last-child{
        display: flex;
        width: 15rem;
        justify-content: space-between;
        height: 3rem;
        align-items: center;
        margin-left: 1rem;
    }
    div.reco-seat div:last-child div{
        width: 3rem;
    }
    div.reco-seat button{
        font-size: 0.8rem;
    }
    /* div.confirm */
    div.confirm{
        margin-top: 2rem;
        text-align: center;
        padding-left: 1rem;
        margin-right: 1rem;
       
    }
    div.confirm button{
        background-color: #f90;
        font-weight: 700;
        text-align: center;
        color: #fff;
        font-size: 1.3rem;
    }
</style>
