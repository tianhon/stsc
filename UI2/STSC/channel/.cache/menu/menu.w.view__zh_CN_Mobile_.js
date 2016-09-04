window.__justep.__ResourceEngine.loadCss([{url: '/v_35fdda9bf9134f24835d0d7262dbc6c1l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_6ba2707d64034242a08f9aca25724d5cl_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_2c7987fcbff542d986052d650832394fl_zh_CNs_d_m/system/components/comp2.min.js','/v_9ef677f67efb474eb7ac887e227b8745l_zh_CNs_d_m/system/core.min.js','/v_b91c464c37c94b0ba05a2f1a54563a87l_zh_CNs_d_m/system/common.min.js','/v_e87cbcde04a04d11bc1c9254602b13c9l_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
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
