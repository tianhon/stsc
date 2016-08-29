define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowContainer/windowContainer');
require('$model/UI2/system/components/bootstrap/carousel/carousel');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/stsc/STSC/main'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cVN3uim';
	this._flag_='3e298c8b4238f0c2e9c30c82160f724d';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Id":{"define":"Id","label":"ID","name":"Id","relation":"Id","type":"String"},"fImgUrl":{"define":"fImgUrl","label":"ImgUrl","name":"fImgUrl","relation":"fImgUrl","type":"String"},"fUrl":{"define":"fUrl","label":"Url","name":"fUrl","relation":"fUrl","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"imgDataCustomRefresh"},"idColumn":"Id","limit":20,"xid":"imgData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Price":{"define":"Price","label":"价格","name":"Price","relation":"Price","type":"String"},"Type":{"define":"Type","label":"类型","name":"Type","relation":"Type","type":"String"},"id":{"define":"id","label":"ID","name":"id","relation":"id","type":"String"},"imgUrl":{"define":"imgUrl","label":"图片","name":"imgUrl","relation":"imgUrl","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"recommendDataCustomRefresh"},"idColumn":"id","limit":20,"xid":"recommendData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Id":{"define":"Id","label":"ID","name":"Id","relation":"Id","type":"String"},"imgUrl":{"define":"imgUrl","label":"Url","name":"imgUrl","relation":"imgUrl","type":"String"},"price":{"define":"price","label":"价格","name":"price","relation":"price","type":"String"},"title":{"define":"title","label":"标题","name":"title","relation":"title","type":"String"},"type":{"define":"type","label":"类型","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"goodsDataCustomRefresh"},"idColumn":"Id","limit":20,"xid":"goodsData"});
}}); 
return __result;});