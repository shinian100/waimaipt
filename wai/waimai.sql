#设置客户端连接服务器端的编码
SET NAMES UTF8;
#丢弃数据库waimai，如果存在的话
DROP DATABASE IF EXISTS waimai;
#创建数据库waimai,设置存储的编码
CREATE DATABASE waimai CHARSET=UTF8;
#进入数据库
USE waimai;
#创建数据表
#用户列表
CREATE TABLE waim_user(
   uid     INT PRIMARY KEY AUTO_INCREMENT,
   uname   VARCHAR(32),
   upwd    VARCHAR(32),
   phone   VARCHAR(16) NOT NULL UNIQUE,
   avatar  VARCHAR(128),
   user_name   VARCHAR(32),
   gender      INT
);
INSERT INTO waim_user VALUES
(NULL, 'dingding', '123456',  '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456',  '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456',  '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456',  '13501234560', 'img/avatar/default.png', '秦小雅', '0');
#用户地址表
CREATE TABLE waim_address( 
  aid     INT PRIMARY KEY AUTO_INCREMENT,
  user_id   INT,
  receiver  VARCHAR(16),       #接收人姓名
  province   VARCHAR(16),
  city       VARCHAR(16),
  address    VARCHAR(128),
  phone      VARCHAR(16)
);   
INSERT INTO waim_address VALUES
(NULL,1,"丁伟","陕西省","西安市","陕西省西安市雁塔区科技路135号","15549328053"),
(NULL,1,"丁伟","陕西省","榆林市","陕西省榆林市绥德县","15549328053"),
(NULL,2,"林当","陕西省","西安市","陕西省西安市雁塔区科技路12号","15549328053");
#商品种类表，记载所有的商品种类
CREATE TABLE  waim_type(
  tid       INT PRIMARY KEY AUTO_INCREMENT,
  title     VARCHAR(32),
  subtitle  VARCHAR(64),
  img       VARCHAR(128)
);
INSERT INTO waim_type  VALUES
(NULL,"午餐","午餐包括：快餐、麻辣烫、火锅","img/lunch.png"),
(NULL,"晚餐","晚餐包括：牛排、鸡块、鸡排","img/dinner.png"),
(NULL,"甜品","甜品包括：泡芙、奶酪、蛋糕","img/coffee.png");
#商品表，记载所有商品的信息关联到种类表
CREATE TABLE waim_commodity(
  cid         INT PRIMARY KEY AUTO_INCREMENT,
  imgs         VARCHAR(128),
  images        VARCHAR(128)
);
INSERT INTO waim_commodity VALUES
(NULL,"img/foodlist1.jpg","img/mdlist1.jpg"),
(NULL,"img/foodlist2.jpg","img/mdlist2.jpg"),
(NULL,"img/foodlist3.jpg","img/mdlist3.jpg"),
(NULL,"img/foodlist4.jpg","img/mdlist1.jpg"),
(NULL,"img/foodlist5.jpg","img/mdlist2.jpg"),
(NULL,"img/foodlist6.jpg","img/mdlist3.jpg"),
(NULL,"img/foodlist7.jpg","img/mdlist1.jpg"),
(NULL,"img/foodlist8.jpg","img/mdlist2.jpg"),
(NULL,"img/foodlist9.jpg","img/mdlist3.jpg");
#商品详情表
CREATE TABLE waim_detail(
  did   INT PRIMARY KEY AUTO_INCREMENT,
  commodity_id   INT,#所属商品编号
  title          VARCHAR(32),#商品名称
  subtitle       VARCHAR(32), 
  price          VARCHAR(32),
  count          VARCHAR(64),
  img            VARCHAR(128)
 );
