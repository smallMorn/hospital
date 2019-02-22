<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/>

</head>

<body>
<div class="wrap">
    <!-- main begin-->
    <div class="main">
        <div class="sidebarg fnone">
            <form action="${pageContext.request.contextPath}/user/login" method="post" target='_blank'>
                <div class="login">
                    <dl>
                        <dt>登陆</dt>
                        <h2 style="color: red">${sessionScope.error}</h2>
                        <dd>用户名<input type="text" name="username"/></dd>
                        <br/>
                        密码<input type="password" name="password"/>
                        <a href="${pageContext.request.contextPath}/department/selectAllDepartment">注册</a>
                        <input type="submit" value="确定"/>


                    </dl>
                </div>
            </form>
        </div>
        <div class="cl"></div>
    </div>
    <!-- main end-->

    <!-- footer begin-->
</div>
<!--footer end-->

</div>
</body>
</html>
