<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/7
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分页</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min1.3.5.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min1.3.5.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN1.3.5.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/themes/default/easyui.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/themes/icon.css"/>
    <script>
        $(function () {
            $("#myTable").datagrid({
                title: "药品表",
                pagination: "true",
                url: "${pageContext.request.contextPath}/drug/selectByPage",
                toolbar: "#tb",
                checkOnSelect: true,
                rownumbers: true,
                columns: [[
                    {checkbox: true, field: "filee"},
                    {title: '药品id', width: 50, field: "id"},
                    {title: '药品名称', width: 100, field: "name"},
                    {title: '药品规格', width: 100, field: "spec"},
                    {title: '药品单位', width: 100, field: "unit"},
                    {title: '生产企业', width: 100, field: "product_company"},
                    {
                        title: '生产日期', width: 100, field: "product_date", formatter: function (value, row, index) {
                            var date = new Date(value);
                            var year = date.getFullYear();
                            var mouth = date.getMonth() + 1;
                            var day = date.getDay();
                            return year + "/" + mouth + "/" + day;

                        }
                    },
                    {
                        title: '保质期至', width: 100, field: "ok_date", formatter: function (value, row, index) {
                            var date = new Date(value);
                            var year = date.getFullYear();
                            var mouth = date.getMonth() + 1;
                            var day = date.getDay();
                            return year + "/" + mouth + "/" + day;
                        }
                    },
                    {title: '进价', width: 100, field: "import_price"},
                    {title: '零售价', width: 100, field: "price"},
                    {
                        title: '销售状态', width: 100, field: "sale_status", formatter: function (value, row, index) {
                            if (value == 0) {
                                return "正常销售";
                            } else {
                                return "停售";
                            }
                        }
                    },
                    {
                        title: '是否是进口', width: 100, field: "is_import", formatter: function (value, row, index) {
                            if (value == 0) {
                                return "进口药";
                            } else {
                                return "非进口药";
                            }
                        }
                    },
                    {title: '产品说明', width: 100, field: "description"},
                    {
                        title: '操作', width: 100, field: "option", formatter: function (value, row, index) {
                            if (row.sale_status == 0) {
                                return "<a href='${pageContext.request.contextPath}/drug/updateStatus?id=" + row.id + "&sale_status=" + row.sale_status + "'>下架</a>" + " " + "<a href='${pageContext.request.contextPath}/drug/selectDrugById?id=" + row.id + "'>提交审核</a>";
                            } else {
                                return "<a href='${pageContext.request.contextPath}/drug/updateStatus?id=" + row.id + "&sale_status=" + row.sale_status + "'>上架</a>" + " " + "<a href='${pageContext.request.contextPath}/drug/selectDrugById?id=" + row.id + "'>提交审核</a>";
                            }
                        }
                    }
                ]],
                onDblClickRow: function (index, row) {
                    openUpdateDialog(index, row)
                },
            })

            function openUpdateDialog(index, row) {
                $("#updateDiv").dialog({
                    closed: false,
                })
                $("#updateName").val(row.name)
                $("#updateSpec").val(row.spec)
                $("#updateUnit").val(row.unit)
                $("#Id").val(row.id)
                $("#updateCompany").val(row.product_company)
                $("#updateProductDate").val(row.product_date)
                $("#updateOkDate").val(row.ok_date)
                $("#updateImportPrice").val(row.import_price)
                $("#updatePrice").val(row.price)
                $("#updateSaleStatus").val(row.sale_status)
                $("#updateIsImport").val(row.is_import)
                $("#updateDescription").val(row.description)
            }

            $("#updateButton").click(function () {
                $("#updateForm").form("submit", {
                    url: "${pageContext.request.contextPath}/drug/update",
                    success: function (data) {
                        if (data == "true") {
                            $("#myTable").datagrid("load", {})
                            $.messager.alert("修改提示消息", "恭喜你修改成功", "info")
                            $("#updateDiv").dialog({
                                closed: true,
                            })
                        } else {
                            $.messager.alert("修改提示消息", "修改失败", "warning")
                            $("#updateDiv").dialog({
                                closed: true,
                            })
                        }
                    }
                })
            })
            $("#add").click(function () {
                openAddDialog();
            })
            $("#insertDiv").dialog({
                title: "添加对话框",
                closed: true,
                width: 200,
            })
            $("#updateDiv").dialog({
                title: "修改对话框",
                closed: true,
                width: 200,
            })

            function openAddDialog() {
                $("#insertDiv").dialog({
                    closed: false,
                })
            }

            $("#insertButton").click(function () {
                $("#insertForm").form("submit", {
                    url: "${pageContext.request.contextPath}/drug/insert",
                    success: function (data) {
                        if (data == "true") {
                            $("#myTable").datagrid("load")
                            $.messager.alert("添加提示消息", "恭喜你添加成功", 'info')
                            $("#insertDiv").dialog({
                                closed: true,
                            })
                        } else {
                            $.messager.alert("添加提示消息", "添加失败", "warning")
                            $("#insertDiv").dialog({
                                closed: true,
                            })
                        }

                    }
                })
            })

            //批量删除
            $("#multiDelete").click(function () {
                var selectedRows = $("#myTable").datagrid("getSelections");
                if (selectedRows.length == 0) {
                    $.messager.alert("提示消息", "请选中要删除的选项", "info");
                } else {
                    $.messager.confirm("删除确认框", "确定要删除吗", function (result) {
                        if (result) {
                            var arr = new Array(selectedRows.length)
                            for (var i = 0; i < selectedRows.length; i++) {
                                arr[i] = selectedRows[i].id
                            }
                            $.ajax({
                                url: "${pageContext.request.contextPath}/drug/multiDelete",
                                data: "ids=" + arr,
                                success: function (data) {
                                    if (data) {

                                        $.messager.alert("提示消息", "恭喜你删除成功", "info");
                                        $("#myTable").datagrid("load");
                                    } else {
                                        $.messager.alert("提示消息", "批量删除失败", "warning");
                                    }
                                }
                            })
                        }
                    });

                }

            })
        })

        function search() {
            var name = $("#name").val()
            $("#myTable").datagrid("load", {"name": name})
        }

    </script>
