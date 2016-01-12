<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>我要点评_${briefInfo.merchantName }_点评网</title>
<link href="${pageContext.request.contextPath}/css/review01.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/review02.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/review03.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/review04.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/header-bar.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/footer.css"
	rel="stylesheet" type="text/css" />
<style type="text/css">
	.reviewForm h3, .reviewForm .itop, .reviewForm tr.info{display:none;}
	.nav_w{margin:10px auto;}
</style>
<script	src="${pageContext.request.contextPath}/js/review01.js" type="text/javascript"></script>
<script	src="${pageContext.request.contextPath}/js/review02.js" type="text/javascript"></script>
<script	src="${pageContext.request.contextPath}/js/review03.js" type="text/javascript"></script>
<script	src="${pageContext.request.contextPath}/js/review04.js" type="text/javascript"></script>
<script	src="${pageContext.request.contextPath}/js/review05.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
	function g(a){
		return document.getElementById(a);
	}
	function reviewButton(){
		var startLv = g('startLv');
		var tasteScocer = g('tasteScocer');
		var conditionScocer = g('conditionScocer');
		var serviceScocer = g('serviceScocer');
		var favoriteDish = g('favoriteDish');
		var restaurantFeatures = g('restaurantFeatures');
		g('commentary.startLv').setAttribute('value',changeValue2(startLv.innerHTML)); 
		g('commentary.tasteScocer').setAttribute('value',changeValue(tasteScocer.innerHTML));
		g('commentary.conditionScocer').setAttribute('value',changeValue(conditionScocer.innerHTML));
		g('commentary.serviceScocer').setAttribute('value',changeValue(serviceScocer.innerHTML));
		if(g('commentary.perCapita').value==""){
			g('commentary.perCapita').setAttribute('value',0);
		}
		
		document.reviewForm.submit();
	}
	function changeValue2( s){
		switch(s){
		case "很差":return 1;
		case "一般":return 2;
		case "好":return 3;
		case "很好":return 4;
		case "非常好":return 5;
		}
	}
	function changeValue( s){
		switch(s){
		case "很差":return 0;
		case "一般":return 1;
		case "好":return 2;
		case "很好":return 3;
		case "非常好":return 4;
		}
	}
