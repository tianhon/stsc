window.__justep.__ResourceEngine.loadCss([{url: '/v_6a624780ccac4b2293a1efff90d0f131l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_507593955309418e81fde83222d278eal_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_3c6e0e9ff4394b20b9d8eac71dfb3a62l_zh_CNs_d_m/system/components/comp2.min.js','/v_d926689052c14729af46861d3f136930l_zh_CNs_d_m/system/core.min.js','/v_5ef3c815a6bb429db113271caa13f252l_zh_CNs_d_m/system/common.min.js','/v_caacaa3397f04afeb319ace705042229l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
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
