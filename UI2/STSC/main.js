define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("./js/loadData");
	var restfulUtil = require("./js/util");

	var Model = function() {
		this.callParent();

		// 定义全局变量
		this.lastContentXid = "homeContent";
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	// 分类页面激活事件
	Model.prototype.menuContentActive = function(event) {
		this.loadContainer("menuContainer", "channel/menu.w");
	};

	// 购物车页面激活事件
	Model.prototype.storeContentActive = function(event) {
		this.loadContainer("storeContainer", "channel/store.w");
	};

	// 购物车页面离开事件
	Model.prototype.storeContentInactive = function(event) {
		// 1、获取子页面Model 2、调用子页面的函数showBackBtn，设置返回按钮显否显示
		var model = this.comp("storeContainer").getInnerModel();
		if (model) {
			model.showBackBtn(false);
		}
	};

	// 关于
	Model.prototype.aboutContentActive = function(event) {
		this.loadContainer("aboutContainer", "channel/about.w");
	};
	Model.prototype.loadContainer = function(container, url) {
		var container = this.comp(container);
		var src = container.get("src");
		if (src != url) {
			container.set({
				"src" : url
			});
			container.refresh();
		}
	};

	// 促销活动
	Model.prototype.openPageClick = function(event) {
		var pageName = $(event.currentTarget).attr("pagename");
		justep.Shell.showPage(pageName);
	};

	// 菜单详细
	Model.prototype.menuDetailedClick = function(event) {
		justep.Shell.showPage("detailed");
	};
	// 店铺详细
	Model.prototype.storeDetailedClick = function(event) {
		justep.Shell.showPage("detailed");
	};

	Model.prototype.imgDataCustomRefresh = function(event) {
		/*
		 * 1、加载轮换图片数据 2、根据data数据动态添加carouse组件中的content页面 3、如果img已经创建了，只修改属性
		 * 4、第一张图片信息存入localStorage
		 */

		var url = require.toUrl("./json/imgData.json");
		allData.loadDataFromFile(url, event.source, true);

		// var url="http://localhost/STSC.Service/api/values/GetImg";
		// var url=restfulUtil.customUrl("values/GetImg");
		// $.ajax({
		// type : "GET",
		// dataType : "json",
		// async: false,
		// url : url,
		// //data : option.param,
		// success : function(data) {
		// event.source.loadData(data);
		// },
		// error : function(){
		// alert("error");
		// }
		// });

		var me = this;
		var carousel = this.comp("carousel1");
		event.source.each(function(obj) {
			var fImgUrl = require.toUrl(obj.row.val("fImgUrl"));
			var fUrl = require.toUrl(obj.row.val("fUrl"));
			if (me.comp('contentsImg').getLength() > obj.index) {
				$(carousel.domNode).find("img").eq(obj.index).attr({
					"src" : fImgUrl,
					"pagename" : fUrl
				});
				if (obj.index == 0) {
					localStorage.setItem("index_BannerImg_src", fImgUrl);
					localStorage.setItem("index_BannerImg_url", fUrl);
				}
			} else {
				carousel.add('<img src="' + fImgUrl + '" class="image-wall x-imgBanner" bind-click="openPageClick" pagename="' + fUrl + '"/>');
			}
		});
	};

	Model.prototype.recommendDataCustomRefresh = function(event) {
		var url = require.toUrl("./json/TotalData.json");
		allData.loadDataFromFile(url, event.source, true);
	};

	Model.prototype.goodsDataCustomRefresh = function(event) {
		var url = require.toUrl("./json/Goods.json");
		allData.loadDataFromFile(url, event.source, true);
	};

	Model.prototype.scrollViewPullDown = function(event) {
		this.comp("imgData").refreshData();
	};

	Model.prototype.recommendListClick = function(event) {
		var data = this.comp("goodsData");
		justep.Shell.showPage("detailed", {
			goodsID : data.getValue("Id")
		});
	};

	Model.prototype.listClick = function(event) {
		var data = this.comp("goodsData");
		justep.Shell.showPage("detailed", {
			goodsID : data.getValue("Id")
		});
	};

	Model.prototype.imgCartClick = function(event) {
		alert("");
	};

	// 添加事件
	Model.prototype.modelLoad = function(event) {
		justep.Shell.on("onRestoreContent", this.onRestoreContent, this);
		justep.Shell.on("onStoreContent", this.onStoreContent, this);
		justep.Shell.on("onHomeContent", this.onHomeContent, this);
		justep.Shell.on("onChangeCartTotalCount", this.onChangeCartTotalCount, this);
	};

	// 卸载事件
	Model.prototype.modelUnLoad = function(event) {
		justep.Shell.off("onRestoreContent", this.onRestoreContent);
		justep.Shell.off("onStoreContent", this.onStoreContent);
		justep.Shell.off("onHomeContent", this.onHomeContent);
		justep.Shell.off("onChangeCartTotalCount", this.onChangeCartTotalCount, this);
	};

	// 返回上一次的content
	Model.prototype.onRestoreContent = function(event) {
		this.comp("contents2").to(this.lastContentXid);
	};

	// 记住当前content，切换到购物车页
	Model.prototype.onStoreContent = function(event) {
		this.lastContentXid = this.comp("contents2").getActiveXid();
		this.comp("contents2").to("storeContent");
		var storeModel = this.comp("storeContainer").getInnerModel();
		if (storeModel) {
			storeModel.showBackBtn(true);
		}
	};

	// 切换到首页
	Model.prototype.onHomeContent = function(event) {
		this.comp("contents2").to("homeContent");
	};

	// 更改购物车商品总数事件
	Model.prototype.onChangeCartTotalCount = function(event) {
		var totalCount = this.comp("globalData").getValue("cartTotalCount");
		totalCount++;
		this.comp("globalData").setValue("cartTotalCount", totalCount);
	};

	return Model;
});