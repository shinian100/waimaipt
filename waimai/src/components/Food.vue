<template>
   <div>
     <my-search></my-search>
     <my-header></my-header>
     <!--1楼-->
      <div class="text-center margin_top">
        <span >美食资讯</span>
      </div>
      <ul class="flex">
          <li class="item_size">最新新闻</li>
          <li class="item_size">餐厅新闻</li>
          <li class="item_size">美食热闻</li>
          <li class="item">甜品站</li>
      </ul>
        <!--图片-->
        <div><img src="img/foodnews1.jpg" alt="" class="image"></div>
        <!--列表-->
            <ul class="list-unstyled">
                <li v-for="(item,index) of list" :key="index">
                    <div class="flex">
                     <div style="flex:1" class="left_bgcolor margin">
                          <h2>{{item.mouth}}</h2>
                          <p style="color:#000">{{item.time}}</p>
                    </div>
                    <div style="flex:4" class="right_bgcolor margin_right">
                      <router-link :to="`/foot_detail/`+item.lid">
                         <h3>{{item.title}}</h3>
                         <p>{{item.subtitle}}</p>
                      </router-link>
                    </div>
                    </div>
                </li>
            </ul>
        <button class="btn_style">MORE</button>
    </div>
</template>
<script>
import Header from "./Header.vue"
import Search from "./Search.vue"
export default {
    data(){
     return{
          list:[]
        }
    },
    components:{
      "myHeader":Header,
      "mySearch":Search
    },
    created() {
      this.axios.get("foodList")
      .then((result)=>{
         console.log(result.data.data)
         this.list=result.data.data
      })
    },
  
}
</script>
<style scoped>
.list-unstyled{
  margin-top: 1rem;
}
.left_bgcolor{
  background-color:  rgb(247, 80, 3);
  color:black;
  margin-right: 1rem;
  text-align: center;
  margin-bottom: 1rem;
}
.right_bgcolor h3{
  color:black;
  font-size: 1rem;
}
.right_bgcolor p,.left_bgcolor p{
  font-size: 0.5rem;
}
</style>