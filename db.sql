-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.26 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table stsc2.article
DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Author` varchar(50) DEFAULT NULL COMMENT '作者',
  `Title` varchar(200) DEFAULT NULL COMMENT '标题',
  `URL` varchar(100) DEFAULT NULL COMMENT '如果此字段不为空 则直接显示URL所在页面',
  `Content` text COMMENT '如果URL为空则以标准方式显示文本内容',
  `CreateDate` date DEFAULT NULL COMMENT '创建日期',
  `ExpiredDate` date DEFAULT '9999-12-31' COMMENT '过期日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.cart
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StoreId` int(11) NOT NULL DEFAULT '0' COMMENT '商品所在店铺ID',
  `GoodsId` int(11) NOT NULL DEFAULT '0' COMMENT '商品ID',
  `GoodsName` varchar(200) NOT NULL COMMENT '商品名称',
  `GoodsShortDesc` varchar(200) DEFAULT NULL COMMENT '商品简介',
  `ThumbImg` varchar(100) DEFAULT NULL COMMENT '缩略图路径',
  `Price` float NOT NULL DEFAULT '0' COMMENT '商品单价',
  `Count` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.classification
DROP TABLE IF EXISTS `classification`;
CREATE TABLE IF NOT EXISTS `classification` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL COMMENT '类别名称',
  `ThumbImg` varchar(100) DEFAULT NULL COMMENT '类别缩略图',
  `Description` varchar(200) DEFAULT NULL COMMENT '类别描述',
  `Path` varchar(50) NOT NULL COMMENT '类别路径 如有多级用“.”风格',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.even
DROP TABLE IF EXISTS `even`;
CREATE TABLE IF NOT EXISTS `even` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL COMMENT '活动名称',
  `ThumbImg` varchar(100) DEFAULT NULL COMMENT '缩略图路径',
  `BannerImg` varchar(100) DEFAULT NULL COMMENT '宣传图片路径',
  `Description` text COMMENT '活动简介',
  `HomeUrl` varchar(100) NOT NULL COMMENT '活动页面URL 可以是自定义页面 或者标准模板页面',
  `Param` text COMMENT '参数, json对象格式 ',
  `MinCount` int(6) DEFAULT '0' COMMENT '最少参加人数',
  `MaxCount` int(6) DEFAULT '100000' COMMENT '最大参加人数',
  `CheckInCount` int(6) DEFAULT '0' COMMENT '已报名人数',
  `StartDate` datetime DEFAULT NULL COMMENT '开始日期',
  `ExpiredDate` datetime DEFAULT '9999-12-31 00:00:00' COMMENT '结束日期',
  `Status` tinyint(1) DEFAULT '1' COMMENT '活动状态 0: 未开始 1: 开放 2: 结束',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.event_user
DROP TABLE IF EXISTS `event_user`;
CREATE TABLE IF NOT EXISTS `event_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `EventId` int(11) NOT NULL COMMENT '活动ID',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `UserName` varchar(100) DEFAULT '0' COMMENT '用户昵称',
  `AvatarImg` varchar(100) DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`Id`),
  KEY `EventId` (`EventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.goods
DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StoreId` int(11) NOT NULL COMMENT '商品所在店铺Id',
  `Name` varchar(200) NOT NULL COMMENT '商品名称',
  `ClassificationId` int(11) NOT NULL COMMENT '分类编号',
  `OriginalPrice` float NOT NULL COMMENT '原价',
  `RetailPrice` float NOT NULL COMMENT '现价',
  `ThumbImg` varchar(100) NOT NULL COMMENT '商品缩略图',
  `ShortDescription` varchar(200) DEFAULT NULL COMMENT '商品简介',
  `Description` text COMMENT '商品详情',
  `Quantity` int(11) NOT NULL COMMENT '产品总库存数量',
  `SellQuantity` int(11) NOT NULL COMMENT '销量　',
  `Status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '０：下架，１：上架',
  PRIMARY KEY (`Id`),
  KEY `StoreId` (`StoreId`),
  KEY `ClassificationId` (`ClassificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.goods_comment
DROP TABLE IF EXISTS `goods_comment`;
CREATE TABLE IF NOT EXISTS `goods_comment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `GoodsId` int(11) NOT NULL COMMENT '商品ID',
  `Time` datetime NOT NULL COMMENT '评论时间',
  `Author` varchar(50) NOT NULL COMMENT '评论者',
  `Score` tinyint(4) DEFAULT NULL COMMENT '评分 1-5',
  `Content` varchar(500) DEFAULT NULL COMMENT '评价内容',
  PRIMARY KEY (`Id`),
  KEY `GoodsId` (`GoodsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.goods_img
DROP TABLE IF EXISTS `goods_img`;
CREATE TABLE IF NOT EXISTS `goods_img` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `GoodsId` int(11) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `ImgType` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: 标题图片 1: 描述图片',
  `ImgOrder` int(2) NOT NULL DEFAULT '0' COMMENT '图片显示顺序',
  `ImgPath` varchar(100) DEFAULT '0' COMMENT '图片路径',
  PRIMARY KEY (`Id`),
  KEY `GoodsId` (`GoodsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.order
DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `OrderTime` datetime NOT NULL COMMENT '下单时间',
  `OrderNumber` varchar(20) NOT NULL COMMENT '订单号 以系统时间加随机数为基础生成',
  `TotalPrice` float NOT NULL COMMENT '订单总金额',
  `PayPoint` int(11) NOT NULL DEFAULT '0' COMMENT '实际应支付积分',
  `PayAmount` float NOT NULL DEFAULT '0' COMMENT '实际应支付金额',
  `PaymentType` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付方式 0: 微信支付 1: 支付宝 2: 货到付款',
  `ExpressType` tinyint(1) NOT NULL DEFAULT '0' COMMENT '快递方式 0: 普通快递  1: 上门取货',
  `ExpressNumber` varchar(50) DEFAULT NULL COMMENT '运单号',
  `ExpressPrice` float NOT NULL DEFAULT '0' COMMENT '运费',
  `AddressId` int(11) DEFAULT NULL COMMENT '收件人收货地址Id',
  `Remarks` varchar(500) DEFAULT NULL COMMENT '备注',
  `Status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: 待付款 1: 待发货 2: 待收货 3: 已完成 4: 交易取消 5: 已退货',
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.order_detail
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE IF NOT EXISTS `order_detail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OrderId` int(11) NOT NULL DEFAULT '0' COMMENT '订单ID',
  `StoreId` int(11) NOT NULL DEFAULT '0' COMMENT '商品所在店铺ID',
  `GoodsId` int(11) NOT NULL DEFAULT '0' COMMENT '商品ID',
  `GoodsName` varchar(200) NOT NULL COMMENT '商品名称',
  `GoodsShortDesc` varchar(200) DEFAULT NULL COMMENT '商品简介',
  `Price` float NOT NULL COMMENT '商品单价',
  `Count` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
  `ThumbImg` varchar(100) DEFAULT NULL COMMENT '缩略图路径',
  PRIMARY KEY (`Id`),
  KEY `OrderId` (`OrderId`),
  KEY `StoreId` (`StoreId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.recommendation
DROP TABLE IF EXISTS `recommendation`;
CREATE TABLE IF NOT EXISTS `recommendation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` tinyint(1) DEFAULT NULL COMMENT '推荐类型 0:首页轮换 1: 一级推荐 2: 二级推荐',
  `BannerImg` varchar(100) DEFAULT NULL COMMENT '宣传图片路径',
  `ThumbImg` varchar(100) DEFAULT NULL COMMENT '缩略图路径',
  `Name` varchar(200) DEFAULT NULL COMMENT '名称',
  `URL` varchar(100) DEFAULT NULL COMMENT 'URL路径 链接到相应商品，活动或店铺页面',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.store
DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL COMMENT '店铺名称',
  `ThumbImg` varchar(100) DEFAULT NULL COMMENT '缩略图路径',
  `BannerImg` varchar(100) DEFAULT NULL COMMENT '宣传图片路径',
  `Description` text COMMENT '店铺简介',
  `HomeUrl` varchar(100) DEFAULT NULL COMMENT '店铺页面URL 可以是自定义页面 或者标准模板页面',
  `Param` text COMMENT '参数, json对象格式， 传入homeURL页面',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.store_user
DROP TABLE IF EXISTS `store_user`;
CREATE TABLE IF NOT EXISTS `store_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `StoreId` int(11) NOT NULL COMMENT '店铺ID',
  `Role` tinyint(4) NOT NULL DEFAULT '1' COMMENT '权限 0: 掌柜 1: 小二',
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `OpenID` varchar(100) DEFAULT NULL COMMENT '微信Open ID',
  `Name` varchar(100) DEFAULT NULL COMMENT '用户昵称',
  `AvatarImg` varchar(100) DEFAULT NULL COMMENT '用户头像',
  `Phone` varchar(50) DEFAULT NULL COMMENT '电话号码',
  `Sex` tinyint(1) DEFAULT NULL COMMENT '性别 0: 女性 1: 男性',
  `RegTime` datetime DEFAULT NULL COMMENT '注册时间',
  `TotalPoints` int(11) DEFAULT '0' COMMENT '总积分',
  `LastCheckInDate` datetime DEFAULT NULL COMMENT '上次签到日期',
  `ContinuousCheckInDays` int(2) DEFAULT NULL COMMENT '连续签到次数',
  `Status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-激活； 1 禁用',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.user_address
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE IF NOT EXISTS `user_address` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL DEFAULT '0' COMMENT '用户Id',
  `Address` varchar(100) DEFAULT '0' COMMENT '收货地址',
  `Province` varchar(20) DEFAULT '0' COMMENT '省',
  `City` varchar(20) DEFAULT '0' COMMENT '城市',
  `ConsigneeName` varchar(50) DEFAULT '0' COMMENT '收货人姓名',
  `ConsigneePhone` varchar(20) DEFAULT '0' COMMENT '收货人电话',
  `IsDefault` int(11) NOT NULL DEFAULT '0' COMMENT '是否默认地址 0: 否 1: 是',
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.user_favorite
DROP TABLE IF EXISTS `user_favorite`;
CREATE TABLE IF NOT EXISTS `user_favorite` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `Type` tinyint(1) DEFAULT NULL COMMENT '0: 店铺 1: 活动 2: 商品',
  `Name` varchar(200) DEFAULT NULL COMMENT '店铺，活动 或商品名称',
  `ThumbImg` varchar(100) DEFAULT NULL COMMENT '头像',
  `Description` varchar(2000) DEFAULT NULL COMMENT '描述',
  `Url` varchar(100) DEFAULT NULL COMMENT '店铺，活动或商品 URL， 附加ID信息',
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table stsc2.user_points
DROP TABLE IF EXISTS `user_points`;
CREATE TABLE IF NOT EXISTS `user_points` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `Point` int(11) NOT NULL COMMENT '增减积分数',
  `ReasonCode` int(11) NOT NULL DEFAULT '0' COMMENT '来源 0: 签到 1: 积分卡 2: 管理员操作',
  `CreatedDate` datetime NOT NULL COMMENT '操作日期',
  `CreatedById` int(11) NOT NULL COMMENT '操作者',
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
