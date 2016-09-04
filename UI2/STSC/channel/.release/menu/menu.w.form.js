define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/STSC/channel/menu'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c6jmmUr';
	this._flag_='44a5821188accef2300dced57532cd6b';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"className":{"define":"className","label":"一级菜单名","name":"className","relation":"className","type":"String"},"firstClassID":{"define":"firstClassID","label":"Id","name":"firstClassID","relation":"firstClassID","type":"String"},"imgUrl":{"define":"imgUrl","label":"图片","name":"imgUrl","relation":"imgUrl","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"rootClassDataCustomRefresh"},"idColumn":"firstClassID","limit":20,"xid":"rootClassData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"firstClassID":{"define":"firstClassID","label":"第一级目录的ID","name":"firstClassID","relation":"firstClassID","type":"String"},"goodsId":{"define":"goodsId","label":"ID","name":"goodsId","relation":"goodsId","type":"String"},"goodsName":{"define":"goodsName","label":"商品名称","name":"goodsName","relation":"goodsName","type":"String"},"imgUrl":{"define":"imgUrl","label":"图片","name":"imgUrl","relation":"imgUrl","type":"String"},"price":{"define":"price","label":"价格","name":"price","relation":"price","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"secondClassDataCustomRefresh"},"idColumn":"goodsId","limit":20,"xid":"secondClassData"});
}}); 
return __result;});