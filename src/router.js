//导入基本模块
import Vue from 'vue'
import VueRouter from "vue-router"; 

//pagePart模块
import headerpart from "./components/header.vue"
//page 模块
import homepage from './pages/Home.vue'
import productListPage from './pages/productList.vue'
import page404 from './pages/page404.vue'


Vue.component('headerpart', headerpart)
Vue.component('homepage', homepage)
Vue.component('productListPage', productListPage)
Vue.component('page404', page404)


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
}, {
  path: '*',
  component: page404
}]
const router = new VueRouter({
  routes
})
export default router;