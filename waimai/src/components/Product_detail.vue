<template>
   <div>
        <!-- 顶部标签 -->
       <mt-header title="商品详情">
            <router-link to="/list" slot="left">
                <mt-button icon="back">返回</mt-button>
            </router-link>
                <mt-button icon="more" slot="right"></mt-button>
         </mt-header>
       <div class="flex margin" v-for="(item,index) in myList" :key="index">
           <div style="flex:1">
            <img :src="item.img" alt="" class="image">
            <!-- <div class="flex">
                <div><img src="../assets/img/mdlist8.jpg" alt="" class="image"></div>
                <div><img src="../assets/img/mdlist7.jpg" alt="" class="image"></div>
                <div><img src="../assets/img/mdlist4.jpg" alt="" class="image"></div>
                <div><img src="../assets/img/mdlist5.jpg" alt="" class="image"></div>
            </div> -->
           </div>
           <div class="flex_p margin_left" style="flex:1">
            <h5>{{item.title}}</h5>
            <p>{{item.subtitle}}</p>
                <h2 class="fontS">价格：￥{{item.price}}</h2>
                <div class="Count flex" id="d_button">
                    <div>数量：</div> 
                    <button>-</button>
                    <span>{{item.count}}</span>
                    <button>+</button>
                </div>
                <div class="color">
                    <a href="#" >立即购买</a>
                    <router-link to="/cart" >加入购物车</router-link >
                </div>
            </div>
        </div>
        <div>
            <div  class="delicious">本店招牌美食</div>
            <div  class="flex" v-for="(item,index) in list" :key="index">
                <div style="flex:1" class="image_height">
                    <img :src="item.image" alt="" class="image">
                </div>
                <div style="flex:3;font-size: 0.8em !important;">{{item.title}}</div>
            </div>
        </div>
        <my-about></my-about>
   </div>
</template>
<script>
import About from "./About.vue"
export default {
    data(){
     return {
        list:[
          {image:"img/mdlist1.jpg",title:"甜食，是治疗抑郁、放松心情的灵丹妙药。"},
          {image:"img/mdlist6.jpg",title:"大多人在犒劳自己的时候喜欢来一点甜的。"},
          {image:"img/mdlist3.jpg",title:"忘记减肥、忘记塑身、忘记那些好看但绷着身体的华丽衣服。"},
          {image:"img/mdlist2.jpg",title:"甜食，是治疗抑郁、放松心情的灵丹妙药。"}
        ],
        myList:[]
    }
    },
  components:{
      "myAbout":About
  },
  created() {
      var lid=this.$route.params.lid
      console.log(lid)
      this.axios.get("detail",{
          params:{
             commodity_id:lid
          }
      }).then((result)=>{
          console.log(result.data.data)
          this.myList=result.data.data
      })
  },
}
</script>
<style scoped>
.margin{
    margin-top: 0.5rem;
}
.fontS,.Count{
    font-size: 1rem;
}
.margin_left{
    margin-left: 0.5rem;
}
.Count input{
    margin-bottom: 0 !important;
    padding: 0 !important;
    height:1.3rem !important;
    width:4rem !important;
}
.Count button{
    padding:0 6px !important;
}
.color a{
    color:rgb(248, 144, 8);
    font-size: 0.9rem;
    margin-right: 1rem;
}
.delicious{
    text-align:center;
    margin-top:1.5rem;
    margin-bottom:0.5rem;
}
.image_height{
  margin-bottom: 0.5rem;
   margin-right: 0.3rem;
}
</style>