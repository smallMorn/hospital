<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/7
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>分页</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/themes/default/easyui.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/themes/icon.css"/>
    <script>
        $(function () {
            $("#myTable").datagrid({
                title: "病人表",
                pagination: "true",
                url: "${pageContext.request.contextPath}/patient/selectByPage",
                toolbar: "#tb",
                checkOnSelect: true,
                rownumbers: true,
                columns: [[
                    {checkbox: true, field: "filee"},
                    {title: '病人编号', width: 50, field: "id"},
                    {title: '病人姓名', width: 100, field: "name"},
                    {
                        title: '病人性别', width: 100, field: "sex", formatter: function (value, row, index) {
                            if (value == 0) {
                                return "男"
                            } else {
                                return "女"
                            }
                        }
                    },
                    {title: '出生日期', width: 100, field: "birth"},
                    {title: '身份证号', width: 100, field: "idCard"},
                    {title: '家庭住址', width: 100, field: "address"},
                    {title: '手机号', width: 100, field: "mobile"},
                    {
                        title: "病人状态", width: 100, field: "isReg", formatter: function (value, row, index) {
                            if (value == 0) {
                                return "未挂号"
                            } else {
                                return "已挂号"
                            }
                        }
                    },
                    {
                        title: '操作', width: 100, field: "option", formatter: function (value, row, index) {
                            if (row.isReg == 0) {
                                return "<a href='${pageContext.request.contextPath}/patient/register?id=" + row.id + "&name=" + row.name + "'>挂号</a>" + " " + "<a href='${pageContext.request.contextPath}/drug/selectDrugById?id=" + row.id + "'></a>";
                            } else {
                                return "您已挂号"
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
                if (row.sex == 0) {
                    $("#sex1").prop("checked", "checked")
                } else {
                    $("#sex2").prop("checked", "checked")
                }
                $("#updateBirth").val(row.birth)
                $("#Id").val(row.id)
                $("#updateIdcard").val(row.idcard)
                $("#updateAddress").val(row.address)
                $("#updateMobile").val(row.mobile)
            }

            $("#updateButton").click(function () {
                $("#updateForm").form("submit", {
                    url: "${pageContext.request.contextPath}/patient/update",
                    success: function (data) {
                        if (data == "true") {
                            $("#myTable").datagrid("load")
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
                    url: "${pageContext.request.contextPath}/patient/insert",
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
                                url: "${pageContext.request.contextPath}/patient/multiDelete",
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
患者名称:<input type="text" id="name"/><input type="button" value="搜索" onclick="search()"/>
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
        患者名称:<input type="text" name="name"/><br/>
        患者性别:<input type="radio" name="sex" value="0"/>男<input type="radio" name="sex" value="1"/>女
        出生日期:<input type="text" name="birth"/><br/>
        身份证号:<input type="text" name="idcard"/><br/>
        患者地址:<input type="text" name="address"/><br/>
        联系方式:<input type="text" name="mobile"/>
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
        患者名称:<input type="text" id="updateName" name="name"/><br/>
        患者性别:<input type="radio" id="sex1" name="sex" value="0"/>男
        <input type="radio" id="sex2" name="sex" value="1"/>女
        出生日期:<input type="text" id="updateBirth" name="birth"/><br/>
        身份证号:<input type="text" id="updateIdcard" name="idcard"/><br/>
        患者地址:<input type="text" id="updateAddress" name="address"/><br/>
        联系方式:<input type="text" id="updateMobile" name="mobile"/>
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