</script>
</head>
<body id="top">

	<%@ include file="inc/header-bar.inc"%>
	<!--logo-->

	<form name="reviewForm" action="${pageContext.request.contextPath}/commentary/addCommentary" method="post">
	<input  type="hidden" name="merchant.mid" value="${briefInfo.mid }"/>
	<input  type="hidden" name="commentary.layer" value="0"/>
		<div class="comment-header">
			<div class="header">
				<a class="logo" href="" title="大众点评网"
					onclick="pageTracker._trackPageview('dp_head_logo_shanghai');"><img
					src="${pageContext.request.contextPath}/img/logo.png" alt="大众点评网"/></a>
				<h1>
					<a href="">我要点评</a>
				</h1>
			</div>
		</div>
		<div class="main page-sa comment-main">
			<div class="mycomment-wrap">
				<div class="section">
					<div class="block comment-form separated-block shop-comment-form"
						id="review_form_div">
						<h2 id="mr">
							<strong>${briefInfo.merchantName }</strong>(<em>*</em>为必填选项) <a class="c-gray"
								href="">点评其他商户&raquo;</a>
						</h2>

						<div id="J_shop-rating"
							class="form-block rating-block rating-changes" data-title="总体评价">
							<span class="label label_required">总体评价：<em>*</em></span>
							<input id="commentary.startLv" type="hidden" name="commentary.startLv" value="0"/>
							<div class="rating-wrap-big">
								<ul>
									<li><a class="one-star " title="很差" data-hint="很差"
										data-rate-value="10" href="javascript:;"></a></li>
									<li><a class="two-stars " title="一般" data-hint="一般"
										data-rate-value="20" href="javascript:;"></a></li>
									<li><a class="three-stars " title="好" data-hint="好"
										data-rate-value="30" href="javascript:;"></a></li>
									<li><a class="four-stars " title="很好" data-hint="很好"
										data-rate-value="40" href="javascript:;"></a></li>
									<li><a class="five-stars " title="非常好" data-hint="非常好"
										data-rate-value="50" href="javascript:;"></a></li>
								</ul>
							</div>
							<span id="startLv" class="hint">点击星星为商户打分</span>
						</div>

						<div id="J_review-s1"
							class="form-block rating-block J_score_rating" data-title="口味">
							<input id="commentary.tasteScocer" type="hidden" name="commentary.tasteScocer" value="0"/>
							<span class="label label_required"> 口味：<em>*</em></span>
							<div class="score-wrap">
								<ul>
									<li><a class="square-0 " title="很差" data-rate-value="0"
										data-hint="很差" href="javascript:;">0</a></li>
									<li><a class="square-1 " title="一般" data-rate-value="1"
										data-hint="一般" href="javascript:;">1</a></li>
									<li><a class="square-2 " title="好" data-rate-value="2"
										data-hint="好" href="javascript:;">2</a></li>
									<li><a class="square-3 " title="很好" data-rate-value="3"
										data-hint="很好" href="javascript:;">3</a></li>
									<li><a class="square-4 " title="非常好" data-rate-value="4"
										data-hint="非常好" href="javascript:;">4</a></li>
								</ul>
								<span id="tasteScocer" class="hint">给口味打分</span>
							</div>
						</div>
						<div id="J_review-s2"
							class="form-block rating-block J_score_rating" data-title="环境">
							<input id="commentary.conditionScocer" type="hidden" name="commentary.conditionScocer" value="0"/>
							<span class="label label_required"> 环境：<em>*</em></span>
							<div class="score-wrap">
								<ul>
									<li><a class="square-0 " title="很差" data-rate-value="0"
										data-hint="很差" href="javascript:;">0</a></li>
									<li><a class="square-1 " title="一般" data-rate-value="1"
										data-hint="一般" href="javascript:;">1</a></li>
									<li><a class="square-2 " title="好" data-rate-value="2"
										data-hint="好" href="javascript:;">2</a></li>
									<li><a class="square-3 " title="很好" data-rate-value="3"
										data-hint="很好" href="javascript:;">3</a></li>
									<li><a class="square-4 " title="非常好" data-rate-value="4"
										data-hint="非常好" href="javascript:;">4</a></li>
								</ul>
								<span id="conditionScocer" class="hint">给环境打分</span>
							</div>
						</div>
						<div id="J_review-s3"
							class="form-block rating-block J_score_rating" data-title="服务">
							<input id="commentary.serviceScocer" type="hidden" name="commentary.serviceScocer" value="0"/>
							<span class="label label_required"> 服务：<em>*</em></span>
							<div class="score-wrap">
								<ul>
									<li><a class="square-0 " title="很差" data-rate-value="0"
										data-hint="很差" href="javascript:;">0</a></li>
									<li><a class="square-1 " title="一般" data-rate-value="1"
										data-hint="一般" href="javascript:;">1</a></li>
									<li><a class="square-2 " title="好" data-rate-value="2"
										data-hint="好" href="javascript:;">2</a></li>
									<li><a class="square-3 " title="很好" data-rate-value="3"
										data-hint="很好" href="javascript:;">3</a></li>
									<li><a class="square-4 " title="非常好" data-rate-value="4"
										data-hint="非常好" href="javascript:;">4</a></li>
								</ul>
								<span id="serviceScocer" class="hint">给服务打分</span>
							</div>
						</div>

						<div class="form-block taglist-block fb-fav">
							<input id="commentary.favoriteDish" type="hidden" name="commentary.favoriteDish" />
							<span class="label">喜欢的菜：</span>
							<div class="charac-list chara-close ext-info" data-title="喜欢的菜">
								<div class="form-block">
									<div id="favoriteDish" class="chara-con">
										<a class="chara-label " href="javascript:;" rel="nofollow">榴莲炖鸡</a>
										<a class="chara-label " href="javascript:;" rel="nofollow">冬阴功汤</a>
										<div class="addfood-box">
											<input class="addfood form-default" type="text"
												placeholder="自己写" maxlength="20" name="">
										</div>
									</div>
									<a class="for-open Hide" href="javascript:">展开</a> <span
										class="addenter Hide">按回车添加</span>
								</div>
							</div>
						</div>

						<div class="form-block fb-cmt rating-form">
							<span class="label label_required">评价：<em>*</em></span>
							<textarea id="J_review-body" name="commentary.content" class="form-textarea" rows="7"
								></textarea>
							<div class="form-content-block notepart" id="J_review-err-body">
								<span class="note">15~2000个字</span>
							</div>
							<div class="form-content-block review-counter review-mation">
								<span id="J_review-err-asbody" class="autosave-info"></span>
							</div>
						</div>

						

						<div class="options-wrap" id="J_review-options-wrap">

							<div class="form-block chk-unit">
								<ul>
									<li><span class="label">人均：</span> <input id="commentary.perCapita"
										name="commentary.perCapita"
										class="form-txt average err-input price-input" type="text"
										size="6" maxlength="8" data-type="Double" data-title="人均"
										data-desc="元" value="">元
									</li>
								</ul>
							</div>

							<div class="form-block taglist-block fb-fav">
								<input id="commentary.restaurantFeatures" type="hidden" name="commentary.restaurantFeatures" />
								<span class="label">餐厅特色：</span>
								<div class="charac-list chara-close ext-info" data-title="餐厅特色">
									<div class="form-block">
										<div id="restaurantFeatures" class="chara-con">
											<a class="chara-label " href="javascript:;" rel="nofollow">可以刷卡</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">无线上网</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">免费停车</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">有露天位</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">有表演</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">可送外卖</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">供应早餐</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">有下午茶</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">供应夜宵</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">是老字号</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">24小时营业</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">有景观位</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">有儿童游乐区</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">有无烟区</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">有午市套餐</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">有生日优惠</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">可自带酒水</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">可办大型宴会</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">洋房别墅</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">四合院</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">可赏西湖</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">可观珠江</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">情侣约会</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">朋友聚餐</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">家庭聚会</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">商务宴请</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">休闲小憩</a>
											<a class="chara-label " href="javascript:;" rel="nofollow">随便吃吃</a>
											<div class="addfood-box">
												<input class="addfood form-default" type="text"
													placeholder="自己写" maxlength="20" name="">
											</div>
										</div>
										<a class="for-open Hide" href="javascript:">展开</a> <span
											class="addenter Hide">按回车添加</span>
									</div>
								</div>
							</div>

						</div>

						<div class="block form-btn-block form-block form-content-block">
							<strong class="btn-type-b btn-fn-c"> <input
								class="form-btn" id="J_review-submit"
								
								type="button" value="提交点评" onclick="reviewButton()" />
							</strong>
						</div>

						
						<div id="container"></div>
					</div>
				</div>
				<div class="aside-right">
					<!--商户信息-->
					<div class="aside-right">
						<!--商户信息-->
						<div class="block shop-review-wrap">
							<div class="hd">
								<h3>
									<a href="${pageContext.request.contextPath}/merchant/${briefInfo.mid}" target="_blank">${briefInfo.merchantName }</a>
								</h3>
								<p>
									<span title="" class="item-rank-rst irr-star40"
										itemprop="rating" itemscope
										itemtype="http://data-vocabulary.org/Rating">
										<meta itemprop="rating" content="4">评分:四星商户
									</span> <span>人均：<strong class="price">¥ <fmt:formatNumber value="${briefInfo.perCapita }" type="currency" pattern="0.0"/></strong></span>
								</p>
								<p>
									<span>口味:<fmt:formatNumber value="${briefInfo.tasteScocer }" type="currency" pattern="0.0"/></span> 
									<span>环境:<fmt:formatNumber value="${briefInfo.conditionScocer }" type="currency" pattern="0.0"/></span>
									<span>服务:<fmt:formatNumber value="${briefInfo.serviceScocer }" type="currency" pattern="0.0"/></span>
								</p>
							</div>
							
						</div>
						<!--@商户信息-->
					</div>
					<!--@商户信息-->
				</div>
			</div>
		</div>
	</form>

	<!-- footer -->
	<%@ include file="inc/footer.inc"%>

	<script>
	DP.ready(function (D) {
	    D.reviewForm.init();
            D.reviewFormNew.initSwfUpload({
                overload_slice: true,
                button_width: '78', // there's bug in firefox on Mac, 1px right of the button will be cropped. so make sure button_width is 1px wider
                button_height: '30',
                
            });
        D.reviewFormNew.initCheckinTips();
        D.reviewFormNew.initQr();
	});

	</script>

	
</body>
</html>