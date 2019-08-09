const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session=require("express-session");
//创建mysql连接池
var pool = mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  password:"",
  port:3306,
  database:"waimai",
  connectionLimit:15
});
//创建服务器
var server=express();
//服务器监听
server.listen(3000);
//接收请求
//静态资源
server.use(express.static("public"));
//处理跨域请求
server.use(cors({
   origin:["http://127.0.0.1:8080","http://localhost:8080"],//允许谁访问
   credentials:true//每次请求进行验证
}))
//添加session功能
server.use(session({
  secret:"128位字符",//自定义字符串
  resave:true,//每次获得是否更新数据
  saveUninitialized:true //保存初始化的数据
}))
//使用中间件
//server.use(bodyParser.urlencoded({extended:false}));
//用户登录请求
server.get("/login",(req,res)=>{
	var uname=req.query.uname;
	var upwd=req.query.upwd;
	var sql="select uid from waim_user where uname=? and upwd=?"
    pool.query(sql,[uname,upwd],(err,result)=>{
		if(err) throw err;
		if(result.length==0){
			res.send({code:"-1",msg:"用户名或密码错误"})
		}else{
			req.session.uid=result[0].uid
			res.send({code:"1",msg:"登录成功"})
		}
	})
})
//用户注册
server.post("/login",(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
	var sql="insert into waim_user values (NULL,uname,upwd)"
    pool.query(sql,[uname,upwd],(err,result)=>{
		if(err) throw err;
			res.send({code:"1",msg:"注册成功",data:result})
	})
})
//商品种类
server.get("/index",(req,res)=>{
  var sql="select tid,title,subtitle,img from waim_type"
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:"1",data:result})
    }
  })
})
//商品列表
server.get("/list",(req,res)=>{
  var sql="select cid,imgs,images from waim_commodity"
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:"1",data:result})
    }
  })
})
// //商品详情页
server.get("/detail",(req,res)=>{
  var commodity_id=req.query.commodity_id
  var sql="select did,commodity_id,title,subtitle,price,count,img from waim_detail where commodity_id=?"
  pool.query(sql,[commodity_id],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:"1",data:result})
    }
  })
})
//美食资讯
server.get("/food",(req,res)=>{
  var sql="select fid,title,subtitle,img from waim_food"
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:"1",data:result})
    }
  })
})
//美食列表
server.get("/foodList",(req,res)=>{
  var sql="select lid,mouth,time,title,subtitle from waim_foodList"
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:"1",data:result})
    }
  })
})
//美食详情
server.get("/foodDetail",(req,res)=>{
  var footList_id=req.query.footList_id
  var sql="select did,footList_id,title,one,two,three from waim_foodList_detail where footList_id=?"
  pool.query(sql,[footList_id],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:"1",data:result})
    }
  })
})
//轮播图
server.get("/carousel",(req,res)=>{
  var sql="select cid,img from waim_index_carousel"
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:"1",data:result})
    }
  })
})
//购物车
server.get("/cart",(req,res)=>{
  var uid=req.session.uid;//前提是用户先登录，将uid保存到session里面，才可以这样使用
  var sql="select cid,img,uid,title,subtitle,price,count from waim_cart where uid=?"
  pool.query(sql,[uid],(err,result)=>{
    if(err){throw err};
      res.send({code:1,mes:"查询成功",data:result})
  })
})
//用户地址
