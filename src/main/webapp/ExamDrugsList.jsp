<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <!--font-awesome字体图标库-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.10.1.js" type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"
            charset="utf-8"></script>
    <title>展示审核药品状态</title>
    <style type="text/css">
        th {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <iframe src="${pageContext.request.contextPath}/iframe/nav.html" width="100%" frameborder="0"></iframe>
    </div>
    <!--按钮工具栏-->
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <!--按钮组-->
            <div class="btn-group">
            </div>
        </div>
        <div class="col-md-3">
            <form action="#" class="form form-inline input-group">
                <input type="text" class="form-control" placeholder="请输入药品关键词" name="name" id="name"/>
                <span class="input-group-btn"><input type="submit" class="btn btn-success" value="搜索"/></span>
            </form>
        </div>
        <div class="col-md-5"></div>
    </div>
    <div class="row">
        <div class="col-md-12"></div>
    </div>
    <!--信息管理table-->
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <table class="table table-bordered table-condensed table-hover">
                <thead>
                <tr class="bg-info text-capitalize">
                    <th>编号</th>
                    <th>药品名</th>
                    <th>生产企业</th>
                    <th>开始时间</th>
                    <th>结束时间</th>
                    <th>审核状态</th>
                    <th style="width: 20%;">操作</th>
                </tr>
                </thead>
                <tbody style="text-align: center;">
                <c:forEach items="${requestScope.list}" var="list">
                    <tr>
                        <td>${list.id}</td>
                        <td>${list.drug.name}</td>
                        <td>${list.drug.product_company}</td>
                        <td>${list.exam_start_date}</td>
                        <td>${list.exam_end_date}</td>
                        <td>
                            <c:if test="${list.exam_status==2}">
                                通过
                            </c:if>
                            <c:if test="${list.exam_status==1}">
                                不通过
                            </c:if>
                        </td>
                        <td>
                            <a href="#" class="btn btn-xs btn-info"><i class="fa fa-info"></i> 查看详情</a>
                            <a href="ExamDrug.html" class="btn btn-xs btn-success"><i class="fa fa-check-circle"></i> 审核</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col-md-2"></div>
    </div>
    <!--分页-->
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <ul class="pager">
                <li class="previous"><a href="#" class="btn btn-default">上一页</a></li>
                <li><a href="#" class="btn btn-default active disabled">第2页</a></li>
                <li class="next"><a href="#" class="btn btn-default">下一页</a></li>
            </ul>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="com-md-12">
            <!--底部-->
            <footer class="modal-footer navbar-fixed-bottom">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8" style="text-align: left;">
                        &trade;百知教育 网址:<a href="http://www.baizhiedu.com">http://www.baizhiedu.com</a>
                    </div>
                    <div class="col-md-2"></div>
                </div>
            </footer>
        </div>
    </div>
</div>
</body>
</html>
