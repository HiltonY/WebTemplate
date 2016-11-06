<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Starter</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="/css/bootstrap/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/css/AdminLTE.css">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect.
    -->
    <link rel="stylesheet" href="/css/skins/skin-blue.min.css">

    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="/js/plugins/datepicker/datepicker3.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <!-- jQuery 2.2.3 -->
    <script src="/js/jquery/1.11.1/jquery.min.js"></script>
    <!-- Bootstrap 3.3.6 -->
    <script src="/js/bootstrap/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="/js/app.min.js"></script>
    <![endif]-->

    <script>

        $(document).ready(function(){

            $("#member-detail-box").empty();
            $("#member-detail-box").load("/member/memberDetail");

        });
    </script>
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body>


<!-- Content Wrapper. Contains page content -->
<div>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <#--main标题-->
        <h1>
            Data Tables
            <small>advanced tables</small>
        </h1>
            <#--右侧快捷导航栏-->
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Tables</a></li>
            <li class="active">Data tables</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div id="member_list" class="col-md-6">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">客户列表</h3>
                    </div>
                    <!-- general form elements -->
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>姓名</th>
                                <th>性别</th>
                                <th>年龄</th>
                                <th>当前状态</th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list memberList as item>
                            <tr>
                                <td><a href="javascript:setMemberDetail(${item.memberId})">${item.memberName}</a></td>
                                <td>${item.gender}</td>
                                <td>${item.age}</td>
                                <td><#if item.status==1>正常<#else>预警</#if></td>
                            </tr>
                            </#list>
                        </table>
                    </div>
                </div>
            </div>
            <div id="member_detail" class="col-md-6">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">客户详情</h3>
                    </div>
                    <!-- general form elements -->
                <#--col-lg-6-->
                    <div id="member-detail-box" class="box-body">

                        <div id="member-detail-context" class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#activity" data-toggle="tab">基本信息</a></li>
                                <li><a href="#timeline" data-toggle="tab">历史记录</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="active tab-pane" id="activity">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label class="col-lg-12">姓名</label>
                                            <input id="memberName" type="text" class="form-control" value="${member.memberName}"
                                                   placeholder="点击输入 ...">
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="col-lg-12">性别</label>

                                            <select id="gender" class="form-control select2" style="width: 100%;">
                                                <option selected="selected" value=1>男</option>
                                                <option value=2>女</option>
                                            </select>
                                            <#--<input id="gender" type="text" class="form-control" placeholder="Enter ..." disabled>-->
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label class="col-lg-12">出生日期</label>
                                            <div class="input-group date">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar"></i>
                                                </div>
                                                <input type="text" class="form-control pull-right" id="datepicker" placeholder="点击输入 ...">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="col-lg-12">联系电话</label>
                                            <input id="phoneNumber" type="text" class="form-control" placeholder="点击输入 ...">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <label class="col-lg-12">身份证号</label>
                                            <input id="certificate" type="text" class="form-control" placeholder="点击输入 ..." >
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <label class="col-lg-12">联系地址</label>
                                            <input id="address" type="text" class="form-control" placeholder="点击输入 ..." >
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <label class="col-lg-12"></label>
                                            <button id="addMember" type="submit" class="btn btn-info pull-right"
                                                    onclick="addMember()">新增
                                            </button>
                                        </div>
                                    </div>

                                </div>
                                <!-- /.box-body -->

                                <!-- /.tab-pane -->
                                <div class="tab-pane" id="timeline">
                                    <!-- The timeline -->

                                </div>
                                <!-- /.tab-pane -->

                            </div>
                            <#--<div class="tab-content">-->

                            <#--</div>-->
                            <!-- /.tab-content -->
                        </div>
                        <!-- /.nav-tabs-custom -->

                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
    <!-- Content Wrapper. Contains page content -->

<!-- jQuery 2.2.3 -->
<script src="/js/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/js/bootstrap/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="/js/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/js/plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- bootstrap datepicker -->
<script src="/js/plugins/datepicker/bootstrap-datepicker.js"></script>
<script>
    $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });
    });
    $('#datepicker').datepicker({
        autoclose: true
    });

//    $(document).ready(function(){
//
//        $("#addMember").click(
//                function(){
//                    alert("aa");
//                }
//        );
//
//
//    });

</script>
</body>
</html>
