<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s"  uri="/struts-tags" %>
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
<script type="text/javascript">
	function dispaly(num){
		var as = document.getElementById("star").getElementsByTagName("a");
		//alert(as);
		for(var j=0;j<as.length;j++){
			if(num==6-j){
				as[j].setAttribute("class", "star-current");
			}else{
				as[j].setAttribute("class", "");
			}
		}
		if(num==0){
			as[0].setAttribute("class", "star-current");
		}
		for(var i=0;i<6;i++){
			if(i==num){
				
				document.getElementById(i+"c").setAttribute("class", "comment-list J-list");
			}else{
				
				document.getElementById(i+"c").setAttribute("class", "comment-list J-list Hide");
			}
			
		}
	}
</script>
<title>${merchant.name}电话,地址,价格,营业时间</title>
</head>
<body id="top">
	

	
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

					<div class="action Hide" >
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
			            <a class="item " data-type="all" >全部点评<span class="sub-title">(${briefInfo.commentaryCount })</span></a>
			            <span id="star" class="comment-filter-star J-stars">
			                <a data-value="" class="star-current" onclick="dispaly(0)">全部</a>
			                <a data-value="5star" class="" onclick="dispaly(5)">5星<span class="count">(${comment.five })</span></a>
			                <a data-value="4star" class="" onclick="dispaly(4)">4星<span class="count">(${comment.four })</span></a>
			                <a data-value="3star" class="" onclick="dispaly(3)">3星<span class="count">(${comment.three })</span></a>
			                <a data-value="2star" class="" onclick="dispaly(2)">2星<span class="count">(${comment.two })</span></a>
			                <a data-value="1star" class="" onclick="dispaly(1)">1星<span class="count">(${comment.one })</span></a>
			            </span>
			        </h2>

					<div class="comment-filter clearfix J-filter Hide">
						<div class="search J-search">
							<input type="text" placeholder="搜索评论"> <a
								class="search-btn"><i class="icon"></i></a>
						</div>
						
					</div>
					
					<!-- 
							<s:set name="shop" value="merchant.name" scope="pageContext"></s:set>
					<s:set name="index" value="0" scope="pageContext"></s:set>
							<s:property value="#attr.index"/>
							<s:set name="index" value="#n.count" scope="pageContext"></s:set>
							<s:property value="#attr.index"/>
							 -->
							 
					<ul id="0c" class="comment-list J-list">
					
					<s:iterator value="commentaries" var="commentary" status="n" >
							
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
									<span class="sml-rank-stars sml-str${commentary.startLv }0"></span>
									<span class="item">口味：${commentary.tasteScocer }</span>
									<span class="item">环境：${commentary.conditionScocer }</span> 
									<span class="item">服务：${commentary.serviceScocer }</span>
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
					
				<ul id="5c" class="comment-list J-list Hide">
					
					<s:iterator value="commentaries" var="commentary" status="n" >
							<s:if test="#commentary.startLv == 5">
							
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
									<span class="sml-rank-stars sml-str${commentary.startLv }0"></span>
									<span class="item">口味：${commentary.tasteScocer }</span>
									<span class="item">环境：${commentary.conditionScocer }</span> 
									<span class="item">服务：${commentary.serviceScocer }</span>
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
							</s:if>
							
						</s:iterator>

					</ul>
					
					
					<ul id="4c" class="comment-list J-list Hide">
					
					<s:iterator value="commentaries" var="commentary" status="n" >
							<s:if test="#commentary.startLv == 4">
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
									<span class="sml-rank-stars sml-str${commentary.startLv }0"></span>
									<span class="item">口味：${commentary.tasteScocer }</span>
									<span class="item">环境：${commentary.conditionScocer }</span> 
									<span class="item">服务：${commentary.serviceScocer }</span>
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
							</s:if>
							
						</s:iterator>

					</ul>
					
					<ul id="3c" class="comment-list J-list Hide">
					
					<s:iterator value="commentaries" var="commentary" status="n" >
							<s:if test="#commentary.startLv == 3">
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
									<span class="sml-rank-stars sml-str${commentary.startLv }0"></span>
									<span class="item">口味：${commentary.tasteScocer }</span>
									<span class="item">环境：${commentary.conditionScocer }</span> 
									<span class="item">服务：${commentary.serviceScocer }</span>
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
							</s:if>
							
						</s:iterator>

					</ul>
					
					
					<ul id="2c" class="comment-list J-list Hide">
					
					<s:iterator value="commentaries" var="commentary" status="n" >
							<s:if test="#commentary.startLv == 2">
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
									<span class="sml-rank-stars sml-str${commentary.startLv }0"></span>
									<span class="item">口味：${commentary.tasteScocer }</span>
									<span class="item">环境：${commentary.conditionScocer }</span> 
									<span class="item">服务：${commentary.serviceScocer }</span>
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
							</s:if>
							
						</s:iterator>

					</ul>
					
					
					<ul id="1c" class="comment-list J-list Hide">
					
					<s:iterator value="commentaries" var="commentary" status="n" >
							<s:if test="#commentary.startLv == 1">
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
									<span class="sml-rank-stars sml-str${commentary.startLv }0"></span>
									<span class="item">口味：${commentary.tasteScocer }</span>
									<span class="item">环境：${commentary.conditionScocer }</span> 
									<span class="item">服务：${commentary.serviceScocer }</span>
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
							</s:if>
							
						</s:iterator>

					</ul>


					<!-- 更多点评 -->
					<p class="comment-all">
						<a href="#" title=""
							target="_blank" rel="nofollow">更多点评(${briefInfo.commentaryCount })</a>
					</p>

				</div>
				

			</div>
		</div>
	</div>

	<!-- footer -->
	<%@ include file="inc/footer.inc"%>
</body>
</html>