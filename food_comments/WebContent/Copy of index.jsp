<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s"  uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<link href="${pageContext.request.contextPath}/css/header-bar.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.7.2.js" type="text/javascript"></script>

<script type="text/javascript">
	
	$(function() {
		$("#G_loc").bind(
				"click",
				function() {
					if($("#G_loc-panel").attr("style")=="visibility: hidden;"){
						$("#G_loc-panel").attr(
								"style",
								"visibility: visible;");
					}else {
						$("#G_loc-panel").attr(
								"style",
								"visibility: hidden;");
					}
					
				});
		
	});
</script>
<title>餐厅网上预订</title>
</head>
<body id="top">
	<%@ include file="inc/header-bar.inc"%>
	<div class="header">
		<a onclick="pageTracker._trackPageview('dp_head_logo_chongqing');" title="大众点评网" href="index.jsp" class="logo">
			<img alt="大众点评网" src="${pageContext.request.contextPath}/img/logo.png"/>
		</a>
		<div class="location" id="G_loc-wrap">
			<div id="G_loc" class="loc-btn"><span
				class="txt">重庆站</span></div>
			<div class="pop-panel pp_location" id="G_loc-panel"	data-target="#G_loc-wrap" style="visibility: hidden;">
				<dl>
					<dt>华北东北:</dt>
					<dd>
						<ul class="Fix">
							<li><a
								href="http://www.dianping.com/reservation/channel/beijing"
								onclick="pageTracker._trackPageview('dp_head_hotcity_beijing');">北京</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/tianjin"
								onclick="pageTracker._trackPageview('dp_head_hotcity_tianjin');">天津</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/shenyang"
								onclick="pageTracker._trackPageview('dp_head_hotcity_shenyang');">沈阳</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/dalian"
								onclick="pageTracker._trackPageview('dp_head_hotcity_dalian');">大连</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/changchun"
								onclick="pageTracker._trackPageview('dp_head_hotcity_changchun');">长春</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/haerbin"
								onclick="pageTracker._trackPageview('dp_head_hotcity_haerbin');">哈尔滨</a></li>
							<li><a href="http://www.dianping.com/shijiazhuang"
								onclick="pageTracker._trackPageview('dp_head_hotcity_shijiazhuang');">石家庄</a></li>
							<li><a href="http://www.dianping.com/taiyuan"
								onclick="pageTracker._trackPageview('dp_head_hotcity_taiyuan');">太原</a></li>
							<li><a href="http://www.dianping.com/huhehaote"
								onclick="pageTracker._trackPageview('dp_head_hotcity_huhehaote');">呼和浩特</a></li>
							<li><a href="http://www.dianping.com/langfang"
								onclick="pageTracker._trackPageview('dp_head_hotcity_langfang');">廊坊</a></li>
						</ul>
					</dd>
				</dl>
				<dl style="height:95px;">
					<dt>华东地区:</dt>
					<dd>
						<ul class="Fix">
							<li><a
								href="http://www.dianping.com/reservation/channel/shanghai"
								onclick="pageTracker._trackPageview('dp_head_hotcity_shanghai');">上海</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/hangzhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_hangzhou');">杭州</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/nanjing"
								onclick="pageTracker._trackPageview('dp_head_hotcity_nanjing');">南京</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/suzhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_suzhou');">苏州</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/wuxi"
								onclick="pageTracker._trackPageview('dp_head_hotcity_wuxi');">无锡</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/jinan"
								onclick="pageTracker._trackPageview('dp_head_hotcity_jinan');">济南</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/xiamen"
								onclick="pageTracker._trackPageview('dp_head_hotcity_xiamen');">厦门</a></li>
							<li><a href="http://www.dianping.com/ningbo"
								onclick="pageTracker._trackPageview('dp_head_hotcity_ningbo');">宁波</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/fuzhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_fuzhou');">福州</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/qingdao"
								onclick="pageTracker._trackPageview('dp_head_hotcity_qingdao');">青岛</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/hefei"
								onclick="pageTracker._trackPageview('dp_head_hotcity_hefei');">合肥</a></li>
							<li><a href="http://www.dianping.com/changzhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_changzhou');">常州</a></li>
							<li><a href="http://www.dianping.com/yangzhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_yangzhou');">扬州</a></li>
							<li><a href="http://www.dianping.com/wenzhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_wenzhou');">温州</a></li>
							<li><a href="http://www.dianping.com/shaoxing"
								onclick="pageTracker._trackPageview('dp_head_hotcity_shaoxing');">绍兴</a></li>
							<li><a href="http://www.dianping.com/jiaxing"
								onclick="pageTracker._trackPageview('dp_head_hotcity_jiaxing');">嘉兴</a></li>
							<li><a href="http://www.dianping.com/yantai"
								onclick="pageTracker._trackPageview('dp_head_hotcity_yantai');">烟台</a></li>
							<li><a href="http://www.dianping.com/weihai"
								onclick="pageTracker._trackPageview('dp_head_hotcity_weihai');">威海</a></li>
							<li><a href="http://www.dianping.com/zhengjiang"
								onclick="pageTracker._trackPageview('dp_head_hotcity_zhengjiang');">镇江</a></li>
							<li><a href="http://www.dianping.com/nantong"
								onclick="pageTracker._trackPageview('dp_head_hotcity_nantong');">南通</a></li>
							<li><a href="http://www.dianping.com/jinhua"
								onclick="pageTracker._trackPageview('dp_head_hotcity_jinhua');">金华</a></li>
							<li><a href="http://www.dianping.com/xuzhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_xuzhou');">徐州</a></li>
							<li><a href="http://www.dianping.com/weifang"
								onclick="pageTracker._trackPageview('dp_head_hotcity_weifang');">潍坊</a></li>
							<li><a href="http://www.dianping.com/zibo"
								onclick="pageTracker._trackPageview('dp_head_hotcity_zibo');">淄博</a></li>
							<li><a href="http://www.dianping.com/linyi"
								onclick="pageTracker._trackPageview('dp_head_hotcity_linyi');">临沂</a></li>
							<li><a href="http://www.dianping.com/maanshan"
								onclick="pageTracker._trackPageview('dp_head_hotcity_maanshan');">马鞍山</a></li>
							<li><a href="http://www.dianping.com/zhejiangtaizhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_zhejiangtaizhou');">台州</a></li>
							<li><a href="http://www.dianping.com/taizhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_taizhou');">泰州</a></li>
							<li><a href="http://www.dianping.com/jining"
								onclick="pageTracker._trackPageview('dp_head_hotcity_jining');">济宁</a></li>
							<li><a href="http://www.dianping.com/taian"
								onclick="pageTracker._trackPageview('dp_head_hotcity_taian');">泰安</a></li>
						</ul>
					</dd>
				</dl>
				<dl style="height:57px;">
					<dt>中部西部:</dt>
					<dd>
						<ul class="Fix">
							<li><a
								href="http://www.dianping.com/reservation/channel/chengdu"
								onclick="pageTracker._trackPageview('dp_head_hotcity_chengdu');">成都</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/wuhan"
								onclick="pageTracker._trackPageview('dp_head_hotcity_wuhan');">武汉</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/zhengzhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_zhengzhou');">郑州</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/changsha"
								onclick="pageTracker._trackPageview('dp_head_hotcity_changsha');">长沙</a></li>
							<li><a href="http://www.dianping.com/nanchang"
								onclick="pageTracker._trackPageview('dp_head_hotcity_nanchang');">南昌</a></li>
							<li><a href="http://www.dianping.com/guiyang"
								onclick="pageTracker._trackPageview('dp_head_hotcity_guiyang');">贵阳</a></li>
							<li><a href="http://www.dianping.com/xining"
								onclick="pageTracker._trackPageview('dp_head_hotcity_xining');">西宁</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/chongqing"
								onclick="pageTracker._trackPageview('dp_head_hotcity_chongqing');">重庆</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/xian"
								onclick="pageTracker._trackPageview('dp_head_hotcity_xian');">西安</a></li>
							<li><a href="http://www.dianping.com/kunming"
								onclick="pageTracker._trackPageview('dp_head_hotcity_kunming');">昆明</a></li>
							<li><a href="http://www.dianping.com/lanzhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_lanzhou');">兰州</a></li>
							<li><a href="http://www.dianping.com/wulumuqi"
								onclick="pageTracker._trackPageview('dp_head_hotcity_wulumuqi');">乌鲁木齐</a></li>
							<li><a href="http://www.dianping.com/yinchuan"
								onclick="pageTracker._trackPageview('dp_head_hotcity_yinchuan');">银川</a></li>
						</ul>
					</dd>
				</dl>
				<dl style="height:38px;">
					<dt>华南地区:</dt>
					<dd>
						<ul class="Fix">
							<li><a
								href="http://www.dianping.com/reservation/channel/guangzhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_guangzhou');">广州</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/shenzhen"
								onclick="pageTracker._trackPageview('dp_head_hotcity_shenzhen');">深圳</a></li>
							<li><a href="http://www.dianping.com/foshan"
								onclick="pageTracker._trackPageview('dp_head_hotcity_foshan');">佛山</a></li>
							<li><a href="http://www.dianping.com/zhuhai"
								onclick="pageTracker._trackPageview('dp_head_hotcity_zhuhai');">珠海</a></li>
							<li><a href="http://www.dianping.com/dongguan"
								onclick="pageTracker._trackPageview('dp_head_hotcity_dongguan');">东莞</a></li>
							<li><a
								href="http://www.dianping.com/reservation/channel/sanya"
								onclick="pageTracker._trackPageview('dp_head_hotcity_sanya');">三亚</a></li>
							<li><a href="http://www.dianping.com/haikou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_haikou');">海口</a></li>
							<li><a href="http://www.dianping.com/nanning"
								onclick="pageTracker._trackPageview('dp_head_hotcity_nanning');">南宁</a></li>
							<li><a href="http://www.dianping.com/huizhou"
								onclick="pageTracker._trackPageview('dp_head_hotcity_huizhou');">惠州</a></li>
						</ul>
					</dd>
				</dl>
				<dl style="height:19px;">
					<dt>港澳台:</dt>
					<dd>
						<ul class="Fix">
							<li><a href="http://www.dianping.com/hongkong"
								onclick="pageTracker._trackPageview('dp_head_hotcity_hongkong');">香港</a></li>
							<li><a href="http://www.dianping.com/macau"
								onclick="pageTracker._trackPageview('dp_head_hotcity_macau');">澳门</a></li>
							<li><a href="http://www.dianping.com/taipei"
								onclick="pageTracker._trackPageview('dp_head_hotcity_taipei');">台北</a></li>
							<li><a href="http://www.dianping.com/kaohsiung"
								onclick="pageTracker._trackPageview('dp_head_hotcity_kaohsiung');">高雄</a></li>
							<li><a href="http://www.dianping.com/kenting"
								onclick="pageTracker._trackPageview('dp_head_hotcity_kenting');">垦丁</a></li>
							<li><a href="http://www.dianping.com/hualien"
								onclick="pageTracker._trackPageview('dp_head_hotcity_hualien');">花莲</a></li>
						</ul>
					</dd>
				</dl>
				
				<div style="height:18px;" class="Fix">
					<a href="http://www.dianping.com/citylist" class="more"
						onclick="pageTracker._trackPageview('dp_head_othercity_chongqing');">更多城市</a>
				</div>
			</div>
		</div>
		
		<ul class="nav" style="margin-top:22px;">
			<li id="Tab_Index"><a href="http://www.dianping.com" onclick="pageTracker._trackPageview('dp_head_home_chongqing');"><strong>首页</strong></a></li>
			<li id="Tab_TG"><a target="_blank" onclick="pageTracker._trackPageview('dp_head_tuan_chongqing');" href="http://t.dianping.com/chongqing"><strong>团购</strong></a>
							<span class="icon i-hot"></span>
			</li>
			<li id="Tab_Promo"><a onclick="pageTracker._trackPageview('dp_head_promo_chongqing');" href="http://www.dianping.com/promo/chongqing"><strong>找优惠</strong></a>
			</li>
			<li id="Tab_Yuding" class="this">
				<a href="http://www.dianping.com/reservation/channel/chongqing" onclick="pageTracker._trackPageview('dp_head_booking_chongqing');_hip.push(['mv', { module: '2_click_yychanneltab', action: 'click'}])"><strong>订座</strong></a>
			</li>
			<li id="Tab_Card"><a href="http://www.dianping.com/card/chongqing" onclick="pageTracker._trackPageview('dp_head_card_chongqing');"><strong>会员卡</strong></a>
			</li>
				<li id="Tab_Activity">
					<a href="http://s.dianping.com/event/chongqing" onclick="pageTracker._trackPageview('dp_head_huodong_chongqing');"><strong>同城活动</strong></a>
				</li>
			<li id="Tab_Group"><a href="http://s.dianping.com/chongqing/group" onclick="pageTracker._trackPageview('dp_head_group_chongqing');"><strong>社区</strong></a>
			</li>
		</ul>
		<div class="nav-bar" id="G_nav-bar">
			<div class="channel"></div>
			<fieldset class="s-box"></fieldset>
			<div class="bar-extra"></div>
		</div>
	</div>
	<div class="wrapper">
			<div class="booking-top bg-topsnow bg-topbo">
				<div class="inner">
					<h3>快速订座</h3>
					<div class="srch-place J-srch-place">
						<input name="" type="text" class="input-plain "
							placeholder="商户名/商圈/地址/菜系（选填）"/> <a href="#" class="drop-butn"></a>
					</div>
					<div class="book-select">
						<div class="bk-time">
							<p>就餐时间</p>
							<input class="bk-date J-bk-date" readonly="readonly"
								value="2014-10-08 星期三"> <a href="#"
								class="bk-slet bk-hour J-bk-Hour"><span
									class="J-bk-Hour-value">18:00</span>
								<div class="chal-select chal-time J-chal-time"
										style="display: none; left: 260px;">
										<div class="chal-lunch">
											<h6>午市</h6>
											<ul>
												<li><a href="10:30"
													class="date-book-clk J-date-book-clk">10:30</a></li>
												<li><a href="11:00"
													class="date-book-clk J-date-book-clk">11:00</a></li>
												<li><a href="11:30"
													class="date-book-clk J-date-book-clk">11:30</a></li>
												<li><a href="12:00"
													class="date-book-clk J-date-book-clk">12:00</a></li>
												<li><a href="12:30"
													class="date-book-clk J-date-book-clk">12:30</a></li>
												<li><a href="13:00"
													class="date-book-clk J-date-book-clk">13:00</a></li>
												<li><a href="13:30"
													class="date-book-clk J-date-book-clk">13:30</a></li>
												<li><a href="14:00"
													class="date-book-clk J-date-book-clk">14:00</a></li>
											</ul>
										</div>
										<div class="chal-night">
											<h6>晚市</h6>
											<ul>
												<li><a href="16:30"
													class="date-book-clk J-date-book-clk">16:30</a></li>
												<li><a href="17:00"
													class="date-book-clk J-date-book-clk">17:00</a></li>
												<li><a href="17:30"
													class="date-book-clk J-date-book-clk">17:30</a></li>
												<li><a href="18:00"
													class="date-book-clk J-date-book-clk">18:00</a></li>
												<li><a href="18:30"
													class="date-book-clk J-date-book-clk">18:30</a></li>
												<li><a href="19:00"
													class="date-book-clk J-date-book-clk">19:00</a></li>
												<li><a href="19:30"
													class="date-book-clk J-date-book-clk">19:30</a></li>
												<li><a href="20:00"
													class="date-book-clk J-date-book-clk">20:00</a></li>
											</ul>
										</div>

									</div></a>
						</div>
						<div class="bk-num">

							<p>就餐人数</p>
							<a href="#" class="bk-slet bk-menb J-bk-menb"><span
								class="J-bk-menbspan">4人</span></a>
						</div>

						<div class="chal-select chal-person J-select-persion Hide"
							style="left: 439px;">
							<ul style="visibility: hidden;">
								<li><a
									class="option J-person-book-clk person-book-clk option-active "
									href="javascript:;">1人</a></li>
							</ul>
						</div>
					</div>
					<div class="butn-area">
						<span class=""><input name="" type="button" value=""
							class="J-btn-reverse butn-snow"/></span>
					</div>
				</div>
			</div>
			
			<div class="booking-container">
				<div class="book-main">
						<h4 class="bktits">热门餐厅</h4>
											
						<div class="shops-list">
							<ul>
								<s:iterator value="briefInfos" var="briefInfo">
										<li>
											<div class="pics"><a href="${pageContext.request.contextPath}/merchant/${briefInfo.mid}"  target="_blank"><img src="${pageContext.request.contextPath}/img/merchant.jpg"/></a></div>
											<div class="dis">
												<h3><a href="${pageContext.request.contextPath}/merchant/${briefInfo.mid}"  target="_blank">${briefInfo.merchantName }</a></h3>
												<div class="rank-stars"><span title="商户" class="item-rank-rst irr-star40"><meta itemprop="rating" content="5">评分:商户</span></div>
												<p><span class="rst">口味<strong><fmt:formatNumber value="${briefInfo.tasteScocer}" type="currency" pattern="0.0"/></strong></span>
												<span class="rst">环境<strong><fmt:formatNumber value="${briefInfo.conditionScocer}" type="currency" pattern="0.0"/></strong></span>
												<span class="rst">服务<strong><fmt:formatNumber value="${briefInfo.serviceScocer}" type="currency" pattern="0.0"/></strong></span></p>
												<p>${briefInfo.address}</p>
											</div>
										</li>
								</s:iterator>										
							</ul>
						</div>
				</div>
		</div>
	</div>
	
</body>
</html>