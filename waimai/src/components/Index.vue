<template>
   <div>
    <mt-navbar v-model="selected">
      <mt-tab-item id="网站首页">网站首页</mt-tab-item>
      <mt-tab-item id="菜式欣赏">菜式欣赏</mt-tab-item>
      <mt-tab-item id="关于我们">关于我们</mt-tab-item>
    </mt-navbar>
  <mt-tab-container v-model="selected">
      <mt-tab-container-item id="网站首页">
       <mt-index></mt-index>
      </mt-tab-container-item>
      <mt-tab-container-item id="菜式欣赏">
       <my-prouct></my-prouct>
      </mt-tab-container-item>
      <mt-tab-container-item id="关于我们">
        <mt-about></mt-about>
      </mt-tab-container-item>
  </mt-tab-container>
   </div>
</template>
<script >
import mtIndex  from "./mtIndex.vue"
import Product  from "./ProductList.vue"
import About from  "./About.vue"
export default {
    data(){
     return{
          selected:"网站首页"
        }
    },
    components:{
       "mt-index":mtIndex,
       "my-prouct":Product,
       "mt-about":About
    }
  
}
</script>
<style scoped>
</style>