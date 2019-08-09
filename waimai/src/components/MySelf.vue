<template>
<div class="bgc_div">
    <div class="myself_service">
      <div class="flex">
        <div style="flex:2" class="avatar">
            <router-link to="/personal">
            <img src="img/partner.png" alt="" class="image">
            </router-link>
        </div>
        <div style="flex:8"><span>诗璇</span></div>
        <div style="flex:1">
            <router-link to="/personal">
                <img src="img/setting.png" alt="" class="image_s">
            </router-link>
        </div>
        <div style="flex:1"><img src="img/customer_service.png" alt="" class="image_s"></div>
      </div>
     <div class="flex" style="margin-top:2em;">
        <div class="fontSize_font">
            <img src="img/line.png" alt="" class="image_size">
            <div>收藏</div>
        </div>
        <div class="fontSize_font">
            <img src="img/edit.png" alt="" class="image_size">
            <div>评价</div>
        </div>
        <div class="fontSize_font">
            <img src="img/red .png" alt="" class="image_size">
            <div>红包/卡券</div>
        </div>
        <div class="fontSize_font">
            <img src="img/message_unread.png" alt="" class="image_size">
            <div>消息</div>
        </div>   
     </div>
    </div>
    <div class="bgcolor_tool">
        <h3>推荐工具</h3>
        <div class="flex" style="margin-bottom:2em;">
           <div class="fontSize_font">
               <img src="img/birthday.png" alt="" class="image_tool">
               <div>生日特权</div>
            </div>
            <div class="fontSize_font">
                <img src="img/Assets.png" alt="" class="image_tool">
                <div>我的资产</div>
            </div>
            <div class="fontSize_font">
                <img src="img/recharge.png" alt="" class="image_tool">
                <div>充值</div>
            </div>
            <div class="fontSize_font">
                <img src="img/service.png" alt="" class="image_tool">
                <div>新个税计算</div>
            </div>
        </div >
        <div class="flex" style="margin-bottom:2em;">
           <div class="fontSize_font">
               <img src="img/train.png" alt="" class="image_tool">
               <div>火车票</div>
            </div>
            <div class="fontSize_font">
                <img src="img/entertainment.png" alt="" class="image_tool">
                <div>娱乐</div>
            </div>
            <div class="fontSize_font">
                <img src="img/Scenic spot.png" alt="" class="image_tool">
                <div>景点</div>
            </div>
            <div class="fontSize_font">
                <img src="img/navigation.png" alt="" class="image_tool">
                <div>导航</div>
            </div>
        </div>
        <div class="flex" style="padding-bottom:2em;">
           <div class="fontSize_font">
               <img src="img/plane.png" alt="" class="image_tool">
               <div>飞机票</div>
            </div>
            <div class="fontSize_font">
                <img src="img/home.png" alt="" class="image_tool">
                <div>住宿</div>
            </div>
            <div class="fontSize_font">
                <img src="img/foot.png" alt="" class="image_tool">
                <div>餐饮</div>
            </div>
            <div class="fontSize_font">
                <img src="img/other.png" alt="" class="image_tool">
                <div>其他</div>
            </div>
        </div>
    </div>
</div>
</template>
<script>
export default {
    name:'Myself',
    data(){
      return {
      }
    },
}
</script>
<style scoped>
.bgc_div{
   background-color: rgb(238, 167, 14);
   height:100%;
}
.avatar{
    background-color: #eee;
    border-radius: 50%;
    margin: 0 1rem;
}
.myself_service{
    padding-top: 3rem;
    padding-bottom: 2rem;
}
.image_s{
    width:70%;
}
.image_size{
    width:20%;
}
.fontSize_font{
    font-size: 0.8rem;
    text-align: center;
}
.bgcolor_tool{
    background-color: #fff;
    border-radius: 6%;
}
.bgcolor_tool h3{
    padding: 2rem;
}
.image_tool{
    width:40%;
}
</style>