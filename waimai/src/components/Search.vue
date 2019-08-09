<template>
<div>
    <mt-search
    v-model="searchValue"
    cancel-text="取消"
    placeholder="搜索"
    class="font-size-8"
    style="width:100%;height:auto;"
    >
    </mt-search>
</div>
</template>
<script>
export default {
    data(){
     return {
        searchValue:""
    }
    },
}
</script>
<style >
/* 搜索 */
.mint-searchbar{
  padding: 0.2em 0.2em !important;
  background-color: #efeff4 !important;
}
.mint-searchbar-core{
  margin-bottom: 0 !important;
  height:0 !important; 
}
.mint-searchbar a{
   color:black;
   font-size: 16px;
}
.font-size-8{
  width:100%;
  height:auto; 
}
</style>