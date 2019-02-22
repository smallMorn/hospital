<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/style.css"/>
    <script src="../../js/jquery-1.10.1.js" type="text/javascript" charset="utf-8"></script>
    <script src="../../js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="../../datepicker/WdatePicker.js" type="text/javascript" charset="utf-8"></script>
    <title>诊断</title>
    <style type="text/css">
        th {
            text-align: center;
        }

    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <iframe src="../../iframe/nav.html" width="100%" frameborder="0"></iframe>
    </div>
    <div class="row">
        <div class="col-md-12"></div>
    </div>
    <!--信息管理table-->
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8" align="center" style="text-align: center;">
            <form class="form-inline" action="TriageList.jsp" method="get">
                <table align="center" class="table  table-bordered" style="width:60%;">
                    <tr class="bg-info">
                        <td style="text-align: center;" colspan="3"><span style="font-size: 20px;font-weight: bold;">诊断信息</span>
                        </td>
                    </tr>
                    <tr class="active">
                        <td style="width: 15%; vertical-align: middle">患者编号</td>
                        <td colspan="2"><input type="text" readonly="readonly" value="101" style="width: 90%;"
                                               placeholder="请输入科室名称" class="form-control" name="pid"></td>
                    </tr>
                    <tr class="active">
                        <td style="width: 15%; vertical-align: middle">患者姓名</td>
                        <td colspan="2"><input type="text" readonly="readonly" value="悟空" style="width: 90%;"
                                               placeholder="请输入科室名称" class="form-control" name="pname"></td>
                    </tr>
                    <tr class="active">
                        <td style="width: 15%; vertical-align: middle">科室编号</td>
                        <td colspan="2"><input type="text" readonly="readonly" value="101" style="width: 90%;"
                                               placeholder="请输入科室名称" class="form-control" name="did"></td>
                    </tr>
                    <tr class="active">
                        <td style="width: 15%; vertical-align: middle">科室</td>
                        <td colspan="2"><input type="text" readonly="readonly" value="骨科" style="width: 90%;"
                                               placeholder="请输入科室名称" class="form-control" name="dname"></td>
                    </tr>
                    <tr class="active">
                        <td style="width: 15%; vertical-align: middle">医生编号</td>
                        <td colspan="2"><input type="text" readonly="readonly" value="101" style="width: 90%;"
                                               placeholder="请输入科室名称" class="form-control" name="uid"></td>
                    </tr>
                    <tr class="active">
                        <td style="width: 15%; vertical-align: middle">医生姓名</td>
                        <td colspan="2"><input type="text" readonly="readonly" value="菩提老祖" style="width: 90%;"
                                               placeholder="请输入科室名称" class="form-control" name="uname"></td>
                    </tr>
                    <tr class="active">
                        <td>症状描述</td>
                        <td>
                            <textarea name="illnessInfo" class="form-control" style="width:90%" rows="5"></textarea>
                        </td>
                    </tr>
                    <tr class="active">
                        <td>症状意见</td>
                        <td>
                            <textarea name="advice" class="form-control" style="width:90%" rows="5"></textarea>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="3"><input type="submit" style="width: 200px;" class="btn btn-success" value="完成">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="col-md-2"></div>
    </div>
    <!--底部-->
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
