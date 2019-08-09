<template>
   <div>
        <mt-header title="商品列表">
            <router-link to="/" slot="left">
                <mt-button icon="back">返回</mt-button>
            </router-link>
                <mt-button icon="more" slot="right"></mt-button>
         </mt-header>
       <my-header></my-header>
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
        <router-link  :to="'/detail/'+item.cid" v-for="(item,index) in myList" :key="index">
            <img :src="item.imgs" alt="" class="image padding_right">
        </router-link >
    </div>
    <div class="flex">
         <router-link  :to="'/detail/'+item.cid" v-for="(item,index) in myList" :key="index">
            <img :src="item.imgs" alt="" class="image padding_right">
        </router-link >
    </div>
    </div>
    <button class="btn_style">MORE</button>
   </div>
</template>
<script>
import Header from "./Header.vue"
export default {
    data(){
    return {
       myList:[] 
    }
    },
    components:{
        "myHeader":Header
    },
    created() {
         this.axios.get("list")
            .then((result)=>{
               console.log(result.data.data)
               var list=result.data.data
               list.splice(0,3)
               this.myList=list.splice(0,3)
            })
    },
  
}
</script>
<style scoped>
.flex_p{
    flex:1
}
.flex_p p{
  font-size: 0.4rem
}

.flex_i{
    flex:3
}
/*3楼*/

</style>