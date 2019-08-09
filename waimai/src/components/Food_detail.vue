<template>
<div>
    <div class="flex">
       <my-search style="flex:11"></my-search>
        <div style="text-align:right;flex:1">
           <router-link to="/home">
           <img src="img/rt.png" alt="" class="image">
           </router-link>
        </div>
    </div>
     
     <my-header></my-header>
    <div class="text-center margin_top">
        <span >美食资讯</span>
      </div>
      <ul class="flex">
          <li class="item_size">最新新闻</li>
          <li class="item_size">餐厅新闻</li>
          <li class="item_size">美食热闻</li>
          <li class="item_size">甜品站</li>
      </ul>
    <!--图片-->
    <div v-for="(item,index) of list" :key="index">
       <div><img src="../assets/img/foodnews1.jpg" alt="" class="image_mm"></div>
    <h2 class="text-center  fontSize_h2">{{item.title}}</h2>
    <div class=" fontSize">
        <span>复制网址分享到：</span>
        <br>
        <img src="img/weixins.png" alt="">微信
        <img src="img/sinas.png" alt="">新浪微博
        <img src="img/qqzones.png" alt="">QQ空间
        <img src="img/tengxunweibos.png" alt="">腾讯微博
        <img src="img/renrens.png" alt="">人人网
    </div>
    <p class="fontSize_p">{{item.one}}</p>
    <p class="fontSize_p">{{item.two}}</p>
    <p class="fontSize_p">{{item.three}}</p>
        <ul class="flex">
            <li><a href="javaScript:;">上一篇</a></li>
            <li><a href="javaScript:;">下一篇</a></li>
        </ul>
        
    </div>
    
</div>
</template>
<script>
import Header from "./Header.vue"
import Search from "./Search.vue"
export default {
    data(){
     return {
        list:["大多数老餐饮人都有一种感觉，那就是近几年像原来那样按部就班地赚钱好像越来越难了，行业里的“套路”越来越深。行业竞争加剧互联网大军侵袭，用工、店租、材料成本飞涨，市场的蓝海早已消失。大的餐饮经营企业紧跟潮流进行变革，小的企业盈利难度加大。那么，接下来，怎样才能在迅速变革的餐饮行业找到自己的位置?",
        "  事实上，餐饮行业是国民经济的重要组成部分。改革开放以来，随着国民经济的持续快速发展，城乡居民收入不断增加，人民生活水平断提高，我国餐饮业发展非常迅速，市场潜力较大，发展前景广阔。但同样随着社会的不断进步，“变化”必将成为未来的常态，只有在不断的“变化”中根据自身实际情况找到不变的优势，才能以长久立足。",
        "  目前，有一波职业餐饮人做客直播互动栏目《餐言餐语》，自剖自己多年的成功之路，从各个品类餐厅的经营理念出发，与餐饮同仁深入交流各品类餐厅的管理方法和经营小窍门。获得了广大餐饮人的关注，纷纷来到餐饮咖取经回家。"]
    }
    },
    components:{
      "myHeader":Header,
      "mySearch":Search
    },
    created() {
        var lid=this.$route.params.lid
        console.log(lid)
        this.axios.get('foodDetail',{
            params:{
                footList_id:lid
            }
        }).then((result)=>{
            console.log(result.data.data)
            this.list=result.data.data
        })
    },
  
}
</script>
<style scoped>
.fontSize_h2{
   font-size: 1rem;
}
.fontSize{
    font-size: 0.5rem;
}
.fontSize_p{
    font-size: 0.1rem;
}
.flex a{
    color:rgb(241, 59, 13)
}
.image_mm{
    width:100%;
}
</style>