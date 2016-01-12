<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/css/header-bar.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/footer.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/login.css"
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

<title>美食网</title>

</head>

<body id="top">
	<%@ include file="inc/header-bar.inc"%>
	<!-- logo -->
	<div class="header">
		<a href="${pageContext.request.contextPath}/index.jsp" title="美食点评"
			onclick=""> <img
			src="${pageContext.request.contextPath}/img/logo.png" alt="美食点评" />
		</a> <i class="split"></i> <span class="sub-logo">登录</span>
	</div>
	<!-- /@logo -->
	<div class="main">
		<!--login-box-->
		<div class="login-wrap">
			<div class="mid-out">
				<div class="mid-in">
					<div class="login-box">
						<div class="tit">
							<h3>点评账号登录</h3>
						</div>
						<div id="msg-box" class="msg-box Hide">
							<span class="err"></span>
						</div>
						<div class="form-box">
							<form method="post"
								action="${pageContext.request.contextPath}/user/login"
								id="login" name="login">
								<ul>
									<li><input id="user" class="input-plain" type="text"
										name="username" placeholder="邮箱/用户名" /></li>
									<li><input id="password" class="input-plain"
										type="password" name="password" placeholder="密码" /></li>
									<li class="captcha" id="J_captcha"><input id="code"
										class="input-plain ipt-s" type="text" name="securityCode"
										maxlength="4" placeholder="验证码" /> <span class="c-pic"><img
											id="code-img"
											src="${pageContext.request.contextPath}/security/securityCodeImageAction" /></span>
										<div class="pop-cpic Hide">
											<span class="pic"><img id="p-code-img" src=""
												width="130" height="45" /></span> <a class="refresh" id="J_refresh"
												href="##"><i class="icon-refresh"></i></a>
										</div></li>
									<li class="auto-login"><a class="forget-pwd" href="#">忘记密码?</a>
									</li>
								</ul>
								<div class="btn-box">
									<input class="btn" type="submit" value="登 录" />
								</div>
							</form>
						</div>
						<div id="other-login" class="other-login">

							<i class="split">|</i> <a
								href="${pageContext.request.contextPath}/regist.jsp">注册</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/@login-box-->
	</div>
	<%@ include file="inc/footer.inc"%>
</body>
</html>