<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/css/merchantShow.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/merchantShow02.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/header-bar.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/footer.css"
	rel="stylesheet" type="text/css" />
<title>${merchant.name}电话,地址,价格,营业时间</title>
</head>
<body id="top">
	<%@ include file="inc/header-bar.inc"%>
	<!--logo-->

	<div id="page-header" class="page-header">
		<div class="container">
			<a onclick=""
				title="点评网" href="${pageContext.request.contextPath}/index.jsp"
				class="logo"> <a class="city J-city">重庆<i
				class="icon i-arrow"></i></a>

			<div class="activity-banner J-activity-banner "
				style="width: 180px; height: 50px;"></div>
			<div class="search-bar">
				<input class="J-search-input" x-webkit-speech=""
					x-webkit-grammar="builtin:translate" data-s-cateid="0"
					data-s-cityid="9" data-s-chanid="1000" type="text"
					placeholder="搜索商户名、地址、菜名、外卖等" autocomplete="off"
					onwebkitspeechchange="pageTracker._trackPageview('dp_head_kerword_voice_chongqing');">
					<a class="search-btn J-search-btn"><i class="icon i-search"></i></a>
			</div>
		</div>
	</div>
	<div id="main-nav" class="main-nav">
		<div class="container">
			<a class="current-category J-current-category">美食<i class="icon"></i></a>
			<div class="channel-nav clearfix">
				<a href=""
					onclick="pageTracker._trackPageview('dp_head_home_chongqing');">首页</a>
				<a target="_blank"
					onclick="pageTracker._trackPageview('dp_head_tuan_chongqing');"
					href="">团购</a> <a
					onclick="pageTracker._trackPageview('dp_head_promo_chongqing');"
					href="">找优惠</a> <a href=""
					onclick="pageTracker._trackPageview('dp_head_booking_chongqing');_hip.push(['mv', { module: '2_click_yychanneltab', action: 'click'}])">订座</a>
				<a href=""
					onclick="pageTracker._trackPageview('dp_head_card_chongqing');">会员卡</a>
				<a href=""
					onclick="pageTracker._trackPageview('dp_head_huodong_chongqing');">同城活动</a>
				<a href=""
					onclick="pageTracker._trackPageview('dp_head_group_chongqing');">社区</a>
			</div>

		</div>
	</div>
	<div id="body" class="body">
		<div class="body-bg"></div>
		<div class="body-content clearfix">
			<div class="breadcrumb">
				<a href="" itemprop="url">重庆餐厅</a>&gt; <span>${merchant.name }</span>
			</div>
			<div class="main">
				<div id="basic-info" class="basic-info default nug_shop_ab_pv-a">
					<s class="cover J_cover"></s>
					<h1 class="shop-name">
						${merchant.name } <a class="icon" title=""
							target="_blank" rel="nofollow"></a>
					</h1>
					<div class="brief-info">
						<s:if test="briefInfo.startLv == 0">
							<span class="mid-rank-stars mid-str0"></span>
						</s:if>
						<s:else>
							<span class="mid-rank-stars mid-str<fmt:formatNumber value="${briefInfo.startLv}" type="currency" pattern="0"/>0"></span>
						</s:else>
						 <span class="item">${briefInfo.commentaryCount }条评论</span>
						<span class="item">人均：<fmt:formatNumber value="${briefInfo.perCapita }" type="currency" pattern="0.0"/>元
						</span> | <span class="item">口味：<fmt:formatNumber value="${briefInfo.tasteScocer }" type="currency" pattern="0.0"/>
						</span>	| <span class="item">环境：<fmt:formatNumber value="${briefInfo.conditionScocer }" type="currency" pattern="0.0"/>
						</span> | <span class="item">服务：<fmt:formatNumber value="${briefInfo.serviceScocer }" type="currency" pattern="0.0"/></span>
						<a class="icon score-btn J-score"></a>
					</div>
					<div class="expand-info address" itemprop="street-address">
						<span class="info-name">地址：</span> 
							<span itemprop="locality region">${merchant.address }</span>
					</div>
					<p class="expand-info tel">
						<span class="info-name">电话：</span> <span class="item"
							itemprop="tel">
							<s:if test='merchant.cellPhone==""'>
							${merchant.tel}
							</s:if>
							<s:else>
							${merchant.cellPhone }
							</s:else></span>
					</p>
					
					<div class="other J-other">
						<p class="info info-indent">
							<span class="info-name">营业时间：</span> <span class="item">
							<s:if test='merchant.businessHours==""'>
							尚无营业时间
							</s:if>
							<s:else>
							${merchant.businessHours }
							</s:else></span>
						</p>
						<p class="info info-indent">
							<span class="info-name">公交信息：</span> <span class="item">
							<s:if test='merchant.busInformation==""'>
							尚无公交信息
							</s:if>
							<s:else>
							${merchant.busInformation }
							</s:else></span>
						</p>
					</div>

					<div class="action">
						<a class="write left-action" href="${pageContext.request.contextPath}/merchant/${briefInfo.mid}/review"
							target="_blank" rel="nofollow"><i class="icon"></i>写点评</a>
							 <a	id="reservation"
							class="act-mod reservation nug_shop_ab_booking-a Hide"
							href="javascript:void(0);"> <i class="icon book"></i> <span
							class="hd">订座</span> <span class="desc" style="opacity: 1;"><span
								class="count">206</span>人已订</span> <i class="icon hot"></i>
						</a> 
					</div>
				</div>

				<div id="comment" class="mod comment">
					<h2 class="mod-title J-tab">
						<a class="item current" data-type="default">全部点评<span
							class="sub-title">(${briefInfo.commentaryCount })</span></a>  
					</h2>


					<div class="comment-filter clearfix J-filter Hide">
						<div class="search J-search">
							<input type="text" placeholder="搜索评论"> <a
								class="search-btn"><i class="icon"></i></a>
						</div>
						
					</div>

					<ul class="comment-list J-list">
					<s:set name="shop" value="merchant.name" scope="pageContext"></s:set>
					<s:set name="index" value="0" scope="pageContext"></s:set>
					<s:iterator value="commentaries" var="commentary" status="n" >
							<!-- 
							<s:property value="#attr.index"/>
							<s:set name="index" value="#n.count" scope="pageContext"></s:set>
							<s:property value="#attr.index"/>
							 -->
							<li class="comment-item" id="rev_73737702" data-id="73737702"
							xmlns="http://www.w3.org/1999/html">
							<a	class="avatar J-avatar" target="_blank" rel="nofollow"
							href="" data-user-id=""> <img
								src="http://j3.s2.dpfile.com/s/img/uc/default-avatar48c48.v17.png"
								alt="${commentary.user_nick }"
								data-lazyload="http://j3.s2.dpfile.com/s/img/uc/default-avatar48c48.v17.png"></a>
							<p class="user-info">
								<a class="name" target="_blank" rel="nofollow" title=""
									href="">${commentary.user_nick }</a> <span
									class="user-rank-rst urr-rank5" title=""></span>
							</p>
							<div class="content">
								<p class="shop-info">
									<span class="sml-rank-stars sml-str<fmt:formatNumber value="${commentary.startLv}" type="currency" pattern="0"/>0"></span> <span
										class="item">口味：${commentary.tasteScocer }</span> <span class="item">环境：${commentary.conditionScocer }</span> <span
										class="item">服务：${commentary.serviceScocer }</span>
								</p>

								<p class="desc">${commentary.content }</p>
								<div class="misc-info" id="review_73737702_action">
									<div class="actions">
										<a class="item  J-praise" data-id="73737702" rel="nofollow">
											<i class="icon i-praise"></i> 赞
										</a> <a class="item" target="_blank" href=""
											title="">回应</a> <a class="item J-favorite" data-id="73737702"
											rel="nofollow">收藏</a> <a class="item J-report"
											data-id="73737702" dr-referuserid="2" rel="nofollow">举报</a>
									</div>
									<span class="time"><s:date name="" /> ${commentary.createTime }</span> 
									<span class="shop"><s:property value="#attr.shop"/></span>
									
								</div>
							</div>
							</li>
						</s:iterator>

					</ul>

					<!-- 更多点评 -->
					<p class="comment-all">
						<a href="#" title=""
							target="_blank" rel="nofollow">更多点评(${briefInfo.commentaryCount })</a>
					</p>

				</div>
				<div class="comment-write" id="comment-write">
					<h3 class="title">去过${merchant.name}？给大家分享体验！</h3>
					<div class="content">
						<a class="avatar" target="_blank" rel="nofollow"
							href=""><img title="${loginUser.nick }"
							alt="${loginUser.nick }"
							src="http://j3.s2.dpfile.com/s/img/uc/default-avatar48c48.v17.png"
							data-lazyload="http://j3.s2.dpfile.com/s/img/uc/default-avatar48c48.v17.png"
							></a>
						<p class="user-info">${loginUser.nick }</p>
						<p>
							<span class="mid-rank-stars mid-str0 J-star" data-name="评分"></span>
							<span class="tip J-tip Hide">请选择评分</span>
						</p>
						<textarea minlength="15"></textarea>
						<p class="input-tip J-input-tip Hide">
							写15个字才是好同志，还需<span class="count">15</span>个字
						</p>
						<p class="select-score Hide">
							口味： <span class="score clearfix J-score" data-name="口味"> <span
								title="很差" data-value="0">0</span> <span title="一般"
								data-value="1">1</span> <span title="好" data-value="2">2</span>
								<span title="很好" data-value="3">3</span> <span title="非常好"
								data-value="4">4</span>
							</span> <span class="tip J-tip Hide">请选择口味</span>
						</p>
						<p class="select-score Hide">
							环境： <span class="score clearfix J-score" data-name="环境"> <span
								title="很差" data-value="0">0</span> <span title="一般"
								data-value="1">1</span> <span title="好" data-value="2">2</span>
								<span title="很好" data-value="3">3</span> <span title="非常好"
								data-value="4">4</span>
							</span> <span class="tip J-tip Hide">请选择环境</span>
						</p>
						<p class="select-score Hide">
							服务： <span class="score clearfix J-score" data-name="服务"> <span
								title="很差" data-value="0">0</span> <span title="一般"
								data-value="1">1</span> <span title="好" data-value="2">2</span>
								<span title="很好" data-value="3">3</span> <span title="非常好"
								data-value="4">4</span>
							</span> <span class="tip J-tip Hide">请选择服务</span>
						</p>
						<a class="submit J-submit Hide">发表</a>
					</div>
				</div>


			</div>
		</div>
	</div>

	<!-- footer -->
	<%@ include file="inc/footer.inc"%>
</body>
</html>