INSERT INTO waim_detail VALUES
(NULL,1,"周末制作美味甜品","关于食材我们只选最天然、健康、优质的，只为用心做好每一份菜",146,5,"img/mdlist1.jpg"),
(NULL,2,"美味甜品","关于食材我们只选最天然、健康、优质的，只为用心做好每一份菜",123,2,"img/mdlist2.jpg"),
(NULL,3,"美味大餐","关于食材我们只选最天然、健康、优质的，只为用心做好每一份菜",114,2,"img/mdlist3.jpg"),
(NULL,3,"风味小吃","关于食材我们只选最天然、健康、优质的，只为用心做好每一份菜",164,7,"img/mdlist4.jpg"),
(NULL,4,"午餐大丰收","关于食材我们只选最天然、健康、优质的，只为用心做好每一份菜",41,6,"img/mdlist5.jpg"),
(NULL,5,"晚餐","关于食材我们只选最天然、健康、优质的，只为用心做好每一份菜",66,7,"img/mdlist6.jpg"),
(NULL,6,"美味小吃","关于食材我们只选最天然、健康、优质的，只为用心做好每一份菜",86,3,"img/mdlist7.jpg"),
(NULL,7,"美味甜品","关于食材我们只选最天然、健康、优质的，只为用心做好每一份菜",96,2,"img/mdlist8.jpg"),
(NULL,8,"周末制作","关于食材我们只选最天然、健康、优质的，只为用心做好每一份菜",76,6,"img/mdlist9.jpg"),
(NULL,9,"周末制作","关于食材我们只选最天然、健康、优质的，只为用心做好每一份菜",76,6,"img/mdlist9.jpg");
#美食资讯
CREATE TABLE waim_food(
  fid     INT PRIMARY KEY AUTO_INCREMENT,
  title          VARCHAR(32),
  subtitle       VARCHAR(32),
  img            VARCHAR(128)
);
INSERT INTO waim_food VALUES
(NULL,"周末制作美味甜品","每一种食物只选最天然、健康、优质的食材","img/foodnewlist1.jpg"),
(NULL,"周末制作美味甜品","关于食材我们只选最天然、健康、优质的","img/foodnewlist1.jpg"),
(NULL,"周末制作美味甜品","只为一份对极致美味的追求，用心做好每一份菜","img/foodnewlist1.jpg");
#美食列表
CREATE TABLE waim_foodList(
  lid     INT PRIMARY KEY AUTO_INCREMENT,
  mouth          VARCHAR(32),
  time           VARCHAR(32),
  title          VARCHAR(32),
  subtitle       VARCHAR(32)
);
INSERT INTO waim_foodList VALUES
(Null,"05","2019-05-08","一大波餐饮大咖正在分享经营经验，你需要的都在这里！","大多数老餐饮人都有一种感觉，那就是近几年像原来那样按部就班地赚钱好像越来越难了，行业里的'套路'越来越深。行业竞争..."),
(Null,"05","2019-05-09","一大波餐饮大咖正在分享经营经验，你需要的都在这里！","大多数老餐饮人都有一种感觉，那就是近几年像原来那样按部就班地赚钱好像越来越难了，行业里的'套路'越来越深。行业竞争..."),
(Null,"05","2019-05-12","一大波餐饮大咖正在分享经营经验，你需要的都在这里！","大多数老餐饮人都有一种感觉，那就是近几年像原来那样按部就班地赚钱好像越来越难了，行业里的'套路'越来越深。行业竞争..."),
(Null,"05","2019-05-15","一大波餐饮大咖正在分享经营经验，你需要的都在这里！","大多数老餐饮人都有一种感觉，那就是近几年像原来那样按部就班地赚钱好像越来越难了，行业里的'套路'越来越深。行业竞争...");
#美食详情表
CREATE TABLE waim_foodList_detail(
  did     INT PRIMARY KEY AUTO_INCREMENT,
  footList_id  INT,
  title     VARCHAR(32),
  one    VARCHAR(128),
  two    VARCHAR(128),
  three   VARCHAR(128)
);
INSERT INTO waim_foodList_detail VALUES
(NULL,1,"一大波餐饮大咖正在分享经营经验，你需要的都在这里！","大多数老餐饮人都有一种感觉，那就是近几年像原来那样按部就班地赚钱好像越来越难了，行业里的“套路”越来越深。行业竞争加剧互联网大军侵袭，用工、店租、材料成本飞涨，市场的蓝海早已消失。大的餐饮经营企业紧跟潮流进行变革，小的企业盈利难度加大。那么，接下来，怎样才能在迅速变革的餐饮行业找到自己的位置?","事实上，餐饮行业是国民经济的重要组成部分。改革开放以来，随着国民经济的持续快速发展，城乡居民收入不断增加，人民生活水平断提高，我国餐饮业发展非常迅速，市场潜力较大，发展前景广阔。但同样随着社会的不断进步，“变化”必将成为未来的常态，只有在不断的“变化”中根据自身实际情况找到不变的优势，才能以长久立足。","目前，有一波职业餐饮人做客直播互动栏目《餐言餐语》，自剖自己多年的成功之路，从各个品类餐厅的经营理念出发，与餐饮同仁深入交流各品类餐厅的管理方法和经营小窍门。获得了广大餐饮人的关注，纷纷来到餐饮咖取经回家。"),
(NULL,2,"一大波餐饮大咖正在分享经营经验，你需要的都在这里！","大多数老餐饮人都有一种感觉，那就是近几年像原来那样按部就班地赚钱好像越来越难了，行业里的“套路”越来越深。行业竞争加剧互联网大军侵袭，用工、店租、材料成本飞涨，市场的蓝海早已消失。大的餐饮经营企业紧跟潮流进行变革，小的企业盈利难度加大。那么，接下来，怎样才能在迅速变革的餐饮行业找到自己的位置?","事实上，餐饮行业是国民经济的重要组成部分。改革开放以来，随着国民经济的持续快速发展，城乡居民收入不断增加，人民生活水平断提高，我国餐饮业发展非常迅速，市场潜力较大，发展前景广阔。但同样随着社会的不断进步，“变化”必将成为未来的常态，只有在不断的“变化”中根据自身实际情况找到不变的优势，才能以长久立足。","目前，有一波职业餐饮人做客直播互动栏目《餐言餐语》，自剖自己多年的成功之路，从各个品类餐厅的经营理念出发，与餐饮同仁深入交流各品类餐厅的管理方法和经营小窍门。获得了广大餐饮人的关注，纷纷来到餐饮咖取经回家。"),
(NULL,3,"一大波餐饮大咖正在分享经营经验，你需要的都在这里！","大多数老餐饮人都有一种感觉，那就是近几年像原来那样按部就班地赚钱好像越来越难了，行业里的“套路”越来越深。行业竞争加剧互联网大军侵袭，用工、店租、材料成本飞涨，市场的蓝海早已消失。大的餐饮经营企业紧跟潮流进行变革，小的企业盈利难度加大。那么，接下来，怎样才能在迅速变革的餐饮行业找到自己的位置?","事实上，餐饮行业是国民经济的重要组成部分。改革开放以来，随着国民经济的持续快速发展，城乡居民收入不断增加，人民生活水平断提高，我国餐饮业发展非常迅速，市场潜力较大，发展前景广阔。但同样随着社会的不断进步，“变化”必将成为未来的常态，只有在不断的“变化”中根据自身实际情况找到不变的优势，才能以长久立足。","目前，有一波职业餐饮人做客直播互动栏目《餐言餐语》，自剖自己多年的成功之路，从各个品类餐厅的经营理念出发，与餐饮同仁深入交流各品类餐厅的管理方法和经营小窍门。获得了广大餐饮人的关注，纷纷来到餐饮咖取经回家。"),
(NULL,4,"一大波餐饮大咖正在分享经营经验，你需要的都在这里！","大多数老餐饮人都有一种感觉，那就是近几年像原来那样按部就班地赚钱好像越来越难了，行业里的“套路”越来越深。行业竞争加剧互联网大军侵袭，用工、店租、材料成本飞涨，市场的蓝海早已消失。大的餐饮经营企业紧跟潮流进行变革，小的企业盈利难度加大。那么，接下来，怎样才能在迅速变革的餐饮行业找到自己的位置?","事实上，餐饮行业是国民经济的重要组成部分。改革开放以来，随着国民经济的持续快速发展，城乡居民收入不断增加，人民生活水平断提高，我国餐饮业发展非常迅速，市场潜力较大，发展前景广阔。但同样随着社会的不断进步，“变化”必将成为未来的常态，只有在不断的“变化”中根据自身实际情况找到不变的优势，才能以长久立足。","目前，有一波职业餐饮人做客直播互动栏目《餐言餐语》，自剖自己多年的成功之路，从各个品类餐厅的经营理念出发，与餐饮同仁深入交流各品类餐厅的管理方法和经营小窍门。获得了广大餐饮人的关注，纷纷来到餐饮咖取经回家。");
#首页轮播图标，商品展示列表，关联到商品表
CREATE TABLE waim_index_carousel(
  cid  INT PRIMARY KEY AUTO_INCREMENT,
  img  VARCHAR(128)
);
INSERT INTO waim_index_carousel VALUES
(NULL,"img/banner1.png"),
(NULL,"img/banner2.png"),
(NULL,"img/banner3.png"),
(NULL,"img/banner4.png");
#购物车
CREATE TABLE waim_cart(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(255),
    uid INT,
    title  VARCHAR(32),
    subtitle  VARCHAR(64),
    price DECIMAL(10,2),
    count  INT
);
INSERT INTO  waim_cart VALUES
(null,"img/foodlist1.jpg",1,"精美的午餐","油焖大虾",100,1),
(null,"img/foodlist2.jpg",1,"精美的午餐","糖醋排骨",80,3),
(null,"img/foodlist3.jpg",2,"精美的午餐","麻辣小龙虾",50,4),
(null,"img/foodlist4.jpg",2,"精美的午餐","清蒸鲈鱼",40,6),
(null,"img/foodlist5.jpg",3,"精美的午餐","家常豆腐",200,1);
