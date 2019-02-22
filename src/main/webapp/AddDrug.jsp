<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/style.css"/>
    <script src="../../js/jquery-1.10.1.js" type="text/javascript" charset="utf-8"></script>
    <script src="../../js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="../../datepicker/WdatePicker.js" type="text/javascript" charset="utf-8"></script>
    <title>添加药品</title>
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
            <form class="form-inline" action="${pageContext.request.contextPath}/drug/insert" method="post">
                <table align="center" class="table  table-bordered" style="width:100%;">
                    <tr class="bg-info">
                        <td style="text-align: center;" colspan="4"><span style="font-size: 20px;font-weight: bold;">药品信息入库</span>
                        </td>
                    </tr>
                    <!---->
                    <tr class="active">
                        <td style="width: 15%; vertical-align: middle">药品名</td>
                        <td><input type="text" style="width: 90%;" placeholder="请输入药品名" class="form-control"
                                   name="name"></td>
                        <td style="width: 15%; vertical-align: middle">规格</td>
                        <td><input type="text" style="width: 90%;" placeholder="请输入规格" class="form-control" name="spec">
                        </td>
                    </tr>
                    <tr class="active">
                        <td style="width: 15%; vertical-align: middle">单位</td>
                        <td><input type="text" style="width: 90%;" placeholder="请输入单位" class="form-control" name="unit">
                        </td>
                        <td style="width: 15%; vertical-align: middle">生产企业</td>
                        <td><input type="text" style="width: 90%;" placeholder="请输入生产企业" class="form-control"
                                   name="product_company"></td>
                    </tr>
                    <tr class="active">
                        <td style="width: 15%; vertical-align: middle">生产日期</td>
                        <td><input type="text" onclick="WdatePicker({fmtDate:'yyyy-MM-dd'})"
                                   style="width: 90%;height: 160%; border-color: lightgray;" placeholder="请选择生产日期"
                                   class="Wdate form-control" name="product_date"></td>
                        <td style="width: 15%; vertical-align: middle">保质期至</td>
                        <td><input type="text" onclick="WdatePicker({fmtDate:'yyyy-MM-dd'})"
                                   style="width: 90%;height: 160%; border-color: lightgray;" placeholder="请选择保质期至"
                                   class="Wdate form-control" name="ok_date"></td>
                    </tr>
                    <tr class="active">
                        <td style="width: 15%; vertical-align: middle">进价</td>
                        <td><input type="number" style="width: 90%;" placeholder="请输入进价" class="form-control"
                                   name="import_price"></td>
                        <td style="width: 15%; vertical-align: middle">零售价</td>
                        <td><input type="number" style="width: 90%;" placeholder="请输入零售价" class="form-control"
                                   name="price"></td>
                    </tr>

                    <tr class="active">
                        <td style="width: 15%; vertical-align: middle">销售状态</td>
                        <td>
                            是：<input type="radio" name="sale_status" value="0"/>
                            否：<input type="radio" name="sale_status" value="1"/>
                        </td>
                        <td style="width: 15%; vertical-align: middle">是否进口</td>
                        <td>
                            是： <input type="radio" name="is_import" value="0"/>
                            否：<input type="radio" name="is_import" value="1"/>
                        </td>
                    </tr>


                    <tr class="active">
                        <td style="width: 15%; vertical-align: middle">产品说明</td>
                        <td colspan="3">
                            <textarea name="description" class="form-control" style="width: 96%;" rows="5"
                                      cols=""></textarea>

                        </td>
                    </tr>

                    <tr>
                        <td colspan="4"><input type="submit" style="width: 200px;" class="btn btn-success" value="添加">
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
