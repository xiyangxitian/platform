<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    System.out.println("path:"+path);
    System.out.println("basePath:"+basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <style type="text/css">
        form{
            margin:0px auto;
            width:500px;
            padding:20px;
        }
    </style>
    <title></title>
</head>

<body>
<h1>SSM整合</h1>
<form action="user/add" method="post">
    用户名：<input name="username"/> <br/>
    邮箱：<input name="email"/><br/>
    <input type="submit" value="save"/>
</form>
<br/>
<a href="index1.jsp">去index1</a>
<button id="wel" onclick="welCome();">welcome</button>
<button id="towel" onclick="toWelClick();">towel</button>
</body>
<script>
    function welCome() {
        debugger;
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("test").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("POST", "user/wel", true);
        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    }

    function toWelClick(){
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("test").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("POST", "user/towel", true);
        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    }

</script>
</html>