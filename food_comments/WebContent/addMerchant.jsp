<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/css/header-bar.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/footer.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/addMerchant.css"
	rel="stylesheet" type="text/css" />
<title>添加商户</title>
</head>
<body id="top">
	<%@ include file="inc/header-bar.inc"%>
	<!--logo-->
	
	<div class="breadcrumb">
		<a href="${pageContext.request.contextPath}/index。jsp">点评网</a><span>»</span><strong>添加商户</strong>
	</div>
	
	<div class="main page-sa page-sa-col Fix">
		<div class="section section-w">
			<div class="block raw-block b-shop-add" id="J_gone-list">
				<div class="block-title">
					<strong class="title-main">添加商户</strong>
					<span class="title-misc">(<em>*</em>为必填选项)</span>
				</div>
				<div class="block-inner separated-block">
					<div class="block shop-add-form">
					<form id="addMerchant" name="addMerchant"	action="${pageContext.request.contextPath}/merchant/addMerchant" method="post">
						<div class="form-inner">
							<div class="form-block">
                        		<label class="label label_required" for="txtShopName">商户名：<em>*</em></label>
                            	<input type="text" maxlength="50" id="merchant.name" name="merchant.name" class="form-txt form-txt-l" autocomplete="off" size="60" value="">
                            	<span id="fv_shopname" style="visibility: hidden;" class="fv-def"></span>
                        	</div>
                        	<div class="form-block">
                        		<label class="label" for="txtAltName">别名：</label>
                            	<input type="text" maxlength="50" id="merchant.aliases" name="merchant.aliases" class="form-txt form-txt-l" autocomplete="off" size="60" value="">
                            	<span id="fv_AltName" style="visibility: hidden;" class="fv-def"></span>
                        	</div>
                        	<div class="form-block">
                        		<span class="label label_required">类型：<em>*</em></span>
                        		<input type="text" maxlength="50" id="merchant.style" name="merchant.style" class="form-txt form-txt-l" autocomplete="off" size="60" value="">
                            	<span id="fv_AltName" style="visibility: hidden;" class="fv-def"></span>
                        	</div>
                        	<div class="form-block">
                        		<span class="label label_required">地址：<em>*</em></span>
                        		<input type="text" maxlength="50" id="merchant.address" name="merchant.address" class="form-txt form-txt-l" autocomplete="off" size="60" value="">
                            	<span id="fv_AltName" style="visibility: hidden;" class="fv-def"></span>
                        	</div>
                        	<div class="form-block">
                            	<label class="label" for="merchant.tel">电话：</label>
                            	<input type="text" maxlength="50" id="merchant.tel" name="merchant.tel" class="form-txt form-txt-l " autocomplete="off" size="60">
                            	<span id="fv_cross" style="visibility: hidden;" class="fv-def"></span>
                        	</div>
                        	<div class="form-block">
                            	<label class="label" for="merchant.cellPhone">手机：</label>
                            	<input type="text" maxlength="11" id="merchant.cellPhone" name="merchant.cellPhone"class="form-txt form-txt-l " autocomplete="off" size="60">
                            	<span id="fv_cross" style="visibility: hidden;" class="fv-def"></span>
                        	</div>
                        	<div class="form-block">
	                            <span class="label">营业时间：</span>
	                            <textarea rows="7" cols="50" id="merchant.businessHours" name="merchant.businessHours" class="form-textarea" placeholder="10:00-22:00"></textarea>
	                            <span id="fv_BusHour" style="visibility: hidden;" class="fv-def"></span>
	                        </div>
	                        <div class="form-block">
	                            <span class="label">公交信息：</span>
	                            <textarea rows="7" cols="50" id="merchant.busInformation" name="merchant.busInformation" class="form-textarea" class="form-textarea" placeholder="地铁1/2/8号线 - 人民广场站，公交537/18路 - 人民广场站"></textarea>
	                            <span id="fv_TrafficInfo" style="visibility: hidden;" class="fv-def"></span>
	                        </div>
	                        
						</div>
						<div class="block form-btn-block form-block form-content-block">
	                        <strong class="btn-type-b btn-fn-c">
	                            <input id="btnAdd" type="submit" value="提交商户" class="form-btn">
	                        </strong> 
	                    </div>
	                    
	                    <div class="claim-enter as-right">
	                  		<div >
	                    		
	                    	</div>
                  		</div>
                  	</form>
					</div>
					
				</div>
				
			</div>
		</div>
	</div>
	<%@ include file="inc/footer.inc"%>
</body>
</html>