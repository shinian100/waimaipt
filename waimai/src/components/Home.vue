<template>
   <div>
     <mt-tabbar v-model="selected" fixed>
      <mt-tab-item id="外卖">外卖</mt-tab-item>
      <mt-tab-item id="美食资讯">美食资讯 </mt-tab-item>
      <mt-tab-item id="购物车">购物车</mt-tab-item>
      <mt-tab-item id="我的">我的</mt-tab-item>
    </mt-tabbar>
    <mt-tab-container v-model="selected">
     <mt-tab-container-item id="外卖">
        <mt-index></mt-index>
     </mt-tab-container-item>
     <mt-tab-container-item id="美食资讯">
       <my-food></my-food>
     </mt-tab-container-item>
     <mt-tab-container-item id="购物车">
        <my-cart></my-cart>
     </mt-tab-container-item>
     <mt-tab-container-item id="我的">
        <my-self></my-self>
     </mt-tab-container-item>
   </mt-tab-container>
  </div> 
</template>
<script>
import Food from "./Food.vue"
import Cart from "./Cart.vue"
import MySelf from "./MySelf.vue"
import mtIndex  from "./mtIndex.vue"
export default {
     data(){
        return{
          selected:"外卖"
        }
    },
  components:{
        "myFood":Food,
        "myCart":Cart,
        "mySelf": MySelf,
        "mtIndex":mtIndex
    }
}
</script>
<style>
/* 底部选项卡 */
.mint-tabbar {
  height:2rem !important;
  background-color: #efeff4 !important;
}
.mint-tabbar a{
  color:black;
}
.mint-tab-item-label{
  font-size: 15px !important;
}
</style>