<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form action="${pageContext.request.contextPath}/user/register" method="post" enctype="multipart/form-data">
    医生姓名:<input type="text" name="username"/> <br/>
    医生密码:<input type="password" name="password"/><br/>
    真实姓名:<input type="text" name="realname"/><br/>
    性别:<input type="radio" value="1" name="sex">男
    <input type="radio" value="0" name="sex">女
    出生年月日:<input type="text" name="birth" placeholder="格式1992/2/2"/><br/>
    手机号:<input type="text" name="mobile"/><br/>
    邮箱:<input type="text" name="email"/><br/>
    头像路径:<input type="file" name="image"/><br/>
    科室:<select type="text" name="dept_id">
    <c:forEach var="list" items="${requestScope.list}">
        <option value="${list.id}">${list.name}</option>
    </c:forEach>
</select><br/>
    <input type="submit" value="提交"/>
</form>