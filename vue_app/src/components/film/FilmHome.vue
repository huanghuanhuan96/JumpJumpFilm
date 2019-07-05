<template>
    <div class="page-tabbar">
        <div class="page-wrap">
           
            <!-- 页面 面板 -->
            <!-- 1.电影面板 -->
            <mt-tab-container v-model="selected">
                <mt-tab-container-item id="nowFilm">
                     <!-- 网页头 -->
                    <titlebar :title="title[0]"></titlebar>
                    
                    <!--面板头信息 -->
                    <div class="page-header">
                        <div>
                            <span>北京</span>
                        </div>
                        <p class="now">正在热映</p>
                        <p @click="changeMovie">即将上映</p>
                        <div>
                            <img src="../../assets/search.png" alt="">
                        </div>
                    </div>
                    <!--  -->
                    <div class="blank" style="height:44px;"></div>
                    <FilmList ></FilmList>
                </mt-tab-container-item>
                <mt-tab-container-item id="willFilm">
                    <!-- 网页头 -->
                    <titlebar :title="title[0]"></titlebar>
                    <!--面板头信息 -->
                    <div class="page-header">
                        <div>
                            <span>北京</span>
                        </div>
                        <p @click="changeMovie">正在热映</p>
                        <p class="will" >即将上映</p>
                        <div>
                            <img src="../../assets/search.png" alt="">
                        </div>
                    </div>
                    <!--  -->
                    <div class="blank" style="height:44px;"></div>
                    <FilmList></FilmList>
                    lalal
                </mt-tab-container-item>
                <!-- 2.影院面板 -->
                <mt-tab-container-item id="cinema">
                    <!--cinema面板头信息  -->
                    <titlebar :title="title[1]"></titlebar>
                    <div class="cinema-header">
                        <div>
                            <span>北京</span>
                        </div>
                        <div class="search-cinema">
                            <img src="../../assets/search1.png" alt="">
                            <span>搜影院</span>
                        </div>
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
                    <!-- 空 -->
                    <div class="blank" style="height:85px;"></div>
                    <CinemaList ></CinemaList>
                </mt-tab-container-item>
                <!-- 我的 面板 me -->
                <mt-tab-container-item id="me">
                    <!--cme 面板头信息  -->
                    <titlebar :title="title[2]"></titlebar>
                    <div class="me-header">
                        <img src="../../assets/me-header.png" alt="">
                    </div>
                    <div class="me-order">
                        <p>我的订单</p>
                        <div>                          
                            <router-link to="">
                                <img src="../../assets/order-film.png" alt="">
                                 <p>电影</p>
                            </router-link>                                                    
                            <router-link to="">
                                <img src="../../assets/order-store.png" alt="">
                                <p>商城</p>
                            </router-link>                                                          
                        </div>
                    </div>
                    <div class="me-group">
                        <mt-cell
                            title="在线观影"
                            to="//github.com"
                            is-link
                            value="">
                        </mt-cell>
                        <mt-cell
                            title="优惠券"
                            to="//github.com"
                            is-link
                            value="">
                        </mt-cell>
                        <mt-cell
                            title="折扣卡"
                            to="//github.com"
                            is-link
                            value="">
                        </mt-cell>
                    </div>
                </mt-tab-container-item>
            </mt-tab-container>
            <!--底部导航栏 -->
            <mt-tabbar v-model="active" fixed>
                <mt-tab-item id="film" @click.native="changeTab(0)">
                    <tabbaricon :isfocus="isfocus[0]" :nomalImg="require('../../assets/film1.png')" :focusImg="require('../../assets/film2.png')"></tabbaricon>
                    电影
                </mt-tab-item>
                <mt-tab-item id="cinema" @click.native="changeTab(1)">
                    <tabbaricon :isfocus="isfocus[1]" :nomalImg="require('../../assets/cinema1.png')" :focusImg="require('../../assets/cinema2.png')"></tabbaricon>
                    影院
                </mt-tab-item>
                <mt-tab-item id="me" @click.native="toLogin">
                    <tabbaricon :isfocus="isfocus[2]" :nomalImg="require('../../assets/me1.png')" :focusImg="require('../../assets/me2.png')"></tabbaricon>
                    我的
                </mt-tab-item>
            </mt-tabbar>
        </div>
    </div>
</template>

<script>
//引入common下的tabbaricon组件
import tabbaricon from "./common/tabbaricon";
//引入common下的titlebar组件
import titlebar from "./common/titlebar";
//引入common下的FilmList组件
import FilmList from "./common/FilmList";
//引入common下的CinemaList组件
import CinemaList from "./common/CinemaList";

