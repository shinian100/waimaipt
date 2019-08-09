<template>
    <div class="bgDiv">
        <div class="styleDiv">
           <h3>创建您的账户</h3>
        </div>
            <div>
                <span>注册邮箱：</span>
                <input type="email" placeholder="请输入正确的邮箱">
            </div>
            <div>
                <span>请输入昵称：</span>
                <input type="text" >
            </div>
            <div>
                 <span>请输入密码：</span>
                 <input type="password" placeholder="6-16位以上的字母和数字，字母区分大小写">
            </div>
            <div>
                 <span>请再次输入密码：</span>
                 <input type="password" placeholder="6-16位以上的字母和数字，字母区分大小写">
            </div>
            <div>
                 <span>您的性别：</span>
                 <input type="radio" checked value="男" name="gender" class="width">男
                 <input type="radio" value="女" name="gender" class="width">女
            </div>
            <div>
                <span>注册验证码：发送验证码到邮箱</span>
                <a href="#" class="btn btn-success a_one">发送</a>
            </div>
            <div>
                <input type="text">
            </div>
            <div>
                <input type="radio"  value="agree" name="choose" class="width">
                <span>我自愿遵守</span>《<a href="#" class="a_three">Aladdin用户使用条款</a>》
            </div>
            <div><a href="#" class="btn btn-success a_two">立即注册</a></div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
   .bgDiv{
       background-color: #fff;
       height: 42rem;
   } 
   .styleDiv{
       padding-top: 5rem;
       font-family: serif;
       text-align: center;
       padding-bottom: 4rem;
   }
</style>