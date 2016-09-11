<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" xid="window" design="device:mobile">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:36px;left:85px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="imgData" onCustomRefresh="imgDataCustomRefresh" idColumn="Id"> 
      <column label="ID" name="Id" type="String" xid="xid1"/>  
      <column label="ImgUrl" name="fImgUrl" type="String" xid="xid2"/>  
      <column label="Url" name="fUrl" type="String" xid="xid3"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="Id" onCustomRefresh="goodsDataCustomRefresh"> 
      <column label="ID" name="Id" type="String" xid="xid8"/>  
      <column label="Url" name="imgUrl" type="String" xid="xid9"/>  
      <column label="价格" name="price" type="String" xid="xid10"/>  
      <column label="类型" name="type" type="String" xid="xid11"/>  
      <column label="标题" name="title" type="String" xid="xid12"/>  
      <column label="商品详情" name="detail" type="String" xid="xid7"/>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="customerReviewData" idColumn="id" onCustomRefresh="customerReviewDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="xid3"/>  
      <column label="用户名" name="fUserName" type="String" xid="xid4"/>  
      <column label="评分" name="fScore" type="Float" xid="xid5"/>  
      <column label="评论内容" name="fContent" type="String" xid="xid6"/>  
      <column label="评论日期" name="fDate" type="Date" xid="xid8"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-card x-full x-has-iosstatusbar"> 
    <div class="x-panel-top"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="商品详情"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="backBtnClick"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span/> 
          </a> 
        </div>  
        <div class="x-titlebar-title">商品详情</div>  
        <div class="x-titlebar-right reverse"/> 
      </div> 
    </div>  
    <div class="x-panel-content x-cards tb-trans"> 
      <div component="$UI/system/components/bootstrap/carousel/carousel" class="x-carousel carousel"
        xid="carousel1"> 
        <ol class="carousel-indicators" xid="ol1"/>  
        <div class="x-contents carousel-inner" role="listbox" component="$UI/system/components/justep/contents/contents"
          active="0" slidable="true" wrap="true" swipe="true" routable="false" xid="contents1"> 
          <div class="x-contents-content" xid="content1"> 
            <img src="$UI/demo/taobao/main/img/carouselBox61.jpg" alt="" xid="image1"
              class="image-wall tb-img"/> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card panel-body"> 
        <div component="$UI/system/components/bootstrap/row/row" class="row tb-nopadding"> 
          <div class="col col-xs-10  tb-nopadding" xid="col8"> 
            <h4 xid="h41" class=" text-black" bind-text="$model.goodsData.ref(&quot;title&quot;)"><![CDATA[]]></h4>  
            <div xid="div4"> 
              <span xid="span17" class="text-danger h3"><![CDATA[￥]]></span>  
              <span xid="span29" bind-text="$model.goodsData.ref(&quot;price&quot;)" class="text-danger h3"/> 
            </div>  
            <div xid="div5" class="text-muted"> 
              <span xid="span19"><![CDATA[价格：]]></span>  
              <span xid="span18" class="tb-text-del">￥</span>  
              <span xid="span13" bind-text="$model.goodsData.ref(&quot;price&quot;)" class="tb-text-del"/> 
            </div> 
          </div>  
          <div class="col col-xs-2  tb-nopadding" xid="col9"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top pull-right tb-nopadding"
              label="分享" xid="shareBtn" icon="icon-android-share"> 
              <i xid="i10" class="text-success icon-android-share"/>  
              <span xid="span10" class="text-success">分享</span> 
            </a> 
          </div> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card panel-body"> 
        <h4 xid="h42" class="text-black goodsActive"><![CDATA[图文详情]]></h4><div bind-html=" $model.goodsData.val(&quot;detail&quot;)"/>
      </div>
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row"
        xid="row"> 
        <div class="col col-xs-5 tb-nopadding" xid="col1"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
              label="购物车" xid="button1" icon="icon-ios7-cart"> 
              <i xid="i1" class="icon-ios7-cart"/>  
              <span xid="span1">购物车</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
              label="收藏" xid="button2" icon="icon-ios7-heart-outline"> 
              <i xid="i2" class="icon-ios7-heart-outline"/>  
              <span xid="span2">收藏</span> 
            </a> 
          </div> 
        </div>  
        <div class="col col-xs-7 tb-nopadding" xid="col2"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified tb-shopping " tabbed="true" xid="buttonGroup2"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="加入购物车" xid="button3"> 
              <i xid="i3"/>  
              <span xid="span3">加入购物车</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="立即购买" xid="button4"> 
              <i xid="i4"/>  
              <span xid="span4">立即购买</span> 
            </a> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
