define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/STSC/channel/promotion'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='czqqqai';
	this._flag_='a67791f391f0f9d84d857b484dc363a8';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","label":"title","name":"title","relation":"title","type":"String"},"titleImg":{"define":"titleImg","label":"titleImg","name":"titleImg","relation":"titleImg","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"title\":\"新旗舰即将发布 HTC One Max售4060元\",\"titleImg\":\"./img/5-1.jpg\"},{\"id\":\"2\",\"title\":\"顶配版Galaxy S5曝光：4G内存/64位处理器\",\"titleImg\":\"./img/5-2.jpg\"},{\"id\":\"3\",\"title\":\"WP8系统最强手机 诺基亚1520仅售3610\",\"titleImg\":\"./img/5-3.jpg\"},{\"id\":\"4\",\"title\":\"3G一样很快捷 三星Note 3 N9008售3800\",\"titleImg\":\"./img/5-4.jpg\"},{\"id\":\"5\",\"title\":\"2014款HTC One再曝光：外观参数已无悬念\",\"titleImg\":\"./img/5-5.jpg\"},{\"id\":\"6\",\"title\":\"高性能防水4G手机 索尼L39t售3799元\",\"titleImg\":\"./img/5-6.jpg\"},{\"id\":\"7\",\"title\":\"双卡双待入门级手机 索尼Xperia E1亮相\",\"titleImg\":\"./img/5-7.jpg\"},{\"id\":\"8\",\"title\":\"iOS 7.1新增应用内购买15分钟免输密码提醒\",\"titleImg\":\"./img/5-8.jpg\"},{\"id\":\"9\",\"title\":\"实用是真理 2500元级2GB RAM四核机推荐\",\"titleImg\":\"./img/5-10.jpg\"}]","limit":20,"xid":"data"});
}}); 
return __result;});