export default {
    data(){
        return{
            selected:"nowFilm",
            selectedOption:["nowFilm","cinema"],
            active:"film",
            isfocus:[
                true,false,false
            ],
            title:["跳跳电影",'影院',"我的"]
        }
    },
    methods:{
        //1.改变电影面板内的面板内容
        changeMovie(){
            if(this.selected=="nowFilm"){
                this.selected="willFilm"
            }else{
                this.selected="nowFilm"
            }
        },
        //2.为tabbar添加事件,使面板内容变化
        changeTab(n){
            //console.log(n,this.isfocus)
            //将当前参数下标与与isfocus数组内的下标进行比较
            for(let i=0;i<this.isfocus.length;i++){
                //如果相等
                if(n==i){
                    //那么使下标对应内容变为true
                    this.isfocus[i]=true;
                }else{
                   //如果不等
                        //为false
                        this.isfocus[i]=false; 
                }  
            }
            //遍历选中候选selectedOption数组,下标对比,显示对比成功面板
            for(let i=0;i<this.selectedOption.length;i++){
                //如果相等
                if(n==i){
                    //那么使下标对应内容变为true
                    this.selected=this.selectedOption[i]
                } 
            }       
        },
        //3.我的 ->去登陆 or me
        toLogin(){
            console.log(11);
            //如果当前的sessionStorage中没有uid,那么...
            if(!sessionStorage.uid){
                 this.$router.push('/login') //去登陆
            }else{//如果存有uid,那么..
                this.selected="me"    //开启我的面板
            }
           
            
            
                 
            
        }
    },
    components:{
        tabbaricon,
        titlebar,
        FilmList,
        CinemaList
    }
}
</script>

<style scoped>
    .page-tabbar{
        overflow: hidden;/*溢出隐藏*/
    }
    /* 电影面板 */
    div.page-header{
        height: 44px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 16px;
        padding-left: 10px;
        padding-right: 10px;
        position: fixed;
        width: 100%;
        top:50px;
        background-color: #fff;
    }
    div.page-header p{
        margin: 0;
        width: 80px;
        height: 44px;
        line-height: 44px;
        text-align: center;
        font-size: 15px;
    }
    div.page-header>p.now{
        color: #e54847;
        border-bottom: 2px solid #e54847;
    }
    div.page-header>p.will{
         color: #e54847;
        border-bottom: 2px solid #e54847;
    }
    div.page-header div:last-child{
        width:30px;
        height: 30px;
        /* padding: 10px; */
        margin-right: 2rem;
    }
    div.page-header img{
        width: 100%;
        height:100%;
        
    }
    /* 影院面板 */
    div.cinema-header{
        height: 44px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 16px;
        padding-left: 10px;
        padding-right: 15px;
        background-color: #f5f5f5;
        position: fixed;
        width: 100%;
        top:50px;
        background-color: #fff;
    }
     div.cinema-header div.search-cinema{
         width: 280px;height:29px;
         border: 1px solid #ccc;
         /* background-color: #fff; */
         border-radius: 5px;
         line-height: 29px;
         margin-right: 2rem;
     }
    div.cinema-header div.search-cinema img{
        width: 14px;height: 14px;
        margin-left: 120px;
    }
     div.cinema-header div.search-cinema span{
        font-size: 13px;
        color: #b2b2b2;
        margin-left: 5px;
     }
    /* div.filter */
    div.filter{
        display: flex;
        justify-content: space-around;
        height: 2.5rem;
        align-items: center;
        font-size: 0.8rem;
        border-bottom: 1px solid #ddd;
        color:#666;

        position: fixed;
        width: 100%;
        top:94px;
        background-color: #fff;
    }
    div.filter>div{
        width: 7rem;height: 1rem;
        text-align: center;
    }
    div.filter>div+div{
        border-left: 1px solid #ddd;
    }
    /* me 面板 */
        /* div.me-header */
    div.me-header{
        height: 9rem;
    }
    div.me-header img{
        width: 100%;
        height: 100%;
    }
        /* div.me-order */
    div.me-order{
        display: flex;
        flex-flow: column;
        height: 9rem;
    }
    div.me-order p{
        text-align: center;
        /* margin: 0; */
        font-size: 1rem;
    }
    div.me-order>div{
        display: flex;
        justify-content: space-around;
    }
    div.me-order>div>a{
        display: inline-block;
        width: 50%;
        text-align: center;
        text-decoration: none;
        color: #333;
    }
    div.me-order>div a p{
        margin: 0;
    }
</style>
