<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/style.css"/>
    <!--font-awesome字体图标库-->
    <link rel="stylesheet" type="text/css" href="../../css/font-awesome.min.css"/>
    <script src="../../js/jquery-1.10.1.js" type="text/javascript" charset="utf-8"></script>
    <script src="../../js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <title>分诊管理</title>
    <style type="text/css">
        th {
            text-align: center;
        }

        body {
            background-color: #ffff;
        }

        html {
            margin: 1px;
        }
    </style>
</head>

<body>
<iframe src="../../iframe/nav.html" width="100%" frameborder="0"></iframe>
<div style="margin-bottom:30px" class="container-fluid">

    <!--统计信息-->
    <div class="row">
        <!--当前科室下，所有待诊断的患者信息：按照序号，按照未诊断优先-->

        <div class="col-md-2"></div>
        <div class="col-md-8">
            <table class="table table-bordered table-hover">
                <thead>
                <tr class="bg-primary" style="font-size: 25px;">
                    <th colspan="6">科室患者信息 · 骨科</th>
                </tr>
                <tr class="bg-info">
                    <th>序号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>出生年月日</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>101</td>
                    <td>悟空</td>
                    <td>男</td>
                    <td>2018年11月30日</td>
                    <td class="text-primary">诊断中 <i class="fa fa-spinner fa-spin"></i></td>
                    <td>
                        <a href="#" class="btn disabled btn-xs btn-success">叫号 <i class="fa fa-user-circle"></i></a>
                        <a href="AddTriage.jsp" class="btn btn-xs btn-primary">诊断 <i class="fa fa-medkit"></i></a>
                    </td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>悟空</td>
                    <td>男</td>
                    <td>2018年11月30日</td>
                    <td class="text-danger">待诊 <i class="fa fa-question-circle"></i></td>
                    <td>
                        <a href="#" class="btn btn-xs btn-success">叫号 <i class="fa fa-user-circle"></i></a>
                        <a href="AddTriage.jsp" class="btn btn-xs btn-primary">诊断 <i class="fa fa-medkit"></i></a>
                    </td>
                </tr>
                <tr>
                    <td>103</td>
                    <td>悟空</td>
                    <td>男</td>
                    <td>2018年11月30日</td>
                    <td class="text-danger">待诊 <i class="fa fa-question-circle"></i></td>
                    <td>
                        <a href="#" class="btn btn-xs btn-success">叫号 <i class="fa fa-user-circle"></i></a>
                        <a href="AddTriage.jsp" class="btn btn-xs btn-primary">诊断 <i class="fa fa-medkit"></i></a>
                    </td>
                </tr>
                <tr>
                    <td>104</td>
                    <td>悟空</td>
                    <td>男</td>
                    <td>2018年11月30日</td>
                    <td class="text-danger">待诊 <i class="fa fa-question-circle"></i></td>
                    <td>
                        <a href="#" class="btn btn-xs btn-success">叫号 <i class="fa fa-user-circle"></i></a>
                        <a href="AddTriage.jsp" class="btn btn-xs btn-primary">诊断 <i class="fa fa-medkit"></i></a>
                    </td>
                </tr>
                <tr>
                    <td>105</td>
                    <td>铁扇公主</td>
                    <td>女</td>
                    <td>2018年11月30日</td>
                    <td class="text-success">诊断结束 <i class="fa fa-check-circle"></i></td>
                    <td>
                        <a href="#" class="btn disabled btn-xs btn-success">叫号 <i class="fa fa-user-circle"></i></a>
                        <a href="AddTriage.jsp" class="btn btn-xs btn-primary">诊断 <i class="fa fa-medkit"></i></a>
                    </td>
                </tr>
                <tr>
                    <td>106</td>
                    <td>铁扇公主</td>
                    <td>女</td>
                    <td>2018年11月30日</td>
                    <td class="text-success">诊断结束 <i class="fa fa-check-circle"></i></td>
                    <td>
                        <a href="#" class="btn disabled btn-xs btn-success">叫号 <i class="fa fa-user-circle"></i></a>
                        <a href="AddTriage.jsp" class="btn btn-xs btn-primary">诊断 <i class="fa fa-medkit"></i></a>
                    </td>
                </tr>
                <tr>
                    <td>107</td>
                    <td>铁扇公主</td>
                    <td>女</td>
                    <td>2018年11月30日</td>
                    <td class="text-success">诊断结束 <i class="fa fa-check-circle"></i></td>
                    <td>
                        <a href="#" class="btn disabled btn-xs btn-success">叫号 <i class="fa fa-user-circle"></i></a>
                        <a href="AddTriage.jsp" class="btn btn-xs btn-primary">诊断 <i class="fa fa-medkit"></i></a>
                    </td>
                </tr>
                <tr>
                    <td>108</td>
                    <td>铁扇公主</td>
                    <td>女</td>
                    <td>2018年11月30日</td>
                    <td class="text-success">诊断结束 <i class="fa fa-check-circle"></i></td>
                    <td>
                        <a href="#" class="btn disabled btn-xs btn-success">叫号 <i class="fa fa-user-circle"></i></a>
                        <a href="AddTriage.jsp" class="btn btn-xs btn-primary">诊断 <i class="fa fa-medkit"></i></a>
                    </td>
                </tr>
                <tr>
                    <td>109</td>
                    <td>铁扇公主</td>
                    <td>女</td>
                    <td>2018年11月30日</td>
                    <td class="text-success">诊断结束 <i class="fa fa-check-circle"></i></td>
                    <td>
                        <a href="#" class="btn disabled btn-xs btn-success">叫号 <i class="fa fa-user-circle"></i></a>
                        <a href="AddTriage.jsp" class="btn btn-xs btn-primary">诊断 <i class="fa fa-medkit"></i></a>
                    </td>
                </tr>
                <tr>
                    <td>110</td>
                    <td>铁扇公主</td>
                    <td>女</td>
                    <td>2018年11月30日</td>
                    <td class="text-success">诊断结束 <i class="fa fa-check-circle"></i></td>
                    <td>
                        <a href="#" class="btn disabled btn-xs btn-success">叫号 <i class="fa fa-user-circle"></i></a>
                        <a href="AddTriage.jsp" class="btn btn-xs btn-primary">诊断 <i class="fa fa-medkit"></i></a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="col-md-2"></div>
    </div>
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
<!--底部-->
<footer class="panel-footer navbar-fixed-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8" style="text-align: left;">
                &trade;百知教育 网址:
                <a href="http://www.baizhiedu.com">http://www.baizhiedu.com</a>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>

</footer>
</body>

</html>