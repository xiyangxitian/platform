<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<c:set var="ctxPath" value="${pageContext.request.contextPath}" />
<c:set var="ctxSecurity" value="${pageContext.request.contextPath}/security" />
<%@ include file="../template/header.jsp" %>
<!--header  start-->
<script src="${ctxStatic}/js/layer/layer.js"></script>
<div style="position: fixed;margin:0 auto;width:100%;top:0;left:0;z-index:2">
	<div class="agentHeaderTop">
		<p class="agentHeaderTopL">				
			<span class="agentHeaderTopLPhone">客服热线 ：400-666 -0701</span>
			<span class="agentHeaderTopLPhoneLeave"></span>
			<span class="agentHeaderTopLWeixin">微信</span>
			<span class="agentHeaderTopLWeixinLeave"></span>
			<span class="agentHeaderTopLHelp">帮助</span>
		</p>
	</div>
	<div class="agentHeaderBar" style="background:#fafafa;border-bottom:1px solid #e5e5e5">
		<div class="agentHeaderBarContent">
			<div class="agentHeaderBarContentLogo" id="logoTopbar">Logo</div>
			<div class="agentHeaderBarContentRight">
				<span class="topbartHome" id="indexTopbar">首页</span>
				<span class="atopbartNeed" id="tradeCenterTopbar" >需求中心</span>
				<span class="agentHeaderBarContentRightSearch">
					<input type="text" name="" id="proTopbar" placeholder="项目" />
					<img class="agentHeaderBarContentRightSImg" id="searchImgTopbar" src="${ctxStatic}/img/index/search.png"/>
				</span>
				<%if((String)request.getSession().getAttribute("userID")==null&&(String)request.getSession().getAttribute("userAccount")==null){ %>
					<div class="agentHeaderBarContentRightUser">
						<span class="agentHeaderBarContentRightEntry" id="login">登录</span>
						<span class="agentHeaderBarContentRightLeave"></span>
						<span class="agentHeaderBarContentRightEnroll" id="regist" >注册</span>
					</div>	
				<%}else{ %>
					<div class="agentHeaderBarContentRightPerson">
						<span class="agentHeaderBarContentRightPersonLine"></span>
						<span class="agentHeaderBarContentRightPersonPhone" id="serverAuth">						
							 <img src="${ctxStatic}/img/topbar/user.png"/>
						</span>
						<a class="agentHeaderBarContentRightPersonName" href="javascript:;"><%=request.getSession().getAttribute("userName")%></a>
						<span class="agentHeaderBarContentRightPersonImg"><img src="${ctxStatic}/img/topbar/small-select.jpg" alt=""/></span>
						<ul>
							<li class="changeColor">
								<a href="${ctxPath}/server/myServer?framedata=serverAuth" title="">基本信息</a>
							</li>
							<li class="changeColor">
								<a href="${ctxPath }/server/myServer?framedata=myproject" title="">我的项目</a>
							</li>
							<li class="changeColor">
								<a href="${ctxPath}/server/myServer?framedata=providerAuth" title="">服务商认证</a>
							</li>
							<li class="changeColor">
								<a href="${ctxPath}/server/myServer?framedata=upPassAuth" title="">账户安全</a>
							</li>
							<li class="changeColor" style="border-bottom: none;">
								<a href="${ctxPath}/login/logout" title="">安全退出</a>
							</li>
						</ul>
					</div>					
				<%} %>				
			</div>				
		</div>
	</div>
</div>
<script>
$(".agentHeaderBarContentRightPerson").hover(
		function(){$(".agentHeaderBarContentRightPerson ul").show()},
		function(){$(".agentHeaderBarContentRightPerson ul").hide()});
$(".changeColor").hover(function(){
	$(".changeColor").css("background","#fff").css("margin-left","1px");
	$(".changeColor a").css("color","#999");
	$(this).css("background","#cdcdcd");
	$(this).children("a").css("color","#fff");
})
$(".agentHeaderBarContentRightPerson ul li:eq(0)").css({"border-top-left-radius":"4px","border-top-right-radius":"4px"})
	$("#login").click(function(){
		location.href = basePath + "/login/tologin?userType=d";
	});
	$("#regist").click(function(){
		location.href = basePath + "/login/registerServer?type=d";
	});
	$("#indexTopbar").click(function(){
		location.href = basePath + "/login/toindex";
	});
	$("#tradeCenterTopbar").click(function(){
		location.href = basePath + "/bidding/tradingCenter";
	});
	$("#logoTopbar").click(function(){
		location.href = basePath + "/login/toindex";
	});
	$("#searchImgTopbar").click(function(){
		var proTopbar = $("#proTopbar").val();
		location.href = basePath + "/bidding/tradingCenter";
	});
	$("#serverAuth").click(function(){
		location.href = basePath + "/server/myServer?framedata=serverAuth";
	});
</script>