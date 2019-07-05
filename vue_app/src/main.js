import Vue from 'vue'
import App from './App.vue'
import router from './router'
//main.js
//3:将mint-ui组件库中组件注册vue实例中
Vue.use(MintUI);

//1:引入mint-ui库中所有组件:完整引入
import MintUI from 'mint-ui'
//2:单独引入mint-ui样式文件
import'mint-ui/lib/style.css'

import './font/iconfont.css'
//4:引入axios.js
import axios from "./axios"





Vue.config.productionTip = false


new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
