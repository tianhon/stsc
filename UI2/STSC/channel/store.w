<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:mobile">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:8px;left:183px;height:auto;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="shopsData" idColumn="id" onCustomRefresh="shopDataCustomRefresh"> 
      <column label="ID" name="id" type="String" xid="default1"></column>
  <column label="图片地址" name="imgUrl" type="String" xid="default2"></column>
  <column label="店铺名称" name="title" type="String" xid="xid1"></column>
  <data xid="default3">[{&quot;id&quot;:&quot;1&quot;,&quot;imgSrc&quot;:&quot;./img/pic1.jpg&quot;,&quot;name&quot;:&quot;HappyMiss鲜花饼烘焙坊&quot;,&quot;address&quot;:&quot;五华区东风西路顺城购物中心负一楼&quot;,&quot;tel&quot;:&quot;0871-65811882&quot;},{&quot;id&quot;:&quot;2&quot;,&quot;imgSrc&quot;:&quot;./img/pic2.jpg&quot;,&quot;name&quot;:&quot;莱茵家乐自助餐&quot;,&quot;address&quot;:&quot;五华区人民中路新西南商业大厦六楼 &quot;,&quot;tel&quot;:&quot;0871-65368687&quot;},{&quot;id&quot;:&quot;3&quot;,&quot;imgSrc&quot;:&quot;./img/pic3.jpg&quot;,&quot;name&quot;:&quot;优私呆素食自助&quot;,&quot;address&quot;:&quot;五华区祥云街59号银佳大厦19楼&quot;,&quot;tel&quot;:&quot;0871-63389883&quot;},{&quot;id&quot;:&quot;4&quot;,&quot;imgSrc&quot;:&quot;./img/pic4.jpg&quot;,&quot;name&quot;:&quot;城市花园&quot;,&quot;address&quot;:&quot;五华区正义路36号景星恒隆百货6楼&quot;,&quot;tel&quot;:&quot;0871-63633899&quot;},{&quot;id&quot;:&quot;5&quot;,&quot;imgSrc&quot;:&quot;./img/pic5.jpg&quot;,&quot;name&quot;:&quot;莱莎公爵泰国海鲜火锅&quot;,&quot;address&quot;:&quot;五华区威远街168号金鹰B座6楼6-02、6-03&quot;,&quot;tel&quot;:&quot;0871-63104908/63161001&quot;},{&quot;id&quot;:&quot;6&quot;,&quot;imgSrc&quot;:&quot;./img/pic6.jpg&quot;,&quot;name&quot;:&quot;芭堤雅泰国海鲜餐厅&quot;,&quot;address&quot;:&quot;五华区霖雨路101号&quot;,&quot;tel&quot;:&quot;0871-65123399&quot;},{&quot;id&quot;:&quot;7&quot;,&quot;imgSrc&quot;:&quot;./img/pic7.jpg&quot;,&quot;name&quot;:&quot;莲泰泰国料理（正义坊店）&quot;,&quot;address&quot;:&quot;五华区正义路正义坊购物中心北馆3楼&quot;,&quot;tel&quot;:&quot;0871-68128899&quot;},{&quot;id&quot;:&quot;8&quot;,&quot;imgSrc&quot;:&quot;./img/pic8.jpg&quot;,&quot;name&quot;:&quot;大哥笑自助烤肉&quot;,&quot;address&quot;:&quot;盘龙区人民东路196号（新文化宫美食广场B1楼）&quot;,&quot;tel&quot;:&quot;0871-63363537&quot;},{&quot;id&quot;:&quot;9&quot;,&quot;imgSrc&quot;:&quot;./img/pic9.jpg&quot;,&quot;name&quot;:&quot;优昙逻树素食餐厅&quot;,&quot;address&quot;:&quot;盘龙区欣都龙城V.CPark购物中心1栋2楼汉堡王旁边 &quot;,&quot;tel&quot;:&quot;18287163511&quot;}]</data></div> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="goodsData" onCustomRefresh="goodsDataCustomRefresh" idColumn="id"><column label="商品Id" name="id" type="String" xid="xid2"></column>
  <column label="商品名称" name="fTitle" type="String" xid="xid3"></column>
  <column label="价格" name="fPrice" type="Float" xid="xid4"></column>
  <column label="旧价格" name="fOldPrice" type="Float" xid="xid5"></column>
  <column label="商店Id" name="fShopID" type="String" xid="xid6"></column>
  <column label="图片地址" name="fImg" type="String" xid="xid7"></column>
  <column label="数量" name="fNumber" type="Integer" xid="xid8"></column>
  <column label="总价" name="fSum" type="Float" xid="xid9"></column>
  <column label="商品是否选中" name="fChoose" type="Integer" xid="xid10"></column>
  <rule xid="rule1">
   <col name="fSum" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default4">$row.val(&quot;fChoose&quot;) == 1 ? $row.val(&quot;fPrice&quot;) * $row.val(&quot;fNumber&quot;) : '0'</expr></calculate> </col> </rule></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="calculateData" idColumn="allSum" confirmDelete="false"><column label="总价" name="allSum" type="String" xid="xid11"></column>
  <column label="总量" name="allNumber" type="String" xid="xid12"></column>
  <column label="是否后退" name="isBack" type="String" xid="xid13"></column>
  <rule xid="rule2">
   <col name="allSum" xid="ruleCol2">
    <calculate xid="calculate2">
     <expr xid="default5">$model.goodsData.sum('fSum')</expr></calculate> </col> 
   <col name="allNumber" xid="ruleCol3">
    <calculate xid="calculate3">
     <expr xid="default6">$model.goodsData.sum(&quot;fChoose&quot;)</expr></calculate> </col> </rule>
  <data xid="default7">[{&quot;allSum&quot;:&quot;0&quot;,&quot;isBack&quot;:&quot;0&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card"> 
    <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="backBtn" icon="icon-chevron-left" bind-visible='$model.calculateData.val("isBack")==1' onClick="backBtnClick">
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span1"></span></a>
  </div>
   <div class="x-titlebar-title" xid="title1"><span xid="span14"><![CDATA[购物车（]]></span><span xid="span17" bind-text="goodsData.count()"></span>
  <span xid="span16"><![CDATA[）]]></span></div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="icon-trash-a" onClick="delBtnClick">
   <i xid="i2" class="icon-trash-a"></i>
   <span xid="span2"></span></a>
  </div>
  </div></div><div class="x-panel-content x-scroll-view x-cards" _xid="C73806DAA1B000012FD51440DF2018C9" style="top: 48px; bottom: 48px;"> 
      <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div4">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"></i>
    <span class="x-pull-down-label" xid="span18">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div5"><div component="$UI/system/components/justep/list/list" class="x-list" xid="shopList" data="shopsData" dataItemAlias="shopRow">
   <ul class="x-list-template x-min-height" xid="listTemplateUl1">
    <li xid="li1" class="panel panel-default x-card tb-box"><div xid="div7" class="panel-heading"><i xid="i5" class="icon-chevron-right"></i><img src="" alt="" xid="image1" class="img-circle tb-img-shop" bind-attr-src='val("imgUrl")'></img>
  
  <span xid="span20" bind-text='ref("title")'></span></div>
  <div component="$UI/system/components/justep/list/list" class="x-list bg-white" xid="goodsList" data="goodsData" filter="$row.val('fShopID')==shopRow.val('id')">
   <ul class="x-list-template x-min-height" xid="listTemplateUl2" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl2">
    <li xid="li2" class="x-min-height tb-goodList" componentname="li(html)" id="undefined_li2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-fixed x-col-center" xid="col4" style="width:auto;"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox x-radio choose" xid="checkbox2" checkedValue="1" bind-ref='ref("fChoose")'></span></div>
   <div class="x-col x-col-fixed tb-nopadding" xid="col5" style="width:90px;"><img src="" alt="" xid="image2" class="tb-img-good" bind-attr-src=' val("fImg")'></img></div>
   <div class="x-col  tb-nopadding" xid="col6"><span xid="span21" bind-text='ref("fTitle")' class="x-flex text-black h5 tb-nomargin"></span>
  <div xid="div8" class="text-muted"><span xid="span22" class="text-danger"><![CDATA[￥]]></span>
  <span xid="span23" class="h4 text-danger" bind-text='ref("fPrice")'></span>
  <span xid="span24" class="tb-del-line"><![CDATA[￥]]></span>
  <span xid="span25" class="tb-del-line" bind-text='ref("fOldPrice")'></span></div>
  <div xid="div9" class="tb-numberOperation"><a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-left" label="button" xid="button3" icon="icon-android-remove" onClick="reductionBtnClick">
   <i xid="i4" class="icon-android-remove"></i>
   <span xid="span26"></span></a>
  <span xid="span27" class="pull-left" bind-text='ref("fNumber")'></span>
  <a component="$UI/system/components/justep/button/button" class="btn x-gray btn-sm btn-only-icon pull-left" label="button" xid="button4" icon="icon-android-add" onClick="addBtnClick">
   <i xid="i6" class="icon-android-add"></i>
   <span xid="span28"></span></a></div>
  </div></div></li></ul> </div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div6">
    <span class="x-pull-up-label" xid="span19">加载更多...</span></div> </div></div> 
  <div class="x-panel-bottom" xid="bottom1"><div component="$UI/system/components/justep/row/row" class="x-row tb-nopadding" xid="row1">
   <div class="x-col x-col-20 x-col-center" xid="col1"><span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="allChoose" label="全选" checked="false" onChange="allChooseChange"></span></div>
   <div class="x-col" xid="col2"><div xid="div1" class="text-right"><span xid="span3" class="text-muted"><![CDATA[合计：]]></span>
  <span xid="span4" class="text-danger"><![CDATA[￥]]></span>
  <span xid="sum" class="h4 text-danger" bind-text="$model.goodsData.sum('fSum')"></span></div>
  <div xid="div3" class="text-right"><span xid="span6"><![CDATA[不含运费]]></span></div></div>
   <div class="x-col x-col-33 text-center tb-settlement" xid="col3"><span xid="span7"><![CDATA[结算（]]></span>
  <span xid="number" bind-text='$model.goodsData.sum("fChoose")'></span>
  <span xid="span10"><![CDATA[）]]></span></div></div></div></div> 
</div>
