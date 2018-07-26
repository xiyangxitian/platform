<%--
  Created by IntelliJ IDEA.
  User: LY
  Date: 2018-07-26
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<c:set var="ctxPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Title</title>
    <!-- jquery外部接入方式 -->
    <%--<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>--%>
    <!-- jquery官网接入 -->
    <script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<%
    String webPath = request.getContextPath();
    System.out.println("webPath:"+webPath);
%>
</head>
<body>

</body>
</html>
