#db.sql 数据库脚本文件
SET NAMES UTF8;

DROP DATABASE IF EXISTS tt;
CREATE DATABASE tt CHARSET=UTF8;
USE tt;

 
#创建用户表
CREATE TABLE tt_user(
 id INT PRIMARY KEY AUTO_INCREMENT,
 uname VARCHAR(25),
 upwd VARCHAR(32)
);
	#插入用户数据
INSERT INTO tt_user VALUES(null,'tom',md5('123'));
INSERT INTO tt_user VALUES(null,'jerry',md5('123'));

#创建电影类表
CREATE TABLE tt_filmlist(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(32),
	otitle VARCHAR(32),   #原标题
	score VARCHAR(10),    #分数
	point VARCHAR(32),    #描述
	country VARCHAR(32),  #国家
	time  VARCHAR(32),	
	player VARCHAR(32),   #演员
	img VARCHAR(128)      #图片
);
     #插入电影列表数据
INSERT INTO tt_filmlist VALUES(NULL,'千与千寻','\u5343\u3068\u5343\u5c0b','9.4','动漫,冒险,奇幻,家庭','日本','2019-6-21','周冬雨,入野自由','image/movie1.jpg');
INSERT INTO tt_filmlist VALUES(NULL,'蜘蛛侠:英雄远征','\u5343\u3068\u5343\u5c0b','8.4','冒险,科幻,家庭','美国','2019-6-21','汤姆·赫兰德','image/movie2.jpg');
INSERT INTO tt_filmlist VALUES(NULL,'绝杀慕尼黑','\u5343\u3068\u5343\u5c0b','9.4','剧情,运动','俄罗斯','2019-6-13','安东·梅格尔季切夫','image/movie3.jpg');
INSERT INTO tt_filmlist VALUES(NULL,'哥斯拉2：怪兽之王','Godzilla: King of the Monsters','8.4','科幻,灾难,动作','美国','2019-5-31','凯尔·钱德勒','image/movie4.jpg');
INSERT INTO tt_filmlist VALUES(NULL,'千与千寻','\u5343\u3068\u5343\u5c0b','9.4','动漫,冒险,奇幻,家庭','日本','2019-6-21','周冬雨,入野自由','image/movie1.jpg');
INSERT INTO tt_filmlist VALUES(NULL,'蜘蛛侠:英雄远征','\u5343\u3068\u5343\u5c0b','8.4','冒险,科幻,家庭','美国','2019-6-21','汤姆·赫兰德','image/movie2.jpg');
INSERT INTO tt_filmlist VALUES(NULL,'绝杀慕尼黑','\u5343\u3068\u5343\u5c0b','9.4','剧情,运动','俄罗斯','2019-6-13','安东·梅格尔季切夫','image/movie3.jpg');
INSERT INTO tt_filmlist VALUES(NULL,'哥斯拉2：怪兽之王','Godzilla: King of the Monsters','8.4','科幻,灾难,动作','美国','2019-5-31','凯尔·钱德勒','image/movie4.jpg');
INSERT INTO tt_filmlist VALUES(NULL,'千与千寻','\u5343\u3068\u5343\u5c0b','9.4','动漫,冒险,奇幻,家庭','日本','2019-6-21','周冬雨,入野自由','image/movie1.jpg');
INSERT INTO tt_filmlist VALUES(NULL,'蜘蛛侠:英雄远征','\u5343\u3068\u5343\u5c0b','8.4','冒险,科幻,家庭','美国','2019-6-21','汤姆·赫兰德','image/movie2.jpg');
INSERT INTO tt_filmlist VALUES(NULL,'绝杀慕尼黑','\u5343\u3068\u5343\u5c0b','9.4','剧情,运动','俄罗斯','2019-6-13','安东·梅格尔季切夫','image/movie3.jpg');
INSERT INTO tt_filmlist VALUES(NULL,'哥斯拉2：怪兽之王','Godzilla: King of the Monsters','8.4','科幻,灾难,动作','美国','2019-5-31','凯尔·钱德勒','image/movie4.jpg');

 #创建图片表
