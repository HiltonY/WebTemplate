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

<body>


<!-- Content Wrapper. Contains page content -->
<div>
    <#--echart配置-->
    <#--<script src="/js/echarts/dist/echarts.js"></script>-->
    <#--<script type="text/javascript">-->
        <#--// 路径配置-->
        <#--require.config({-->
            <#--paths: {-->
                <#--echarts: '/js/echarts/dist'-->
            <#--}-->
        <#--});-->
        <#--// 使用-->
        <#--require(-->
                <#--[-->
                    <#--'echarts',-->
                    <#--'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载-->
                <#--],-->
                <#--function (ec) {-->
                    <#--// 基于准备好的dom，初始化echarts图表-->
                    <#--var chart1 = ec.init(document.getElementById('chart1'));-->

                    <#--var option1 = {-->
                        <#--tooltip: {-->
                            <#--show: true-->
                        <#--},-->
                        <#--legend: {-->
                            <#--data:['销量']-->
                        <#--},-->
                        <#--xAxis : [-->
                            <#--{-->
                                <#--type : 'category',-->
                                <#--data : ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]-->
                            <#--}-->
                        <#--],-->
                        <#--yAxis : [-->
                            <#--{-->
                                <#--type : 'value'-->
                            <#--}-->
                        <#--],-->
                        <#--series : [-->
                            <#--{-->
                                <#--"name":"销量",-->
                                <#--"type":"bar",-->
                                <#--"data":[5, 20, 40, 10, 10, 20]-->
                            <#--}-->
                        <#--]-->
                    <#--};-->

                    <#--// 为echarts对象加载数据-->
                    <#--chart1.setOption(option1);-->
                <#--}-->
        <#--);-->
    <#--</script>-->


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
            <div id="chart1" style="height:400px">

            </div>
            <div id="chart2" class="col-md-6">

            </div>
        </div>
    </section>

</div>
    <!-- Content Wrapper. Contains page content -->

<!-- jQuery 2.2.3 -->
<script src="/js/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/js/bootstrap/bootstrap.min.js"></script>


<script>

</script>
</body>
</html>
