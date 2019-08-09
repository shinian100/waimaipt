<template>
<div>
     <mt-header title="购物车">
            <router-link to="/" slot="left">
                <mt-button icon="back">返回</mt-button>
            </router-link>
                <mt-button icon="more" slot="right"></mt-button>
         </mt-header>
     <div>
        <!--购物车列表-->
        <div style="text-align:right;">
            <input type="checkbox"  @click="selectedAll" isAllSelected>全选
        </div>
        <div v-for="(item,index) of list" :key="index">
           <div>
                <input type="checkbox"  v-bind:isSelected="item.isSelected" @click="selected" />{{item.title}}
                <hr>
           </div>
          <div class="flex">
                <div style="flex:1;margin-right:1em"><img :src="item.img" alt="" class="image"></div>
                <div style="flex:3">
                    <div class="flex">
                        <h4>{{item.subtitle}}</h4>
                        <span style="color:rgb(248, 144, 8);">￥{{item.price}}</span>
                    </div>
                    <div class="Count" style="margin-top:1rem;">
                        <button class="btn_size">-</button>
                        <span>{{item.count}}</span>
                        <button class="btn_size">+</button>
                    </div>
                </div>
            </div>
            <hr>
     </div>
</div>     
    <!--2楼-->
    <div class="text-right">
        <div class="fontSize_div">
            <router-link to="/login" class="color">登录后确认是否享有优惠</router-link>
            <div>
               赠送积分:<em id="score">98</em>
              商品金额: <span id="total">￥98.00元</span>
            </div>
        </div>
        <div class="right">
            <button class="cart" id="car" isDeleted @click="deleteAll">清空购物车</button>
            <button class="btn ">提交订单</button></div>
    </div>
</div>
</template>
<script>
export default {
    data(){
    return {
        list:[],
        isAllSelected:false,
        isDeleted:false
    }
    },
   created() {
       for(var i=0;i<this.list.length;i++){
           this.list[i].isSelected=false
       }
       console.log(this.list)
       this.axios.get("cart",{
           params:{
               uid:this.uid
           }
       }).then((result)=>{
           console.log(result.data.data)
           this.list=result.data.data
       })
   },
   methods: {
       selectedAll(){
           for(var i=0;i<this.list.length;i++){
               this.list[i].isSelected=this.isAllSelected
           }
       },
       selected(){
           if(this.list.every(item=>{item.isSelected==true})){
               this.isAllSelected=true
           }
           this.isAllSelected=false
       },
       deleteAll(){
           for(var i=0;i<this.list.length;i++){
              if(this.list[i].isSelected==true){
                  
              }
           }
       }
   },
}
</script>
<style scoped>
.fontSize_div{
    font-size: 0.3rem;
    text-align: right;
}
.color{
    color:goldenrod;
}
.right{
    text-align: right;
}
.cart{
    background-color: rgb(250, 82, 4);
}
.btn{
    background-color:red;
}
.btn_size{
    padding:0.1rem 0.4rem;
    background-color: #efeff4;
    border:none;
}
</style>