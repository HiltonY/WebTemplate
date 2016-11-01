<html>
<head>

</head>
<body>
<section class="content-header">
<#--main标题-->
    <h1>
        客户历史轨迹图
    </h1>
<#--右侧快捷导航栏-->
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
    </ol>
</section>
<section class="content">
    <div class="box box-default">
        <div class="box-header with-border">
            <h3 class="box-title">请选择查询条件</h3>
        </div>
        <div class="box-body">
            <div class="row">

                <div class="col-md-2">
                    <select class="form-control select2" style="width: 100%;">

                        <option selected="selected">Alabama</option>
                        <option>Alaska</option>
                        <option>Delaware</option>
                        <option>Tennessee</option>
                        <option>Texas</option>
                        <option>Washington</option>
                    </select>
                </div>
            </div>
        </div>

    </div>

<#--<#if (trackhistory?size<=4 )>-->

    <#--<#list 0..(trackhistory?size-1)/2 as t>-->
    <div id="track_history_detail">

    </div>
<#--<#list trackhistory as track>-->
<#--<div style="width:50%; height:400px;">-->
<#--<div style="padding: 10px;position: relative;">-->
<#--<h3 style="display: inline-block;font-size: 18px;margin: 0;line-height: 1;">-->
<#--第${track.floor}层-->
<#--</h3>-->
<#--</div>-->
<#--<!-- /.box-header &ndash;&gt;-->

<#--<!-- /.box-body &ndash;&gt;-->
<#--</div>-->

<#--</#list>-->
<#--</#if>-->

</section>


</body>
</html>