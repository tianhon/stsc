<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:m;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:71px;left:12px;" onLoad="modelLoad" onunLoad="modelUnLoad"> 
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
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="globalData" idColumn="cartTotalCount">
      <column label="购物车商品总数" name="cartTotalCount" type="Integer" xid="xid14"/>  
      <data xid="default1">[{"cartTotalCount":0}]</data>
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
                xid="scrollView" onPullDown="scrollViewPullDown"> 
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
                    <table class="table tb-menu" component="$UI/system/components/bootstrap/table/table"
                      xid="table1"> 
                      <tbody class="x-list-template" xid="listTemplate2"> 
                        <tr xid="tr1"> 
                          <td bind-click="openPageClick" pagename="./list.w"
                            xid="td1"> 
                            <div class="text-center" xid="div2"> 
                              <img src="./img/menu_checkin_n.png" alt="" xid="image3"
                                class="img-responsive center-block tb-img5"/>  
                              <span xid="span7"><![CDATA[签到]]></span> 
                            </div> 
                          </td>  
                          <td bind-click="openPageClick" pagename="./list.w"
                            xid="td2"> 
                            <div class="text-center" xid="div3"> 
                              <img src="./img/menu_event_01.png" alt="" xid="image1"
                                class="img-responsive center-block tb-img5"/>  
                              <span xid="span9"><![CDATA[活动]]></span> 
                            </div> 
                          </td>  
                          <td bind-click="openPageClick" pagename="./list.w"
                            xid="td3"> 
                            <div class="text-center" xid="div4"> 
                              <img src="./img/menu_order_n.png" alt="" xid="image2"
                                class="img-responsive center-block tb-img5"/>  
                              <span xid="span10"><![CDATA[百科]]></span> 
                            </div> 
                          </td>  
                          <td bind-click="openPageClick" pagename="./list.w"
                            xid="td4"> 
                            <div class="text-center" xid="div7"> 
                              <img alt="" xid="image8" src="./img/menu_order_n.png"
                                class="img-responsive center-block tb-img5"/>  
                              <span xid="span11"><![CDATA[百科]]></span> 
                            </div> 
                          </td>  
                          </tr>  
                        </tbody> 
                    </table> 
                  </div>  
                  <div component="$UI/system/components/justep/panel/panel"
                    class="panel panel-default x-card" xid="panel3"> 
                    <div component="$UI/system/components/justep/list/list"
                      class="x-list" xid="recommendList" data="recommendData" bind-click="recommendListClick"> 
                      <ul class="x-list-template" xid="listTemplateUl1"> 
                        <li xid="li1"> 
                          <div component="$UI/system/components/bootstrap/row/row"
                            class="row" xid="row2"> 
                            <div class="col col-xs-12" xid="col4"> 
                              <img src="" alt="" xid="image3" bind-attr-src=" val(&quot;imgUrl&quot;)" class="img-responsive media-object"/> 
                            </div> 
                          </div> 
                        </li> 
                      </ul> 
                    </div> 
                  </div>  
                  <div component="$UI/system/components/justep/panel/panel"
                    class="panel panel-default x-card" xid="panel5"> 
                    <h4 xid="h41" class="list-group-item text-black"><![CDATA[为您推荐]]></h4>  
                    <div component="$UI/system/components/justep/list/list"
                      class="x-list x-flex" xid="list1" data="goodsData" limit="6"
                      disablePullToRefresh="false" disableInfiniteLoad="false" bind-click="listClick" style="background-color:#eee;"> 
                      <ul class="x-list-template" xid="listTemplateUl1"> 
                        <li xid="li1" class="col col-xs-6 tb-twoColList"> 
                          <div style="background-color:white;"> 
                            <img src="" alt="" class="img-rounded img-responsive media-object"
                              xid="image18" bind-attr-src=' val("imgUrl")'/>  
                             
                          <div> 
                              <span xid="span6" bind-text='ref("title")'><![CDATA[]]></span><div xid="div13"><span xid="span10" bind-text='"¥" + val("price")' class="text-danger"></span>
  <img src="./img/mallcar.png" alt="" xid="imgCart" class="pull-right imgCart" bind-click="imgCartClick"></img></div>
  </div></div> 
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
            class="x-window-container" xid="menuContainer" style="height:100%;width:100%;" autoLoad="false"/> 
        </div>  
        <div class="x-contents-content" xid="storeContent" onActive="storeContentActive" onInactive="storeContentInactive"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="storeContainer" style="height:100%;width:100%;"/></div>
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
          <span xid="span3" bind-text='"购物车(" +  $model.globalData.val("cartTotalCount") + ")"'><![CDATA[]]></span> 
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
