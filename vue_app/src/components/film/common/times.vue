<template>
    <div class="time">
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
        <div class="discount">
            <div class="dis1">
                折扣
            </div>
            <div class="dis2">
                购票享低价,首单两张立减10元
            </div>
            <div class="dis3">
                30元办卡>
            </div>
        </div>
        <div class="timeslist" v-for="(item,index) of tList" :key="index">
            <div class="list" >
                <div class="list1">
                    <h3>{{item.starttime}}</h3>
                    <div>
                        {{item.endtime}}
                        <span>散场</span>
                    </div>
                </div>
                <div class="list2">
                    <p>{{item.adition}}</p>
                    <p>{{item.hell}}</p>
                </div>
                <div class="list3">
                    <span>¥{{item.price}}</span>
                    <span>
                        折扣卡
                    </span>
                    <span class="price">
                        ¥{{item.disprice}}
                    </span>
                    <div>折扣卡首单优惠</div>
                </div>
                <div class="list4" @click="choose(item.fid,item.cid,item.tid)">
                    购票
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            tList:[]  //接收加载数据
        }
    },
    methods:{
        //1.加载场次事件
        onload(){
            var url="/times";
            var cid=this.$route.params.cid;
            var obj={
                fid:this.fid,
                cid:cid
            }
            console.log(obj);
            this.axios.get(url,{params:obj}).then(result=>{
                console.log(result);
                this.tList=result.data;
            })
        },
        //2.购票事件
        choose(fid,cid,tid){
            //跳转到选座页面
            this.$router.push('/choose/'+fid+"/"+cid+"/"+tid)
        }
    },
    created(){
        this.onload();
        //console.log(this.cid,this.fid)
    },
    props:[
        "fid",  //拿到父组件传值fid
        "cid",//拿到影院cid
        "cName"  //拿到影院名称
    ],

}
</script>

<style scoped>

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
         line-height: 2rem;
         font-size: 14px;
         color: #666;
     }
    /* div.discount */
    div.discount{
        height: 3rem;
        display: flex;
        justify-content: space-around;
        background-color: #fff5ea;
    }
    div.discount .dis1{
        background-color: #ff941a;
        border-radius: 2px;
        font-size: 10px;
        line-height: 15px;
        height: 15px;
        width: 34px;
        text-align: center;
        color: #fff;
        margin-top: 13px;
        margin-right: 10px;
    }
    div.discount .dis2{
        width: 15rem;
        line-height: 2.5rem;
        font-size: 12px;
        color: #fa9600;
    }
    div.discount .dis3{
        /*  flex: 0 0 auto; */
        line-height: 42px;
        color: #999;
        font-size: 12px;
        margin-right: 1rem;
    }
    /* div.timeslist */
    div.timeslist{
        width: 100%;
        margin-left: 1rem;
        height: 3rem;
        padding: 1rem 0;

    }
    div.timeslist>div.list{
        display: flex;
        height: 100%;
        justify-content: space-between;
        align-items: center;
    }
    div.list1 h3{
        margin: 0;
    }
    div.list1>div{
        margin-top: 10px;
        color: #999;
        font-size: 11px;
        line-height: 1;
        white-space: nowrap;
    }
    div.list2>p:first-child{
        margin: 0;
        margin-top: 2px;
        line-height: 18px;
        font-size: 13px;
        color: #333;
        white-space: normal;
    }
    div.list2>p:last-child{
        margin: 0;
        font-size: 11px;
        color: #999;
        white-space: normal;
    }
    div.list3{
        width: 8rem;
    }
    div.list3>span{
        display: inline-block;
        color: #fff;
        background-color: #f90;
        font-size: 12px;
    }
    div.list3>span:first-child{
        line-height: 1;
        color: #f03d37;
        margin-top: 1px;
        font-size: 19px;
        background-color: #fff;
        margin-right: 0.5rem;
    }
    div.list3>span.price{
        color: #f90;
        background-color: #fff;
        border: 1px solid #f90;
        padding-right: 0.2rem;
    }
    div.list3>div{
        margin-top: 5px;
        display: block;
        font-size: 12px;
        color: #999;
    }
    div.list4{
    width: 2.5rem;
    height: 2rem;
    line-height: 2rem;
    font-size: 12px;
    background-color: #f03d37;
    color: #fff;
    border-radius: 4px;
    text-align: center;
    margin-right: 2rem;
    }
</style>
