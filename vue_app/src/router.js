import Vue from 'vue'
import Router from 'vue-router'

// import Login04 from "./components/Login04.vue"
// import MyField_taobao05 from 
// "./components/MyField_taobao05.vue"
//  import Login from "./components/xz/Login.vue"
// import product from "./components/xz/product.vue"
//  import XZHome from "./components/xz/Home.vue"
// import Cart from "./components/xz/common/Cart.vue"
import Home from "./components/weixin/Home.vue"
// import MessageList from  "./components/weixin/common/MessageList.vue"
//引入跳跳电影主页组件
import FileHome from "./components/film/FilmHome";
//引入跳跳电影登录组件
import Login from "./components/film/Login";
//引入跳跳电影注册组件
import Register from "./components/film/register.vue";
//引入电影详情页
import filmDetail from "./components/film/filmDetail";
//引入影院详情页 
import cinemaDetail from "./components/film/cinemaDetail";
//引入选座页
import chooseSeat from "./components/film/chooseSeat";
//引入下单页
import order from "./components/film/order";
Vue.use(Router)
export default new Router({
  routes: [
    // {path:'/Cart',component:Cart},
    //{path:'/XZHome',component:XZHome},
    // {path:'/product',component:product},
    //{path:'/Login',component:Login},
    // {path:'/MyField_taobao05',component:MyField_taobao05},
    // {path:'/Login04',component:Login04},
     //{path:'/',redirect:"/XZHome"},
    {path:"/",component:FileHome},
    {path:'/login',component:Login},
    {path:"/register",component:Register},
    {path:"/filmDetail/:fid",component:filmDetail},
    {path:'/cinemaDetail/:cid/:fid',component:cinemaDetail},
    {path:'/choose/:fid/:cid/:tid',component:chooseSeat},
    {path:'/order/:fid/:cid/:tid',component:order},
    {path:"/weixin",component:Home},
  ]
})
