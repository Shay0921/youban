SET NAMES UTF8;
DROP DATABASE IF EXISTS qiongyou;
CREATE DATABASE qiongyou CHARACTER SET UTF8;
USE qiongyou;

/**用户信息表**/
CREATE TABLE user( 
  uid INT PRIMARY KEY AUTO_INCREMENT,  
  uname VARCHAR(32) not null default '',    
  upwd VARCHAR(32) not null default ''
);
INSERT INTO user VALUES
(1, 'liuxin', '123'),
(2, 'lucy', '456');

CREATE TABLE note(
	id INT PRIMARY KEY AUTO_INCREMENT,
	img VARCHAR(64),
	comment INT,
	userAvatar VARCHAR(64),
	userName VARCHAR(32),
	detail VARCHAR(100)
);
INSERT INTO note VALUES
(NULL,'note-li1.jpg',22,'userAvatar-1.jpg','游伴大秘书','今日话题 | 过年七天乐，随手拍春节！'),
(NULL,'note-li2.jpg',106,'userAvatar-2.jpg','luca_luo','山和海的彼端，佛与神的半岛-纪伊初探'),
(NULL,'note-li3.jpg',54,'userAvatar-3.jpg','wing_flower','逐夏一路向南行走在鲁冰花盛开的季节（奇幻彩虹、绝美星空、行走在'),
(NULL,'note-li4.jpg',76,'userAvatar-4.jpg','lxczss','干货|中亚、中东、非洲33国签证亲测攻略（含10年美签、巴西interesting'),
(NULL,'note-li5.jpg',23,'userAvatar-5.jpg','扑朔迷离2008','【扑朔迷离de世界】本地达人带路，教你体验最地道的香港（独家专访'),
(NULL,'note-li6.jpg',44,'userAvatar-6.jpg','ttoobbyy','丁丁在摩洛哥————12天11夜摩洛哥4人行（超多星空教程、超多干货）'),
(NULL,'note-li7.jpg',44,'userAvatar-7.jpg','ShanksG','【自由行天下】之追寻大海龟的足迹 马达京度假之旅'),
(NULL,'note-li8.jpg',44,'userAvatar-8.jpg','艾米儿er','墨尔本最强攻略!女生独创澳洲30天，20大景点攻略+攻略+住宿推荐+美食攻略'),
(NULL,'note-li9.jpg',22,'userAvatar-9.jpg','rwtrwtr','今日话题 | 说说刚过去的小长假吧'),
(NULL,'note-li10.jpg',106,'userAvatar-10.jpg','trewg','主菜加点“糖”—— 英国亲子游记攻略文艺伦敦/托马斯乐园'),
(NULL,'note-li11.jpg',54,'userAvatar-11.jpg','bfgb','带着咖啡香气的时空穿越（老海20161223埃塞俄比亚&吉布提32日行）'),
(NULL,'note-li12.jpg',76,'userAvatar-12.jpg','trwtre','新西兰南岛摄影之旅（2016年11月，非公交，完整版）'),
(NULL,'note-li13.jpg',23,'userAvatar-13.jpg','dcbgfd','妖娆南意：一个人的西西里环岛、阿马尔菲海岸（全文完）'),
(NULL,'note-li14.jpg',44,'userAvatar-14.jpg','kiuy,uy','菩提树下，占芭花开（老挝琅勃拉邦、丰沙湾、万象、占巴色）'),
(NULL,'note-li15.jpg',44,'userAvatar-15.jpg','ewrwq','【V游记】偷得浮生二日闲——伊东河津樱追花小札（已完结）'),
(NULL,'note-li16.jpg',44,'userAvatar-16.jpg','bvcxbvcx','带上姜醋汁，去澳洲抓螃蟹 & 行走墨尔本，品味小情调'),
(NULL,'note-li17.jpg',22,'userAvatar-17.jpg','45y6hb','【愿无岁月可回头】闯进上帝的水族箱——帕劳+香港蜜月8日游'),
(NULL,'note-li18.jpg',106,'userAvatar-18.jpg','54hygtr','【时之沙】行走波斯五城13天，你永远不知道下一秒会发生怎样'),
(NULL,'note-li19.jpg',54,'userAvatar-19.jpg','hydhgh4','【对世界上瘾】两颗牙上的奇幻旅程（含简单常用西班牙语  巴塞'),
(NULL,'note-li20.jpg',76,'userAvatar-20.jpg','hgfd','2017年从北极开始，2月，13天挪威，船宿观虎鲸，看极光（完）'),
(NULL,'note-li21.jpg',23,'userAvatar-21.jpg','kiyuy','【美国公路旅行纪录片】30天美西+美东自驾游，带你走进一个真实的美国'),
(NULL,'note-li22.jpg',44,'userAvatar-22.jpg','kjuyhtkjuy','带着孕妇去玛雅【墨西哥】2017-1月（完·14天游记）墨城建筑，圣米格尔小镇'),
(NULL,'note-li23.jpg',44,'userAvatar-23.jpg','ShanksG','来霓虹国，与狐狸一起跨年'),
(NULL,'note-li24.jpg',44,'userAvatar-24.jpg','9876','英盲背包游天下系列之十：惊喜交加走进玛雅文明国度墨西哥（全文完）'),
(NULL,'note-li25.jpg',22,'userAvatar-25.jpg','hgfjhgfn','挪威追光笔记——我可能去了个假的北极圈（附极光观测、摄影攻略及吃住行玩全信息）'),
(NULL,'note-li26.jpg',106,'userAvatar-26.jpg','56juhyt','已完结#跨步走世界·饱岛散心游# 台北-九份-花莲8天7日（有攻略、有美图、有感受）'),
(NULL,'note-li27.jpg',54,'userAvatar-27.jpg','loiljhg','今日话题 | 过年七天乐，随手拍春节！'),
(NULL,'note-li28.jpg',76,'userAvatar-28.jpg','hygfh','干货|中亚、中东、非洲33国签证亲测攻略（含10年美签、巴西interesting'),
(NULL,'note-li29.jpg',23,'userAvatar-29.jpg','kjh65','带着咖啡香气的时空穿越（老海20161223埃塞俄比亚&吉布提32日行）'),
(NULL,'note-li30.jpg',44,'userAvatar-30.jpg','65thhgd','妖娆南意：一个人的西西里环岛、阿马尔菲海岸（全文完）'),
(NULL,'note-li31.jpg',44,'userAvatar-31.jpg','654hytfrdh','【时之沙】行走波斯五城13天，你永远不知道下一秒会发生怎样'),
(NULL,'note-li32.jpg',44,'userAvatar-32.jpg','hgfdnbv','墨尔本最强攻略!女生独创澳洲30天，20大景点攻略+攻略+住宿推荐+美食攻略'),
(NULL,'note-li33.jpg',22,'userAvatar-33.jpg','gfdsfv','今日话题 | 过年七天乐，随手拍春节！'),
(NULL,'note-li34.jpg',106,'userAvatar-34.jpg','54rtgdfsgfd','山和海的彼端，佛与神的半岛-纪伊初探'),
(NULL,'note-li35.jpg',54,'userAvatar-35.jpg','.kiuykiu','逐夏一路向南行走在鲁冰花盛开的季节（奇幻彩虹、绝美星空、行走在'),
(NULL,'note-li36.jpg',76,'userAvatar-36.jpg','fdvfds','干货|中亚、中东、非洲33国签证亲测攻略（含10年美签、巴西interesting'),
(NULL,'note-li37.jpg',23,'userAvatar-37.jpg','tregfds','【扑朔迷离de世界】本地达人带路，教你体验最地道的香港（独家专访'),
(NULL,'note-li38.jpg',44,'userAvatar-38.jpg','hfmnhfdb','丁丁在摩洛哥————12天11夜摩洛哥4人行（超多星空教程、超多干货）'),
(NULL,'note-li39.jpg',44,'userAvatar-39.jpg','sdfds','【自由行天下】之追寻大海龟的足迹 马达京度假之旅'),
(NULL,'note-li40.jpg',44,'userAvatar-40.jpg','rtewbfvb','墨尔本最强攻略!女生独创澳洲30天，20大景点攻略+攻略+住宿推荐+美食攻略');