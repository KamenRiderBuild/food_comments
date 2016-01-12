<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s"  uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/css/header-bar.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/index2.css" rel="stylesheet" type="text/css" />


<script src="${pageContext.request.contextPath}/js/jquery-1.7.2.js" type="text/javascript"></script>

<script type="text/javascript">
	
	$(function() {
		$("#G_loc").bind(
				"click",
				function() {
					
					
				});
		
	});
</script>
<title>餐厅网上预订</title>
</head>
<body id="top">
	<%@ include file="inc/header-bar.inc"%>
	<div class="header">
		<a title="点评网" href="index.jsp" class="logo">
			<img alt="大众点评网" src="${pageContext.request.contextPath}/img/logo.png"/>
		</a>
		<div class="location" id="G_loc-wrap">
			<div id="G_loc" class="loc-btn"><span
				class="txt">重庆站</span></div>
		</div>
		
		<ul class="nav" style="margin-top:22px;">
			<li id="Tab_Index" class="this"><a href=""><strong>首页</strong></a></li>
			<li id="Tab_TG"><a target="_blank"  href=""><strong>团购</strong></a>
							<span class="icon i-hot"></span>
			</li>
			<li id="Tab_Promo"><a href=""><strong>找优惠</strong></a>
			</li>
			<li id="Tab_Yuding" >
				<a href="" ><strong>订座</strong></a>
			</li>
			<li id="Tab_Card"><a href="" ><strong>会员卡</strong></a>
			</li>
				<li id="Tab_Activity">
					<a href="" ><strong>同城活动</strong></a>
				</li>
			<li id="Tab_Group"><a href="" ><strong>社区</strong></a>
			</li>
		</ul>
		<div class="nav-bar" id="G_nav-bar">
			<div class="channel"></div>
			<fieldset class="s-box"></fieldset>
			<div class="bar-extra"></div>
		</div>
	</div>
	<div class="wrapper">
			
			
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
												<div class="rank-stars"><span title="商户" class="item-rank-rst irr-star<fmt:formatNumber value="${briefInfo.startLv}" type="currency" pattern="0"/>0"><meta itemprop="rating" content="5">评分:商户</span></div>
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
	<!-- footer -->
	<%@ include file="inc/footer.inc"%>
</body>
</html>