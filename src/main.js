import Vue from 'vue'
import VueRouter from 'vue-router'
import resource from 'vue-resource'
import router from './router'
Vue.use(resource);
const app = new Vue({
  router
}).$mount('#app')
