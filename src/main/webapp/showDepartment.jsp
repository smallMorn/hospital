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
                title: "科室表",
                pagination: "true",
                url: "${pageContext.request.contextPath}/department/selectByPage",
                toolbar: "#tb",
                checkOnSelect: true,
                rownumbers: true,
                columns: [[
                    {checkbox: true, field: "fiel"},
                    {title: '科室id', width: 100, field: "id"},
                    {title: '科室名称', width: 100, field: "name"},
                    {title: '科室电话', width: 100, field: "telephone"},
                    {title: '科室区域', width: 100, field: "area"}

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
                $("#updateTelephone").val(row.telephone)
                $("#updateArea").val(row.area)
                $("#Id").val(row.id)
            }

            $("#updateButton").click(function () {
                $("#updateForm").form("submit", {
                    url: "${pageContext.request.contextPath}/department/update",
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
                    url: "${pageContext.request.contextPath}/department/insert",
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
                                url: "${pageContext.request.contextPath}/department/multiDelete",
                                data: "ids=" + arr,
                                success: function (data) {
                                    if (data) {

                                        $.messager.alert("提示消息", "恭喜你批量删除成功", "info");
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
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" id="add"></a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" id="multiDelete"></a>
</div>
<%--1.添加按钮有一个点击事件，绑定一个函数toOpenAddDialog();
2.写一个添加对话框（里面使用form标签），刚开始是不显示的；
3.在toOpenAddDialog()函数中打开添加对话框（前提：必须要有一个添加对话框）
4.输入要添加的内容，点击提交按钮，通过form控件发送ajax请求--%>
<div id="insertDiv">
    <form id="insertForm" method="post">
        科室名称:<input type="text" id="insertName" name="name"/><br/>
        科室电话:<input type="text" id="insertPhone" name="telephone"/>
        科室区域:<input type="text" id="insertArea" name="area"/>
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
        科室名称:<input type="text" id="updateName" name="name"/><br/>
        科室电话:<input type="text" id="updateTelephone" name="telephone"/>
        科室区域:<input type="text" id="updateArea" name="area"/>
        <input type="button" value="提交" id="updateButton"/>
    </form>
</div>
<%--一般通过批量删除完成
1.形成复选框
2.在顶部工具栏位置，添加一个批量删除按钮
3.当需要删除的内容被选中之后，点击批量删除按钮，发送ajax请求到后台，执行删除操作--%>
<br/>
<a href="${pageContext.request.contextPath}/showDrug.jsp">展示药品信息</a>
<a href="${pageContext.request.contextPath}/patient/showPatient.jsp">展示病人信息</a>
<a href="${pageContext.request.contextPath}/triage/TriageDepartmentList.jsp">分诊信息</a>
</body>
</html>