CREATE TABLE tt_img(
	iid INT PRIMARY KEY AUTO_INCREMENT,
	fid INT,
	src VARCHAR(128)
);
	#插入图片数据
INSERT INTO tt_img VALUES(NULL,2,'image/movie1.jpg');
INSERT INTO tt_img VALUES(NULL,2,'image/movie2.jpg');
INSERT INTO tt_img VALUES(NULL,2,'image/movie3.jpg');
INSERT INTO tt_img VALUES(NULL,2,'image/movie4.jpg');
INSERT INTO tt_img VALUES(NULL,2,'image/movie1.jpg');
INSERT INTO tt_img VALUES(NULL,2,'image/movie2.jpg');
INSERT INTO tt_img VALUES(NULL,2,'image/movie3.jpg');
INSERT INTO tt_img VALUES(NULL,2,'image/movie4.jpg');
INSERT INTO tt_img VALUES(NULL,2,'image/movie1.jpg');
INSERT INTO tt_img VALUES(NULL,2,'image/movie2.jpg');
INSERT INTO tt_img VALUES(NULL,2,'image/movie3.jpg');
INSERT INTO tt_img VALUES(NULL,2,'image/movie4.jpg');

#创建影院列表
 CREATE TABLE tt_cinemalist(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(32),#影院名
	minprice DECIMAL(3,0),#最低价格
	position VARCHAR(128),#位置
	distance VARCHAR(32)
);
	#插入影院信息
INSERT INTO tt_cinemalist VALUES(NULL,'博纳国际影城(万寿路店)','38','海淀区复兴路51号凯德晶品购物中心4层','700m');
INSERT INTO tt_cinemalist VALUES(NULL,'耀莱成龙影城(五棵松店)','40','海淀区复兴路69号蓝色港湾购物中心北区5层','900m');
INSERT INTO tt_cinemalist VALUES(NULL,'中影国际影城(丰台千禧街店)','34','丰台区靛场路千禧商业街4号楼','2.1km');
INSERT INTO tt_cinemalist VALUES(NULL,'橙天嘉禾影城(吉彩店)','35.9','海淀区玉海园五里22号配套商业楼(原吉彩体育馆)','2.9km');
INSERT INTO tt_cinemalist VALUES(NULL,'恒业影城背景IMAX店','38','丰台区万丰路（地铁9号线、10号线六里桥站）银座和谐广场购物中心5F','3km');
INSERT INTO tt_cinemalist VALUES(NULL,'星典影城(六里桥店)','24','丰台区西三环南路10号月恒正大新生活广场三层','3km');
INSERT INTO tt_cinemalist VALUES(NULL,'万画影城(四季青店)','28','海淀区西四环北路金四季购物中心中段三层B003','4.3km');
INSERT INTO tt_cinemalist VALUES(NULL,'万达影城(石景山店)','44.9','石景山区石景山路乙18号万达广场娱乐楼4楼','5.4km');


#创建电影场次数据表
CREATE TABLE tt_times(
	tid INT PRIMARY KEY AUTO_INCREMENT,
	fid INT,
	cid INT,  #影院id
	starttime VARCHAR(32), #开始时间
	endtime VARCHAR(32),	#结束时间
	hell   VARCHAR(32),     #放映厅
	edition VARCHAR(32),	#版本
	price   DECIMAL(3,1),   #价格
	disprice  DECIMAL(3,1)  #折扣价格
);
	#插入场次数据
