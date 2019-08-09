<template>
   <div class="height_image">
        <mt-swipe :auto="3000">
            <mt-swipe-item><img src="img/banner.jpg" alt="" class="image"></mt-swipe-item>
            <mt-swipe-item><img src="img/banner2.jpg" alt="" class="image"></mt-swipe-item>
            <mt-swipe-item><img src="img/banner3.jpg" alt="" class="image"></mt-swipe-item>
        </mt-swipe>
       </div>
</template>
<script>
export default {
    data(){
     return {
        
    }
    },
  
}
</script>
<style scoped>
.height_image{
    height: 13rem;
}
</style>