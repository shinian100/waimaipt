<template>
   <div>
       <!-- 搜索 -->
    <my-search></my-search>
    <!-- 轮播图 -->
    <my-header></my-header>
    <!-- 我们提供 -->
    <div class="margin">
        <div class="text-center margin_top" >
              <span>我们提供</span>
        </div>
        <div class="flex">
            <div class="text-center margin_right" v-for="(item,index) in list" :key="index">
                    <img :src="item.img" alt="">
                    <h4 class="padding">{{item.title}}</h4>
                    <p class="font_size">{{item.subtitle}}</p>
            </div>
        </div>
    </div>
    <!-- 2楼 -->
    <div class="text-center margin_top">
        <router-link to="/product" style="color:#000">菜式欣赏</router-link>
    </div>
    <div>
            <img src="img/mdbanner.jpg" alt="" class="image">
    </div>
    <div class="flex margin" >
        <div class="flex_p">
            <p>每一种食物来源都经过我们的精挑细选，关于食材我们只选最天然、健康、优质的，只为一份对极致美味的追求，用心做好每一份菜，是我们不变的宗旨。</p>
        </div>
        <div class="flex_i">
            <div v-for="(item,index) in myList" :key="index">
                <div class="flex">
                    <div><img :src="item.images" alt="" class="image"></div>
                    <div><img :src="item.images" alt="" class="image"></div>
                    <div><img :src="item.images" alt="" class="image"></div>
                </div>
                
            </div>
        </div>
    </div>
    <!-- 3楼 -->
    <div class="margin">
        <div class="flex" >
            <div class="padding_left">午餐</div>
            <div class="padding_left">晚餐</div>
            <div class="padding_left">甜品</div>
            <div class="padding">饮料</div>
        </div>
    <div class="flex">
        <router-link  to="/product" v-for="(item,index) in myList" :key="index">
            <img :src="item.imgs" alt="" class="image padding_right">
        </router-link >
    </div>
    <div class="flex">
         <router-link  to="/product" v-for="(item,index) in myList" :key="index">
            <img :src="item.imgs" alt="" class="image padding_right">
        </router-link >
    </div>
    </div>
  
    <button class="btn_style">MORE</button>
    <!-- 4楼 -->
    <div class="text-center margin_top">
        <span>美食资讯</span>
    </div>
    <div class="margin">
      <ul class="flex">
        <li class="item_size">最新新闻</li>
        <li class="item_size">餐厅新闻</li>
        <li class="item_size">美食热闻</li>
        <li class="item">甜品站</li>
    </ul>
    <div class="flex">
        <div class="flex_p padding_right"  v-for="(item,index) in food" :key="index">
            <img :src="item.img" alt="" class="image ">
            <h5>{{item.title}}</h5>
            <p>{{item.subtitle}}</p>
            </div>
    </div>
    </div>
    <button class="btn_style">MORE</button>
 </div>
</template>
<script>
import Header from "./Header.vue"
import Search from "./Search.vue"
export default {
    data(){
    return {
        list:[],//保存我们的提供数据
        myList:[],//保存商品图片
        food:[]
    }
    },
   components:{
        "myHeader":Header,
        "mySearch":Search
    },
    created() {
            this.axios.get("index")
            .then((result)=>{
               console.log(result.data.data)
               this.list=result.data.data
            })
             this.axios.get("list")
            .then((result)=>{
               console.log(result.data.data)
               var list=result.data.data
               list.splice(0,3)
               this.myList=list.splice(0,3)
            })
             this.axios.get("food")
            .then((result)=>{
               console.log(result.data.data)
               this.food=result.data.data
            })
        }
}
</script>
<style scoped>
/* 轮播图 */
.height_image{
    height: 13rem;
}

/* 1楼 */
/*图片大小*/
.text-center img{
   width:40%
}
.font_size{
      font-size: 0.4rem
}
/* 2楼 */
.flex_p{
    flex:1
}

.flex_i{
    flex:3
}
/*3楼*/
.btn_style{
    margin-left: 10rem;
    background-color: #efeff4;
    border: 1px solid red;
    border-radius: 28%;
    color:red;
}


</style>