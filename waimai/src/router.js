import Vue from 'vue'
import Router from 'vue-router'
import Home from "./components/Home.vue"
import Index from "./components/Index.vue"
import Food from "./components/Food.vue"
import Cart from "./components/Cart.vue"
import MySelf from "./components/MySelf.vue"
import Product from "./components/ProductList.vue"
import About from "./components/About.vue"
import mtIndex from "./components/mtIndex.vue"
import Header from "./components/Header.vue"
import Search from "./components/Search.vue"
import ProductList from "./components/ProductList.vue"
import ProductDetail from "./components/Product_detail.vue"
import FoodDetail from "./components/Food_detail.vue"
import Login from "./components/Login.vue"
import register from "./components/register.vue"
import Personal from "./components/personal.vue"
Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",component:Home},
    {path:"/login",component:Login},
    {path:"/register",component:register},
    {path:"/index",component:Index},
    {path:"/food",component:Food},
    {path:"/cart",component:Cart},
    {path:"/home",component:Home},
    {path:"/mySelf",component:MySelf},
    {path:"/product",component:Product},
    {path:"/about",component:About},
    {path:"/mtIndex",component:mtIndex},
    {path:"/header",component:Header},
    {path:"/search",component:Search},
    {path:"/list",component:ProductList},
    {path:"/detail/:lid",component:ProductDetail,props:true},
    {path:"/foot_detail/:lid",component:FoodDetail,props:true},
    {path:"/personal",component:Personal}
    
  ]
})
