define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/STSC/channel/contactUs'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cMVZfE3';
	this._flag_='a1389f69c79c008ae277dd5e2098245c';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","label":"地址","name":"address","relation":"address","type":"String"},"companyName":{"define":"companyName","label":"companyName","name":"companyName","relation":"companyName","type":"String"},"email":{"define":"email","label":"邮箱","name":"email","relation":"email","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"postalCode":{"define":"postalCode","label":"邮编","name":"postalCode","relation":"postalCode","type":"String"},"tel":{"define":"tel","label":"电话","name":"tel","relation":"tel","type":"String"},"title":{"define":"title","label":"title","name":"title","relation":"title","type":"String"},"website":{"define":"website","label":"网址","name":"website","relation":"website","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","initData":"[{\"id\":\"1\",\"title\":\"联系我们\",\"companyName\":\"北京起步科技有限公司\",\"address\":\"北京市朝阳区东三环南路98号高和蓝峰大厦18层\",\"tel\":\"(010)2883925\",\"postalCode\":\"111111\",\"website\":\"http://www.justep.com\",\"email\":\"justep@justep.com.cn\"}]","limit":20,"xid":"data"});
}}); 
return __result;});