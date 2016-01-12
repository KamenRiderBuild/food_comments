<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s"  uri="/struts-tags" %>
<div class="header-bar">
	<div class="inner">
		<s:if test="#session.loginUser==null">
		<ul class="user-action hd-menu">
			<li class="user-login first mi">
				<a href="${pageContext.request.contextPath}/login.jsp" rel="nofollow"  onclick="pageTracker._trackPageview('dp_head_login_tianjin');"><span>点评账号登录</span></a>
			</li>
			<li class="user-signup mi">
				<a href="${pageContext.request.contextPath}/regist.jsp" rel="nofollow"  onclick="pageTracker._trackPageview('dp_head_reg_tianjin');"><span>注册</span></a>
				<i class="split">|</i>
			</li>
			<li class= "user-signup mi">
				<a href="#" target="_blank" rel="nofollow" onclick="pageTracker._trackPageview('dp_head_reserve_tianjin');"><span> 我的订座 </span></a>
			</li>
		        <li class= "user-signup mi">
				<a href="#" target="_blank" rel="nofollow" onclick="pageTracker._trackPageview('dp_head_mytakeaway_track');"><span> 我的外卖 </span></a>
			</li>
		</ul>
		</s:if>
		<s:else>
		<ul class="user-action hd-menu">
			<li class="user-logged first mi">
				<span class="item greeting">您好，</span>
				<a href="" onclick="javascript:void();">${loginUser.nick }</a> 
				<a href=""  class="item info"  ><span>新人(0)</span></a>
		                
			</li>
			<li class="drop-wrap mi i-msg">
				<a class="drop-menu" data-server="" data-ga-unread="dp_head_msg_news_chongqing" id="G_h-msg" href="http://www.dianping.com/msg/private">消息</a>
			</li>
			<li class="drop-wrap mi" id="G_uc-ct">
				<a href=""  onclick="pageTracker._trackPageview('dp_head_my_chongqing');" id="G_h-uc" class="drop-menu">个人中心<span class="drop-icon"></span></a>
			</li>
			<li class="mi"><a href="${pageContext.request.contextPath}/user/loginOut"  onclick="pageTracker._trackPageview('dp_head_esc_chongqing');">退出</a></li>
		</ul>
		</s:else>
		
		<ul class="quick-menu hd-menu">
			<li class="first mi"><a href="#" >写点评</a></li>
			<li class="mi"><a href="${pageContext.request.contextPath}/addMerchant.jsp" >添加商户</a></li>
			<li class="mi"><a id="J_mobile-page" href="#">手机版</a></li>
			<li class="mi last"><a href="#" rel="nofollow"  onclick="pageTracker._trackPageview('dp_head_help_tianjin');">服务中心</a></li>
		</ul>
		
	</div>
	
</div>