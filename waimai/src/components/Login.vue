<template>
  <div class="tipslogin">
     <div class="imgDiv">
       <div class="img">
         <img src="img/logo.png" alt="">
       </div>
          
      </div>
      <div class="operateDiv">
        <mt-field  placeholder="请输入用户" v-model="uname" class="myinput"></mt-field>
        <mt-field  placeholder="请输入6-8位密码" v-model="upwd" class="input"></mt-field>
        <div class="flex marginDiv">
          <router-link to="">忘记密码</router-link>
          <router-link to="/register">注册</router-link>
        </div>
        <mt-button size="large" @click="login" class="mybutton" >登录</mt-button>
      </div>
  </div>
</template>
<script>
export default {
     data(){
        return{
           uname:"",
           upwd:""
        }
    },
     methods:{
        login(){
          //先获得uname和upwd两个参数
          var uname=this.uname;
          var upwd=this.upwd;
          //判断的用户输入格式是否正确
          var regUname=/^\w{3,9}$/ig
          var regUpwd=/^\w{3,6}$/ig
          if(!regUname.test(uname)){
            this.$messagebox("消息","请输入正确的用户名")
            return;
          }else if(!regUpwd.test(upwd)){
            this.$messagebox("消息","请输入正确的密码")
            return;
          }else{
            this.axios.get("login",{params:{
                uname:uname,
                upwd:upwd
            }
            }).then((result)=>{
              console.log(result.data)
              if(result.data.code==-1){
                this.$messagebox("消息","登录失败")
              }else if(result.data.code==1){
                this.$messagebox("消息","登录成功")
                setTimeout(()=>{
                     this.$router.push("/")
                },1000)
              }
            })
          }
        }
     }
}
</script>
<style scoped>
     /* 你需要登录才能继续仿问的布局样式 */
    .tipslogin {
      background-color:#fff;
      height:42rem;
    }
    /* 半闭样式
    .closeSpan {
      color: rgb(153, 153, 153)
    } */
    /* 图片 logo 根样式 */
    .imgDiv {
      display: flex;
      justify-content: center;
      padding-top: 7rem;
    }
    .img{
      padding:1rem;
      background-color: rgb(238, 167, 14);
      border-radius: 50%;
    }
    /* 图片样式 */
    .logo{
      width: 80px;
      height: 80px;
    }
     /* 上面的线隐藏 */
    .mint-cell-wrapper  {
      background-image: linear-gradient(180deg, #fff, #fff 0%, transparent 0%);
    }
   /* 输入框底边框样式 */
    /* .mint-cell-wrapper  {
      border-bottom: 1px solid #45c018;
    } */
    /* 操作区域的样式*/
    .operateDiv {
      padding-left: 20px;
      padding-right: 20px;
    }
    /* 输入框边距 */
    .myinput {
      margin-top:60px;
     
    }
    .input{
      margin-top:10px;
    }
    .mint-field-core{
       margin-bottom:0 !important;
    }
    /* 登录短信验证按钮边距 */
    .mybutton {
      margin-top: 20px;
      color:#fff !important;
    }
    /* 修改默认 butoon 的样式 达到和淘宝登录一样 */
    .mint-button--default {
      background:  rgb(238, 167, 14) no-repeat;
      border-radius: 5px;
      color: #fff;
      height: 48px;
    }
    .marginDiv{
      margin: 1rem 0.5rem;
      font-size: 14px;
    }
</style>