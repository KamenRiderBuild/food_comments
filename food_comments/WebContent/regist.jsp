<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/css/header-bar.css"
	rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/footer.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/regist.css"
	rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.7.2.js"
	type="text/javascript"></script>

<script type="text/javascript">
<!--处理验证码-->
	$(function() {
		$("#code-img").bind(
				"click",
				function() {
					$(this).attr(
							"src",
							"${pageContext.request.contextPath}/security/securityCodeImageAction?time="
									+ new Date().getTime());
				});

	});
</script>

<title>快速注册</title>
</head>
<body id="top">
	<%@ include file="inc/header-bar.inc"%>
	<!--logo-->

	<div class="header">
		<a href="${pageContext.request.contextPath}/index.jsp" title="美食点评"
			onclick=""> <img
			src="${pageContext.request.contextPath}/img/logo.png" alt="美食点评" />
		</a> <i class="split"></i> <span class="sub-logo">注册</span>
	</div>
	<!--/@logo-->
	<div class="main">
		<!-- register-wrap -->
		<div class="register-wrap">
			<div class="directly-enter"></div>
			<div class="register-box">
				<div class="tit">
					<h3>
						"还请客官辛苦" <strong>注册</strong> "下吧"
					</h3>
				</div>
				<div class="reg-tabs">
					<ul id="tabs">
						<li class="cur"><a><i class="icon-email"></i>邮箱注册</a></li>
					</ul>
				</div>
				<div id="msg-box" class="msg-box Hide">
					<span class="err">请输入正确的验证码！</span>
				</div>
				<div class="form-box form-tit-box">
					<form id="regist" name="regist"
						action="${pageContext.request.contextPath}/user/regist" method="post">
						<input id="information" type="hidden" name="information.info" value="wu"/>
						<!--邮箱注册-->
						<ul id="email-panel" class="J-tabs-panel">
							<li><label for="">邮箱地址：</label> <input id="email"
								class="input-plain" type="text" name="user.userEmail"
								placeholder="如example@163.com" /></li>
							<li><label for="">设置密码：</label> <input id="email-password"
								class="input-plain" type="password" name="user.userPass"
								maxlength="16" placeholder="密码长度6-16字符" /></li>
							<li><label for="">确认密码：</label> <input id="email-repassword"
								class="input-plain" type="password" name="cpass" maxlength="16"
								placeholder="密码长度6-16字符" /></li>
							<li><label for="">常居地：</label> <input id="city"
								class="input-plain" type="text" name="user.city"
								placeholder="上海" autocomplete="off" value="杭州" /> <input
								id="city-id" type="hidden" /></li>
							<li class="captcha" id="J_captcha"><label for="">验证码：</label>
								<input id="email-code" class="input-plain ipt-s" type="text"
								name="securityCode" maxlength="4" placeholder="验证码" /> <span
								class="c-pic"><img id="code-img"
									src="${pageContext.request.contextPath}/security/securityCodeImageAction" /></span>
								<div class="pop-cpic Hide">
									<span class="pic"><img id="p-code-img"
										src="/account/preg.jpg?xx=0" width="130" height="45"></span> <a
										class="refresh" id="J_refresh" href="##"><i
										class="icon-refresh"></i></a>
								</div></li>
						</ul>

						<div class="btn-box">
							<input class="btn-shallow" type="submit" value="立即注册" />
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--/@login-box-->
	</div>
	<%@ include file="inc/footer.inc"%>
</body>
</html>