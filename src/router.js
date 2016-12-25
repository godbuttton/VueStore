//导入基本模块
import Vue from 'vue'
import VueRouter from "vue-router"


//page 模块
import homepage from './pages/Home.vue'
import productListPage from './pages/productList.vue'
import page404 from './pages/page404.vue'
import shopCar from './pages/shopCar.vue'
import myOrder from './pages/myOrder.vue'
import userCenter from './pages/userCenter.vue'


Vue.component('homepage', homepage)
Vue.component('productListPage', productListPage)
Vue.component('page404', page404)
Vue.component('shopCar', shopCar)
Vue.component(' myOrder',  myOrder)
Vue.component(' userCenter', userCenter)

Vue.use(VueRouter)
const routes = [{
  path: '/',
  component: homepage
}, {
  path: '/productListPage',
  component: productListPage
}, {
  path: '/homepage',
  component: homepage
},{
  path: '/shopCar',
  component: shopCar
},{
  path: '/myOrder',
  component: myOrder
},{
  path: '/userCenter',
  component: userCenter
}, {
  path: '*',
  component: page404
}]
const router = new VueRouter({
  routes
})
export default router;