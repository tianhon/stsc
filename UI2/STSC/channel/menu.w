<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:mobile">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="rootClassData" onCustomRefresh="rootClassDataCustomRefresh" idColumn="firstClassID"><column label="Id" name="firstClassID" type="String" xid="xid1"></column>
  <column label="图片" name="imgUrl" type="String" xid="xid2"></column>
  <column label="一级菜单名" name="className" type="String" xid="xid3"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="secondClassData" idColumn="goodsId" onCustomRefresh="secondClassDataCustomRefresh"><column label="ID" name="goodsId" type="String" xid="xid4"></column>
  <column label="图片" name="imgUrl" type="String" xid="xid5"></column>
  <column label="商品名称" name="goodsName" type="String" xid="xid6"></column>
  <column label="第一级目录的ID" name="firstClassID" type="String" xid="xid7"></column>
  <column label="价格" name="price" type="String" xid="xid8"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card"> 
    <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="分类">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" icon="icon-chevron-left">
   <i xid="i2" class="icon-chevron-left"></i>
   <span xid="span3"></span></a></div>
   <div class="x-titlebar-title" xid="title1">分类</div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="icon-search">
   <i xid="i1" class="icon-search"></i>
   <span xid="span2"></span></a></div>
  </div></div>
  <div class="x-panel-content x-cards" xid="content1"><div component="$UI/system/components/bootstrap/row/row" class="row tb-box" xid="row2">
   <div class="col col-xs-3" xid="col4"><div component="$UI/system/components/justep/list/list" class="x-list" xid="rootClassList" data="rootClassData" bind-click="rootClassListClick">
   <ul class="x-list-template list-group" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item text-center tb-nopadding" bind-css="{'current':$object.val('firstClassID')==$model.rootClassData.val('firstClassID')}">
<!--     <h5 xid="h51" class="text-black" bind-text='val("className")'><![CDATA[]]></h5> -->
  <img src="" alt="" xid="image2" class="img-responsive media-object  text-center" bind-attr-src=' val("imgUrl")'></img></li></ul> </div></div>
   <div class="col col-xs-9  x-scroll-view" xid="col5">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" autoPullUp="true" autoAppend="true">
   <div class="x-content-center x-pull-down container" xid="div4">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i3"></i>
    <span class="x-pull-down-label" xid="span6">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div5"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="secondClassData" filter="$row.val('firstClassID') == $model.rootClassData.val('firstClassID')" limit="10">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="li2" class="col col-xs-6 text-center tb-listBox text-black"><div xid="div1"><img src="" alt="" xid="image1" class="img-responsive media-object" bind-attr-src=' val("imgUrl")'></img>
  <div xid="div2" style="background-color:white;"><span xid="span4" bind-text='val("goodsName")'></span></div>
  <div xid="div3" style="background-color:white;"><span xid="span5" class="text-danger" bind-text='"￥"+val("price")'><![CDATA[]]></span></div></div></li></ul> 
  </div></div>
   <div class="x-content-center x-pull-up" xid="div6">
    <span class="x-pull-up-label" xid="span7">加载更多...</span></div> </div></div>
   </div></div></div> 
</div>