INSERT INTO tt_times VALUES(NULL,1,1,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,1,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,1,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,1,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,1,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,1,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,1,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,1,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,1,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,1,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,1,2,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,2,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,2,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,2,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,2,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,2,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,2,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,2,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,2,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,2,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,1,3,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,3,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,3,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,3,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,3,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,3,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,3,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,3,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,3,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,3,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,1,4,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,4,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,4,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,4,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,4,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,4,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,4,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,4,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,4,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,4,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,1,5,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,5,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,5,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,5,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,5,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,5,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,5,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,5,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,5,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,5,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,1,6,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,6,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,6,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,6,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,6,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,6,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,6,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,6,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,6,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,6,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,1,7,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,7,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,7,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,7,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,7,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,7,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,7,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,7,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,7,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,1,7,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,1,8,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,8,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,8,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,8,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,8,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,8,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,8,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,8,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,8,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,8,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,1,9,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,9,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,9,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,9,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,9,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,9,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,9,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,9,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,9,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,9,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,1,10,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,10,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,10,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,10,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,10,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,10,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,10,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,10,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,10,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,10,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,1,11,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,11,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,11,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,11,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,11,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,11,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,11,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,11,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,11,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,11,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,1,12,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,12,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,12,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,12,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,12,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,12,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,12,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,12,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,12,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,1,12,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,12,1,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,1,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,1,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,1,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,1,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,1,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,1,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,1,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,1,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,1,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,12,2,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,2,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,2,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,2,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,2,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,2,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,2,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,2,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,2,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,2,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,12,3,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,3,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,3,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,3,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,3,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,3,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,3,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,3,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,3,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,3,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,12,4,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,4,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,4,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,4,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,4,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,4,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,4,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,4,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,4,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,4,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,12,5,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,5,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,5,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,5,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,5,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,5,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,5,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,5,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,5,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,5,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,12,6,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,6,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,6,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,6,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,6,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,6,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,6,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,6,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,6,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,6,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,12,7,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,7,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,7,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,7,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,7,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,7,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,7,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,7,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,7,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,12,7,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,12,8,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,8,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,8,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,8,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,8,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,8,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,8,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,8,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,8,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,8,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,12,9,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,9,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,9,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,9,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,9,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,9,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,9,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,9,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,9,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,9,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,12,10,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,10,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,10,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,10,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,10,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,10,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,10,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,10,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,10,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,10,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,12,11,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,11,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,11,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,11,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,11,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,11,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,11,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,11,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,11,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,11,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,12,12,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,12,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,12,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,12,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,12,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,12,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,12,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,12,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,12,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,12,12,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,11,1,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,1,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,1,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,1,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,1,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,1,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,1,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,1,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,1,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,1,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,11,2,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,2,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,2,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,2,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,2,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,2,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,2,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,2,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,2,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,2,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,11,3,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,3,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,3,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,3,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,3,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,3,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,3,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,3,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,3,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,3,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,11,4,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,4,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,4,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,4,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,4,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,4,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,4,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,4,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,4,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,4,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,11,5,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,5,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,5,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,5,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,5,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,5,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,5,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,5,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,5,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,5,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,11,6,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,6,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,6,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,6,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,6,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,6,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,6,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,6,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,6,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,6,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,11,7,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,7,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,7,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,7,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,7,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,7,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,7,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,7,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,7,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,11,7,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,11,8,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,8,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,8,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,8,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,8,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,8,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,8,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,8,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,8,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,8,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,11,9,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,9,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,9,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,9,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,9,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,9,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,9,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,9,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,9,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,9,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,11,10,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,10,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,10,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,10,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,10,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,10,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,10,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,10,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,10,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,10,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,11,11,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,11,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,11,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,11,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,11,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,11,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,11,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,11,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,11,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,11,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,11,12,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,12,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,12,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,12,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,12,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,12,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,12,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,12,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,12,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,11,12,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,10,1,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,1,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,1,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,1,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,1,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,1,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,1,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,1,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,1,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,1,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,10,2,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,2,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,2,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,2,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,2,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,2,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,2,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,2,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,2,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,2,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,10,3,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,3,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,3,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,3,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,3,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,3,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,3,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,3,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,3,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,3,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,10,4,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,4,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,4,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,4,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,4,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,4,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,4,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,4,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,4,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,4,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,10,5,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,5,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,5,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,5,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,5,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,5,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,5,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,5,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,5,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,5,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,10,6,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,6,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,6,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,6,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,6,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,6,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,6,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,6,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,6,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,6,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,10,7,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,7,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,7,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,7,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,7,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,7,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,7,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,7,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,7,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,10,7,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,10,8,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,8,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,8,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,8,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,8,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,8,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,8,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,8,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,8,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,8,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,10,9,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,9,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,9,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,9,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,9,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,9,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,9,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,9,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,9,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,9,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,10,10,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,10,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,10,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,10,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,10,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,10,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,10,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,10,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,10,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,10,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,10,11,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,11,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,11,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,11,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,11,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,11,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,11,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,11,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,11,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,11,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,10,12,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,12,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,12,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,12,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,12,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,12,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,12,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,12,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,12,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,10,12,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,9,1,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,1,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,1,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,1,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,1,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,1,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,1,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,1,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,1,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,1,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,9,2,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,2,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,2,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,2,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,2,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,2,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,2,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,2,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,2,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,2,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,9,3,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,3,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,3,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,3,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,3,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,3,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,3,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,3,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,3,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,3,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,9,4,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,4,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,4,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,4,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,4,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,4,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,4,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,4,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,4,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,4,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,9,5,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,5,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,5,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,5,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,5,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,5,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,5,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,5,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,5,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,5,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,9,6,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,6,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,6,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,6,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,6,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,6,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,6,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,6,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,6,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,6,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,9,7,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,7,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,7,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,7,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,7,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,7,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,7,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,7,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,7,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,9,7,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,9,8,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,8,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,8,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,8,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,8,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,8,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,8,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,8,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,8,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,8,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,9,9,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,9,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,9,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,9,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,9,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,9,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,9,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,9,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,9,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,9,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,9,10,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,10,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,10,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,10,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,10,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,10,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,10,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,10,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,10,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,10,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,9,11,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,11,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,11,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,11,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,11,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,11,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,11,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,11,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,11,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,11,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,9,12,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,12,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,12,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,12,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,12,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,12,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,12,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,12,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,12,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,9,12,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,8,1,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,1,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,1,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,1,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,1,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,1,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,1,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,1,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,1,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,1,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,8,2,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,2,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,2,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,2,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,2,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,2,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,2,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,2,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,2,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,2,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,8,3,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,3,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,3,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,3,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,3,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,3,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,3,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,3,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,3,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,3,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,8,4,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,4,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,4,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,4,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,4,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,4,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,4,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,4,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,4,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,4,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,8,5,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,5,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,5,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,5,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,5,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,5,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,5,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,5,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,5,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,5,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,8,6,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,6,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,6,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,6,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,6,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,6,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,6,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,6,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,6,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,6,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,8,7,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,7,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,7,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,7,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,7,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,7,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,7,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,7,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,7,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,8,7,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,8,8,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,8,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,8,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,8,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,8,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,8,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,8,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,8,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,8,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,8,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,8,9,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,9,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,9,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,9,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,9,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,9,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,9,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,9,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,9,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,9,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,8,10,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,10,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,10,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,10,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,10,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,10,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,10,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,10,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,10,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,10,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,8,11,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,11,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,11,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,11,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,11,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,11,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,11,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,11,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,11,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,11,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,8,12,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,12,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,12,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,12,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,12,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,12,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,12,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,12,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,12,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,8,12,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,7,1,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,1,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,1,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,1,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,1,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,1,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,1,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,1,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,1,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,1,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,7,2,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,2,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,2,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,2,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,2,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,2,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,2,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,2,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,2,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,2,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,7,3,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,3,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,3,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,3,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,3,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,3,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,3,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,3,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,3,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,3,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,7,4,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,4,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,4,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,4,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,4,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,4,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,4,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,4,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,4,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,4,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,7,5,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,5,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,5,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,5,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,5,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,5,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,5,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,5,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,5,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,5,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,7,6,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,6,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,6,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,6,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,6,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,6,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,6,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,6,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,6,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,6,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,7,7,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,7,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,7,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,7,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,7,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,7,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,7,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,7,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,7,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,7,7,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,7,8,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,8,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,8,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,8,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,8,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,8,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,8,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,8,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,8,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,8,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,7,9,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,9,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,9,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,9,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,9,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,9,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,9,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,9,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,9,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,9,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,7,10,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,10,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,10,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,10,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,10,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,10,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,10,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,10,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,10,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,10,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,7,11,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,11,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,11,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,11,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,11,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,11,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,11,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,11,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,11,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,11,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,7,12,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,12,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,12,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,12,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,12,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,12,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,12,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,12,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,12,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,7,12,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,6,1,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,1,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,1,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,1,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,1,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,1,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,1,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,1,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,1,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,1,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,6,2,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,2,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,2,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,2,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,2,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,2,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,2,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,2,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,2,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,2,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,6,3,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,3,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,3,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,3,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,3,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,3,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,3,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,3,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,3,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,3,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,6,4,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,4,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,4,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,4,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,4,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,4,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,4,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,4,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,4,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,4,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,6,5,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,5,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,5,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,5,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,5,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,5,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,5,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,5,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,5,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,5,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,6,6,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,6,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,6,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,6,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,6,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,6,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,6,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,6,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,6,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,6,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,6,7,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,7,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,7,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,7,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,7,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,7,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,7,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,7,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,7,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,6,7,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,6,8,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,8,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,8,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,8,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,8,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,8,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,8,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,8,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,8,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,8,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,6,9,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,9,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,9,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,9,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,9,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,9,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,9,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,9,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,9,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,9,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,6,10,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,10,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,10,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,10,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,10,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,10,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,10,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,10,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,10,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,10,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,6,11,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,11,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,11,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,11,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,11,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,11,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,11,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,11,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,11,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,11,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,6,12,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,12,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,12,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,12,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,12,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,12,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,12,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,12,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,12,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,6,12,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,5,1,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,1,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,1,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,1,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,1,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,1,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,1,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,1,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,1,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,1,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,5,2,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,2,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,2,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,2,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,2,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,2,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,2,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,2,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,2,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,2,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,5,3,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,3,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,3,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,3,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,3,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,3,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,3,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,3,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,3,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,3,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,5,4,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,4,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,4,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,4,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,4,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,4,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,4,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,4,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,4,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,4,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,5,5,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,5,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,5,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,5,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,5,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,5,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,5,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,5,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,5,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,5,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,5,6,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,6,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,6,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,6,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,6,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,6,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,6,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,6,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,6,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,6,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,5,7,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,7,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,7,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,7,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,7,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,7,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,7,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,7,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,7,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,5,7,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,5,8,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,8,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,8,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,8,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,8,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,8,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,8,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,8,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,8,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,8,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,5,9,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,9,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,9,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,9,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,9,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,9,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,9,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,9,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,9,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,9,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,5,10,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,10,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,10,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,10,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,10,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,10,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,10,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,10,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,10,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,10,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,5,11,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,11,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,11,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,11,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,11,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,11,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,11,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,11,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,11,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,11,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,5,12,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,12,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,12,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,12,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,12,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,12,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,12,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,12,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,12,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,5,12,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,4,1,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,1,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,1,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,1,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,1,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,1,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,1,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,1,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,1,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,1,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,4,2,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,2,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,2,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,2,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,2,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,2,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,2,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,2,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,2,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,2,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,4,3,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,3,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,3,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,3,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,3,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,3,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,3,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,3,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,3,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,3,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,4,4,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,4,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,4,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,4,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,4,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,4,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,4,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,4,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,4,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,4,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,4,5,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,5,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,5,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,5,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,5,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,5,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,5,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,5,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,5,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,5,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,4,6,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,6,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,6,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,6,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,6,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,6,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,6,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,6,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,6,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,6,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,4,7,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,7,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,7,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,7,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,7,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,7,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,7,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,7,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,7,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,4,7,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,4,8,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,8,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,8,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,8,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,8,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,8,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,8,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,8,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,8,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,8,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,4,9,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,9,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,9,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,9,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,9,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,9,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,9,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,9,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,9,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,9,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,4,10,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,10,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,10,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,10,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,10,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,10,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,10,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,10,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,10,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,10,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,4,11,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,11,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,11,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,11,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,11,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,11,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,11,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,11,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,11,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,11,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,4,12,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,12,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,12,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,12,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,12,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,12,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,12,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,12,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,12,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,4,12,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,3,1,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,1,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,1,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,1,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,1,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,1,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,1,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,1,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,1,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,1,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,3,2,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,2,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,2,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,2,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,2,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,2,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,2,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,2,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,2,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,2,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,3,3,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,3,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,3,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,3,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,3,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,3,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,3,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,3,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,3,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,3,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,3,4,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,4,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,4,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,4,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,4,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,4,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,4,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,4,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,4,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,4,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,3,5,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,5,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,5,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,5,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,5,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,5,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,5,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,5,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,5,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,5,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,3,6,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,6,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,6,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,6,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,6,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,6,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,6,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,6,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,6,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,6,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,3,7,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,7,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,7,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,7,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,7,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,7,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,7,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,7,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,7,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,3,7,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,3,8,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,8,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,8,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,8,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,8,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,8,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,8,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,8,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,8,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,8,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,3,9,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,9,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,9,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,9,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,9,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,9,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,9,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,9,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,9,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,9,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,3,10,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,10,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,10,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,10,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,10,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,10,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,10,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,10,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,10,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,10,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,3,11,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,11,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,11,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,11,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,11,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,11,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,11,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,11,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,11,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,11,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,3,12,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,12,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,12,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,12,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,12,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,12,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,12,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,12,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,12,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,3,12,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,2,1,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,1,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,1,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,1,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,1,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,1,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,1,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,1,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,1,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,1,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,2,2,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,2,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,2,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,2,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,2,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,2,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,2,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,2,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,2,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,2,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,2,3,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,3,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,3,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,3,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,3,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,3,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,3,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,3,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,3,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,3,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,2,4,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,4,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,4,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,4,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,4,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,4,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,4,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,4,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,4,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,4,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,2,5,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,5,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,5,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,5,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,5,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,5,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,5,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,5,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,5,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,5,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,2,6,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,6,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,6,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,6,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,6,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,6,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,6,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,6,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,6,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,6,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,2,7,'2:40','4:15','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,7,'3:40','5:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,7,'4:40','6:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,7,'9:40','11:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,7,'12:15','13:55','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,7,'13:40','15:15','2号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,7,'16:40','18:15','4号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,7,'18:35','20:25','1号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,7,'20:40','22:15','5号厅','原版2D','44','40');
INSERT INTO tt_times VALUES(NULL,2,7,'22:05','23:55','3号厅','原版2D','44','40');

INSERT INTO tt_times VALUES(NULL,2,8,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,8,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,8,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,8,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,8,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,8,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,8,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,8,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,8,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,8,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,2,9,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,9,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,9,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,9,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,9,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,9,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,9,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,9,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,9,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,9,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,2,10,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,10,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,10,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,10,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,10,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,10,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,10,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,10,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,10,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,10,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,2,11,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,11,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,11,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,11,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,11,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,11,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,11,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,11,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,11,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,11,'22:05','23:55','3号厅','原版3D','44','40');

INSERT INTO tt_times VALUES(NULL,2,12,'2:40','4:15','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,12,'3:40','5:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,12,'4:40','6:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,12,'9:40','11:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,12,'12:15','13:55','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,12,'13:40','15:15','2号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,12,'16:40','18:15','4号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,12,'18:35','20:25','1号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,12,'20:40','22:15','5号厅','原版3D','44','40');
INSERT INTO tt_times VALUES(NULL,2,12,'22:05','23:55','3号厅','原版3D','44','40');








