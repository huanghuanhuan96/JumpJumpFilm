<template>
    <div class="order">
        <!-- 头 -->
        <titlebar :back="true" :title="bartitle"></titlebar>
        <!-- 剩余支付时间 -->
        <div class="losetime">
            支付剩余时间:  13:14
        </div>
        <!-- 订单信息 -->
        <div class="orderinfo">
            <div>{{fData.title}}</div>
            <div>今天6月29日 {{tData.starttime}}  {{tData.edition}}</div>
            <div>{{cData.title}}</div>
            <div>5号厅 2排4座</div>
        </div>
        <!-- 选项组 -->
        <div class="ordergroup">
            <mt-cell
                title="活动与抵用券"
                to="//github.com"
                is-link
                value="">
                 无可用
            </mt-cell>
               
            <mt-cell
                title="手机号码"
                to="//github.com"
                is-link
                value="">
                13598580362
            </mt-cell>
            <mt-cell
                title="小计"
                to="//github.com"
                is-link
                value="">
                <span style="color: #ef4238;font-size: 18px;">¥48</span>
            </mt-cell>           
        </div>
        <!-- 空白 -->
        <div class="blank" style="height:0.8rem;background:#f0f0f0"></div>
        <!-- 折扣卡 -->
        <div class="discount">
            <div>
                <div>
                    <img src="../../assets/vip.png" alt="">
                </div>
                <div>
                    <h3>
                        博纳折扣卡
                        <span>(30元/半年)</span>
                    </h3>
                    <a href="#">
                        开卡本单
                        <span>立减4元,</span>
                        查看详情
                    </a>
                </div>
            </div>
            <mt-switch>
            </mt-switch>
        </div>
        <!-- 空白 -->
        <div class="blank" style="height:0.8rem;background:#f0f0f0"></div>
        <!-- 套餐 -->
        <div class="taocan">
            <img src="../../assets/taocan.png" alt="">
        </div>
        <!-- 空白 -->
        <div class="blank" style="height:0.8rem;background:#f0f0f0;margin-bottom:7rem;"></div>
        <!-- 确认支付 -->
        <div class="orderconfirm">
            <div>
                <span>退改签须知</span>
                <span>
                    应付:
                    <span style="font-size:21px;color:#ef4238;">¥48</span>
                </span>
            </div>
            <div>
                <mt-button size="large" @click="orderconfirm">
                    确认支付
                </mt-button>
            </div>
        </div>
    </div>
</template>

<script>
//引入titlebar
import titlebar from "./common/titlebar";
export default {
    data(){
        return{
            bartitle:'支付订单',
            cData:{},
            tData:{},
            fData:{}
        }
    },
    methods:{
        //1.点击确认支付
        orderconfirm(){
            this.$messagebox.confirm('确认支付订单吗?').then(action=>{
                if(action){
                    this.$router.push('/')
                }
            })
        },
        //2.拿数据
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
            console.log(fid,tid,cid)
            this.axios.get('/choose',{params:obj}).then(result=>{
                //console.log(result.data);
                this.cData=result.data.cData;
                this.fData=result.data.fData;
                this.tData=result.data.tData;
            });      
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
    /* div.losetime */
    div.losetime{
        color: #f90;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        background: #fef3d9;
        background-size: 17px 17px;
        text-align: center;
        line-height: 38px;
        box-sizing: border-box;
        height: 38px;
        font-size: 13px;
    }
    /* div.orderinfo */
    div.orderinfo{
        height:6rem;
        display: flex;
        flex-flow: column;
        padding: 1rem;
    }
    div.orderinfo>div:first-child{
        color: #333;
        font-family: PingFangSC-Medium,Hiragino Sans GB,sans-serif;
        font-size: 16px;
        line-height: 23px;
    }
    div.orderinfo>div:nth-child(2){
        font-size: 14px;
        line-height: 20px;
        margin-top: 7px;
        color: #f34d41;
    }
    div.orderinfo>div:nth-child(3){
        font-size: 14px;
        line-height: 20px;
        margin-top: 4px;
        color: #333;
    }
    div.orderinfo>div:nth-child(4){
        font-size: 14px;
        line-height: 20px;
        margin-top: 4px;
        color: #333;
    }
    /* button */
    button.count{
        color: #ef4238;
        font-size: 18px;
    }
    /* div.discount */
    div.discount{
        display: flex;
        justify-content: space-between;
        padding: 0 1rem;
        height:4rem;
        align-items: center;
    }
    div.discount>div{ 
        display: flex;
        align-items: center;
    }
    div.discount>div>div:first-child{
        line-height:0rem; 
        margin-right: 1rem;
    }
    div.discount>div>div:last-child h3{
        font-weight: 400;
        color: #333;
        margin: 0;
        font-size: 1rem;
    }
    div.discount>div>div:last-child span{
        font-style: normal;
        color: #999;
        font-size: 1rem;
    }
    div.discount>div>div:last-child a{
        color: #999;
        font-size: 0.8rem;
        text-decoration: none;
    }
    div.discount>div>div:last-child a span{
        color: #f90;
        font-style: normal;
        text-decoration: none;
    }
    /* div.taocan */
    div.taocan{
        height:50rem;
    }
    div.taocan img{
        width: 100%;
        height: 50rem;
    }
    /* div.orderconfirm */
    div.orderconfirm{
        position: fixed;
        z-index: 1;
        bottom: 0;
        width: 90%;
        height:5rem;
        padding: 1rem;    
        background-color: #fff;  
    }
    div.orderconfirm>div:first-child{
        display:flex;
        justify-content:space-around;
        margin-bottom: 0.5rem;
        align-items: center;
    }
    div.orderconfirm>div>span:first-child{
        font-size: 0.8rem;
        color: #FF9900;
    }
    div.orderconfirm>div>button{
        background: #ff9e05;
        color:#fff;
    }
</style>
