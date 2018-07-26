<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <%@ include file="/static/header.jsp"%>
    <style>
        .login-form {
            text-align: center;
        }

    </style>
</head>
<body>
欢迎来到登录页面
<div class="login-form">
    <div class="login-tab login-tab-r">
        <a href="javascript:void(0)">账户登录</a>
    </div>
    <div class="form">
        <form id="formlogin" method="post" <%--onsubmit="return false;"--%>>
            用户名:<input name="username" id=""/><br>
            密&nbsp;&nbsp;&nbsp;码:<input type="password" name="password"/>
            <div class="item item-fore5">
                <div class="login-btn">
                    <a href="javascript:;" class="btn-img btn-entry" id="loginsubmit">登&nbsp;&nbsp;&nbsp;&nbsp;录</a>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
<script>
    $(function () {
        // alert("哈哈");
        $("#loginsubmit").click(function(){
            alert("lll222l");
        });
        $.ajax("<%=webPath%>/user/loginByName",
            {
                method: "post",
                data: $("#formlogin").serialize(),
                success: function (data) {
                    alert("登录成功")
                },
                dataType: "json",
            });
    });

</script>
</html>
