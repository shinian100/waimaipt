<template>
  <div>
       <mt-header title="个人信息">
            <router-link to="/" slot="left">
                <mt-button icon="back">返回</mt-button>
            </router-link>
                <mt-button icon="more" slot="right"></mt-button>
         </mt-header>
       <div>
           <mt-cell title="头像"  is-link></mt-cell>
           <mt-cell title="昵称"  is-link></mt-cell>
           <mt-cell title="生日"  is-link></mt-cell>
           <mt-cell title="收货地址"  is-link></mt-cell>
       </div>
       <div>
            <!-- <mt-field label="手机号" placeholder="请输入手机号" type="tel" v-model="phone"></mt-field>
            <mt-field label="生日" placeholder="请输入生日" type="date" v-model="birthday"></mt-field>
            <mt-field label="地址" placeholder="请输入地址" type="address" rows="4" v-model="address"></mt-field> -->
       </div>
       <!-- <button class="btn_save">保存</button> -->
  </div>
</template>
<script>
export default {
    data(){
     return {
        username:"",
        password:"",
        phone:"",
        birthday:"",
        address:""
    }
    },
     methods: {

    }
  
}
</script>
<style scoped>

.btn_save{
    margin:2rem 10rem;
    background-color: rgb(211, 199, 199);
}
</style>