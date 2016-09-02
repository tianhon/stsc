<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:m;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:112px;left:39px;"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="imgData" onCustomRefresh="imgDataCustomRefresh" idColumn="Id"> 
      <column label="ID" name="Id" type="String" xid="xid1"/>  
      <column label="ImgUrl" name="fImgUrl" type="String" xid="xid2"/>  
      <column label="Url" name="fUrl" type="String" xid="xid3"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="recommendData" onCustomRefresh="recommendDataCustomRefresh" idColumn="id"> 
      <column label="ID" name="id" type="String" xid="xid4"/>  
      <column label="图片" name="imgUrl" type="String" xid="xid5"/>  
      <column label="价格" name="Price" type="String" xid="xid6"/>  
      <column label="类型" name="Type" type="String" xid="xid7"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="goodsData" idColumn="Id" onCustomRefresh="goodsDataCustomRefresh"> 
      <column label="ID" name="Id" type="String" xid="xid8"/>  
      <column label="Url" name="imgUrl" type="String" xid="xid9"/>  
      <column label="价格" name="price" type="String" xid="xid10"/>  
      <column label="类型" name="type" type="String" xid="xid11"/>  
      <column label="标题" name="title" type="String" xid="xid12"/> 
    </div> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"> 
    <div class="x-panel-content x-bg-img"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents2"> 
        <div class="x-contents-content x-cards" xid="homeContent"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-has-iosstatusbar"
            xid="panel"> 
            <div class="x-panel-top" xid="top2"> 
              <div component="$UI/system/components/justep/titleBar/titleBar"
                class="x-titlebar" xid="titleBar1" title="生态商城"> 
                <div class="x-titlebar-left" xid="div1"/>  
                <div class="x-titlebar-title" xid="div2">生态商城</div>  
                <div class="x-titlebar-right reverse" xid="div3"/> 
              </div> 
            </div>  
            <div class="x-panel-content  x-scroll-view" xid="content2" _xid="C73498389380000139A529CCB68E13B1"
              style="bottom: 0px;"> 
              <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView"
                xid="scrollView1"> 
                <div class="x-content-center x-pull-down container" xid="div7"> 
                  <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i5"/>  
                  <span class="x-pull-down-label" xid="span5">下拉刷新...</span> 
                </div>  
                <div class="x-scroll-content" xid="div8"> 
                  <div component="$UI/system/components/justep/panel/panel"
                    class="panel panel-default x-card" xid="panel1"> 
                    <div component="$UI/system/components/bootstrap/carousel/carousel"
                      class="x-carousel carousel" xid="carousel1" auto="true"> 
                      <ol class="carousel-indicators" xid="ol1"/>  
                      <div class="x-contents carousel-inner" role="listbox"
                        component="$UI/system/components/justep/contents/contents"
                        active="0" slidable="true" wrap="true" swipe="true" xid="contentsImg"> 
                        <div class="x-contents-content" xid="content1"> 
                          <img class="image-wall x-imgBanner" bind-attr-src="$model.getImageUrl('./img/banner1.jpg')"/> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div component="$UI/system/components/justep/panel/panel"
                    class="panel panel-default x-card" xid="panel2"> 
                    <div component="$UI/system/components/bootstrap/row/row"
                      class="row x-menu"> 
                      <div class="col col-xs-4" xid="col14"> 
                        <div class="text-center bg-red" bind-click="openPageClick"
                          pagename="promotion"> 
                          <h5 class="text-white"><![CDATA[签到]]></h5> 
                        </div> 
                      </div>  
                      <div class="col col-xs-4" xid="col15"> 
                        <div class="text-center bg-red" xid="div5" bind-click="openPageClick"
                          pagename="dynamic"> 
                          <h5 class="text-white" xid="h511"><![CDATA[活动]]></h5> 
                        </div> 
                      </div>  
                      <div class="col col-xs-4" xid="col16"> 
                        <div class="text-center bg-red" xid="div6" bind-click="openPageClick"
                          pagename="contactUs"> 
                          <h5 class="text-white" xid="h512"><![CDATA[百科]]></h5> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div component="$UI/system/components/justep/panel/panel"
                    class="panel panel-default x-card" xid="panel3"> 
                    <div component="$UI/system/components/justep/list/list"
                      class="x-list" xid="list1" data="recommendData"> 
                      <ul class="x-list-template" xid="listTemplateUl1"> 
                        <li xid="li1"> 
                          <div component="$UI/system/components/bootstrap/row/row"
                            class="row x-recommended" xid="row2"> 
                            <div class="col col-xs-12" xid="col4"> 
                              <div xid="div4"> 
                                <span xid="span6" class="pull-left text-white x-flex"
                                  bind-text="&quot;￥&quot; + val(&quot;Price&quot;)"><![CDATA[推荐商品]]></span>  
                                <span xid="span7" class="pull-left x-flex"><![CDATA[]]></span>  
                                <span xid="span8" class="x-flex pull-left text-white"
                                  bind-text="val(&quot;Type&quot;)"/> 
                              </div>  
                              <img src="" alt="" xid="image3" bind-attr-src=" val(&quot;imgUrl&quot;)"
                                class="x-img1"/> 
                            </div> 
                          </div> 
                        </li> 
                      </ul> 
                    </div> 
                  </div>  
                  <div component="$UI/system/components/justep/panel/panel"
                    class="panel panel-default x-card" xid="panel4"> 
                    <h4 xid="h41" class="list-group-item text-black"><![CDATA[为您推荐]]></h4>  
                    <div component="$UI/system/components/justep/list/list"
                      class="x-list" xid="list4" data="goodsData"> 
                      <ul class="x-list-template" xid="listTemplateUl2"> 
                        <li xid="li3" class="col col-xs-6 tb-twoColList">
                          <div xid="div12"> 
                            <img src="" alt="" xid="image1" class="img-responsive media-object" bind-attr-src=' val("imgUrl")'/>
                          <div xid="div10" style="background-color:white;"><span xid="span11" bind-text='val("title")'></span></div><div xid="div13" style="background-color:white;"><span xid="span10" bind-text='"¥" + val("price")' class="text-danger"></span>
  <a xid="a2" class="pull-right"><![CDATA[+]]></a></div></div>
                        </li>
                      </ul> 
                    </div>
                  </div> 
                </div>  
                <div class="x-content-center x-pull-up" xid="div9"> 
                  <span class="x-pull-up-label" xid="span9">加载更多...</span> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div>  
        <div class="x-contents-content" xid="menuContent" onActive="menuContentActive"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="menuContainer" style="height:100%;width:100%;"/> 
        </div>  
        <div class="x-contents-content" xid="storeContent" onActive="storeContentActive"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="storeContainer" style="height:100%;width:100%;"/> 
        </div>
        <div class="x-contents-content" xid="aboutContent" onActive="aboutContentActive"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="aboutContainer" style="height:100%;width:100%;"/> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified x-card"
        tabbed="true" xid="buttonGroup1"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top active"
          label="首页" xid="homeBtn" icon="icon-home" target="homeContent"> 
          <i xid="i1" class="icon-home"/>  
          <span xid="span1">首页</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          label="分类" xid="menuBtn" icon="icon-grid" target="menuContent"> 
          <i xid="i2" class="icon-grid"/>  
          <span xid="span2">分类</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          label="购物车" xid="storeBtn" icon="icon-ios7-cart" target="storeContent"> 
          <i xid="i3" class="icon-ios7-cart"/>  
          <span xid="span3">购物车</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          label="我的" xid="aboutBtn" icon="icon-ios7-person" target="aboutContent"> 
          <i xid="i4" class="icon-ios7-person"/>  
          <span xid="span4">我的</span> 
        </a> 
      </div> 
    </div> 
  </div> 
</div>
