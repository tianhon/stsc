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
		var url = "../2/template.w";
		justep.Shell.showPage(require.toUrl(url), {
			rowid : row.val("id")
		});
	};

	Model.prototype.rootClassDataCustomRefresh = function(event) {
		var url = require.toUrl("../json/firstClass.json");
		allData.loadDataFromFile(url, event.source, true);
	};

	Model.prototype.secondClassDataCustomRefresh = function(event) {
		var url = require.toUrl("../json/second1.json");
		allData.loadDataFromFile(url, event.source, true);
	};

	Model.prototype.rootClassListClick = function(event) {

		var rootClassId = this.comp("rootClassData").getValue("firstClassID");
		var source = this.comp("secondClassData");

		// 粮 类别不需要重新加载
		if (rootClassId == "1")
			return;

		var url = require.toUrl("../json/second" + rootClassId + ".json");
		var isExist = isClassExist(source, rootClassId);
		if (!isExist) {
			$.ajaxSettings.async = false;
			$.getJSON(url, function(data) {
				source.loadData(data, true);
			})
		}
	};

	function isClassExist(source, rootClassId) {
		var existRows = source.find([ "firstClassID" ], [ rootClassId ]);
		if (existRows.length === 0) {
			return false;
		}
		return true;
	}

	return Model;
});
