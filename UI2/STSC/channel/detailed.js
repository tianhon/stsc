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

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	Model.prototype.imgDataCustomRefresh = function(event) {
		/*
		 * 1、加载轮换图片数据 2、根据goodsID过滤数据 3、修改对应图片的src
		 */
		var url = require.toUrl("../json/goodsDetailImgData.json");
		allData.loadDataFromFile(url, event.source, true);

		var carousel = this.comp("carousel1");
		event.source.each(function(obj) {
			var fImgUrl = require.toUrl(obj.row.val("fImgUrl"));
			if (obj.index == 0) {
				$(carousel.domNode).find("img").eq(0).attr({
					"src" : fImgUrl
				});
			} else {
				carousel.add('<img src="' + fImgUrl
						+ '" class="image-wall tb-img"/>');
			}
		});
	};

	Model.prototype.goodsDataCustomRefresh = function(event) {
		var url = require.toUrl("../json/Goods.json");
		allData.loadDataFromFile(url, event.source, true);
	};

	Model.prototype.customerReviewDataCustomRefresh = function(event){
		var url = require.toUrl("../json/customerReviewData.json");
		allData.loadDataFromFile(url, event.source, true);
	};
	
	//点击加入购物车按钮，调用fireEvent 将全局的购物车商品总数加1
	Model.prototype.btnAddCartClick = function(event){
//		var key ="Cart.TempData";
//		var value = { goodId: "1", shopId: "2" };
//		localStorage.setItem(key, JSON.stringify(value));
//		
//		var storage = localStorage.getItem(key);
//		var data= JSON.parse(storage);
//		alert(data["goodId"]);

		justep.Shell.fireEvent("onChangeCartTotalCount",{});
	};
	
	
	//跳转购物车页面
	Model.prototype.btnCartClick = function(event){
		justep.Shell.fireEvent("onStoreContent",{});
		justep.Shell.showMainPage();
	};
	
	return Model;
});
