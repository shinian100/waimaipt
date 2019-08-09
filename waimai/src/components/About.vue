<template>
  <div>
      <div class="text-center margin_top">
        <span>关于我们</span>
      </div>
      <div class="flex">
        <div><img src="img/about1.jpg" alt="" class="image"></div>
        <div><img src="img/about2.jpg" alt="" class="image"></div>
      </div>
        
        <div class="background">
         <p>公司致力于帮助传统行业实现在互联网时代的转型升级。目前经营的范围包括：电子商务平台开发技术支持、技术转让、运维技术服务、大数据、云计算等。</p>
        </div>
    <div>
        <div class="text-center margin_top" >
              <span>我们提供</span>
        </div>
    <div class="flex">
         <div class="text-center ">
                <img src="img/lunch.png" alt="" class="luch_image">
                <h4 class="padding">中餐</h4>
                <p class="font_size">中餐包括：快餐、麻辣烫、火锅</p>
         </div>
         <div class="text-center">
                <img src="img/dinner.png" alt="">
                <h4 class="padding">晚餐</h4>
                <p class="font_size">晚餐包括：牛排、鸡块、鸡排</p>
         </div>
         <div class="text-center ">
                <img src="img/coffee.png" alt="">
                <h4 class="padding">甜品</h4>
                <p class="font_size">甜品包括：泡芙、奶酪、蛋糕</p>
         </div>
    </div>
        <div class="text-center margin_top">
            <span>团队成员</span>
        </div>
            <div class="flex">
                    <div >
                        <img src="img/team1.jpg" alt="" class="image">
                        <h4>大卫</h4>
                        <h5>厨房主管1</h5>
                        <p>我们始终秉着严谨认真的专业态度，为顾客提供最棒的服务。</p>
                    </div>
                    <div >
                        <img src="img/team2.jpg" alt="" class="image">
                        <h4>米娜</h4>
                        <h5>厨房主管2</h5>
                        <p>我们始终秉着严谨认真的专业态度，为顾客提供最棒的服务。</p>
                    </div>
                    <div>
                      <img src="img/team3.jpg" alt="" class="image">
                      <h4>马丁</h4>
                      <h5>厨房主管3</h5>
                      <p>我们始终秉着严谨认真的专业态度，为顾客提供最棒的服务。</p>
                    </div>
            </div>
        </div>
  </div>
</template>
<script>
export default {
    data(){
    return {
        
    }
    }
  
}
</script>
<style scoped>
.height{
    height: 8rem;
}
.background{
    background-color: #bababa;
}
.background p{
    font-size: 0.5rem;
}
</style>