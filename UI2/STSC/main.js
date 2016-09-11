define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("./js/loadData");
	var restfulUtil = require("./js/util");
	
	var Model = function() {
		this.callParent();
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	// 菜单
	Model.prototype.menuContentActive = function(event) {
		this.loadContainer("menuContainer", "channel/menu.w");
	};
	// 商家
	Model.prototype.storeContentActive = function(event) {
		this.loadContainer("storeContainer", "channel/store.w");
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

		//var url = require.toUrl("./json/imgData.json");
		//allData.loadDataFromFile(url, event.source, true);
		//var url="http://localhost/STSC.Service/api/values/GetImg";
   
		var url=restfulUtil.customUrl("values/GetImg");
		$.ajax({
			type : "GET",
			dataType : "json",
			async: false,
			url : url,
			//data : option.param,
			success : function(data) {
                event.source.loadData(data);
			},
		    error : function(){
		    	alert("error");
		    }
			});
		
		var me = this;
		var carousel = this.comp("carousel1");
		event.source
				.each(function(obj) {
					var fImgUrl = require.toUrl(obj.row.val("fImgUrl"));
					var fUrl = require.toUrl(obj.row.val("fUrl"));
					if (me.comp('contentsImg').getLength() > obj.index) {
						$(carousel.domNode).find("img").eq(obj.index).attr({
							"src" : fImgUrl,
							"pagename" : fUrl
						});
						if (obj.index == 0) {
							localStorage
									.setItem("index_BannerImg_src", fImgUrl);
							localStorage.setItem("index_BannerImg_url", fUrl);
						}
					} else {
						carousel
								.add('<img src="'
										+ fImgUrl
										+ '" class="image-wall x-imgBanner" bind-click="openPageClick" pagename="'
										+ fUrl + '"/>');
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

	Model.prototype.goodsListClick = function(event) {
		var data = this.comp("goodsData");
		justep.Shell.showPage("detailed", {
			goodsID : data.getValue("Id")
		});
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

	Model.prototype.imgCartClick = function(event){
		alert("");
	};

	return Model;
});