</head>
<body>
科室名称:<input type="text" id="name"/><input type="button" value="搜索" onclick="search()"/>
<table id="myTable"></table>
<div id="tb">
    <a href="${pageContext.request.contextPath}/AddDrug.jsp" class="easyui-linkbutton"
       data-options="iconCls:'icon-add',plain:true" id="add1"></a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" id="multiDelete"></a>
</div>
<%--1.添加按钮有一个点击事件，绑定一个函数toOpenAddDialog();
2.写一个添加对话框（里面使用form标签），刚开始是不显示的；
3.在toOpenAddDialog()函数中打开添加对话框（前提：必须要有一个添加对话框）
4.输入要添加的内容，点击提交按钮，通过form控件发送ajax请求--%>
<div id="insertDiv">
    <form id="insertForm" method="post">
        药品名称:<input type="text" id="insertName" name="name"/><br/>
        药品规格:<input type="text" id="insertSpec" name="spec"/>
        药品单位:<input type="text" id="insertUnit" name="unit"/>
        生产公司:<input type="text" id="insertCompany" name="product_company"/>
        生产日期:<input type="text" id="insertProductDate" name="product_date"/>
        保质期至:<input type="text" id="insertOkDate" name="ok_date"/>
        进价:<input type="text" id="insertImportPrice" name="import_price"/>
        零售价:<input type="text" id="insertPrice" name="price"/>
        销售状态:<input type="text" id="insertSaleStatus" name="sale_status"/>
        是否进口:<input type="text" id="insertIsImport" name="is_import"/>
        药品描述:<input type="text" id="insertDescription" name="description"/>
        <input type="button" value="提交" id="insertButton"/>
    </form>
</div>

<%-- 双击一行完成修改
 双击打开修改对话框，在修改对话框中显示原本的内容；然后输入新的内容，点击提交按钮发送ajax请求
 1.写一个修改对话框（里面使用form标签），这个对话框刚开始是不显示的
 2.当双击的时候（使用datagrid提供的onDblClickRow事件），打开修改对话框，同时把双击的这一行的内容写入修改对话框中的输入框中
 3.输入修改之后的内容，点击提交按钮，通过form控件发送ajax请求--%>
<div id="updateDiv">
    <form id="updateForm" method="post">
        <input type="hidden" id="Id" name="id"/>
        药品名称:<input type="text" id="updateName" name="name"/><br/>
        药品规格:<input type="text" id="updateSpec" name="spec"/>
        药品单位:<input type="text" id="updateUnit" name="unit"/>
        生产公司:<input type="text" id="updateCompany" name="product_company"/>
        生产日期:<input type="text" id="updateProductDate" name="product_date"/>
        保质期至:<input type="text" id="updateOkDate" name="ok_date"/>
        进价:<input type="text" id="updateImportPrice" name="import_price"/>
        零售价:<input type="text" id="updatePrice" name="price"/>
        销售状态:<input type="text" id="updateSaleStatus" name="sale_status"/>
        是否进口:<input type="text" id="updateIsImport" name="is_import"/>
        药品描述:<input type="text" id="updateDescription" name="description"/>
        <input type="button" value="提交" id="updateButton"/>
    </form>
</div>
<%--一般通过批量删除完成
1.形成复选框
2.在顶部工具栏位置，添加一个批量删除按钮
3.当需要删除的内容被选中之后，点击批量删除按钮，发送ajax请求到后台，执行删除操作--%>
<br/>
<a href="${pageContext.request.contextPath}/exam/selectCheck">审核药品信息展示</a>
</body>
</html>
