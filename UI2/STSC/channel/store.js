define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("../js/loadData");

	var Model = function() {
		this.callParent();
	};

	// 返回上一页
	Model.prototype.backBtnClick = function(event) {
		justep.Shell.closePage();
	};

	Model.prototype.getImageUrl = function(row) {
		return require.toUrl(row.val('imgSrc'));
	};

	Model.prototype.open = function(event) {
		var row = event.bindingContext.$object;
		var url = "../1/template.w";
		justep.Shell.showPage(require.toUrl(url), {
			rowid : row.val("id")
		});
	};

	Model.prototype.shopDataCustomRefresh = function(event){
		/*
		1、加载店铺数据
		 */
		var url = require.toUrl("../json/CartShops.json");
		allData.loadDataFromFile(url, event.source, true);
	};

	Model.prototype.goodsDataCustomRefresh = function(event){
	    var url = require.toUrl("../json/CartGoodsData.json");
		allData.loadDataFromFile(url, event.source, true);
	};

	Model.prototype.reductionBtnClick = function(event){
		/*
		1、减少数量按钮绑定点击事件onClick()
		2、点击按钮，当前记录的fNumber值减1
		3、fNumber为1时不再相减
		*/
		var row = event.bindingContext.$object;
		var n=row.val("fNumber");
		if(n===undefined){n=1;}
		if(n>1){
			row.val("fNumber",n-1);
		}
	};

	Model.prototype.addBtnClick = function(event){
		/*
		1、增加数量按钮绑定点击事件onClick()
		2、点击按钮，当前记录的fNumber值加1
		*/
		var row = event.bindingContext.$object;
		var n=row.val("fNumber");
		if(n===undefined){n=1;}
		row.val("fNumber",n+1);
	};

	Model.prototype.allChooseChange = function(event){
		/*
		1、全选多选框绑定变化事件onChange()
		2、点击全选多选框按钮，获取其值
		3、修改商品表中的fChoose字段为全选多选框按钮的值
		*/
		var goodsData = this.comp("goodsData");
		var choose=this.comp("allChoose").val();
		goodsData.each(function(obj){
			if(choose){				
				goodsData.setValue("fChoose","1",obj.row);
			} else {
				goodsData.setValue("fChoose","",obj.row);
			}	
		});
	};

	Model.prototype.delBtnClick = function(event){
		/*
		1、删除按钮点击事件
		2、删除选中商品
		3、如果商店里已经没有商品，则删除商店
		*/
		var goodsData = this.comp("goodsData");
		var goodsRows = goodsData.find(["fChoose"],["1"]);
		goodsData.deleteData(goodsRows);
  
		var shopData = this.comp("shopsData");
		var shopRows = new Array();
		shopData.each(function(obj){
			var n = goodsData.find(["fShopID"],[obj.row.val("id")]).length; 
			if(n == 0){
				shopRows.push(obj.row);
			}
		}); 
		shopData.confirmDelete = false;   
		shopData.deleteData(shopRows); 
	};

	return Model;
});