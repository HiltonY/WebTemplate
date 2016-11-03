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
                        <#list memberList as member>
                            <#if member_index==0>
                                <option selected="selected">${member.memberName}</option>
                            <#else>
                                <option>${member.memberName}</option>
                            </#if>


                        </#list>
                    </select>
                </div>
            </div>
        </div>

    </div>

<#--<#if (trackhistory?size<=4 )>-->

    <#--<#list 0..(trackhistory?size-1)/2 as t>-->
    <div id="track_history_detail">
    <#list trackHistory?keys as key>
    <#--<#list trackHistory as item>-->

        <div class="row">
            <div class="col-md-12">
            <#--<div class="box box-primary">-->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">第${key}层</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="box-body no-padding">
                                    <div style="width:100%; height:400px;background:url(/img/map.jpg);background-size:100% 100%; ">

                                        <#list trackHistory[key] as location>

                                            <div style="width:99%; height:99%;">
                                                <#--<div style="width:10px;height: 10px; border-radius:5px;background-color:-->
                                                    <#--<#if location.status =2>#c23321-->
                                                    <#--<#else>#00c242-->
                                                    <#--</#if>-->
                                                        <#--;position: absolute;left: ${location.xPosition}px;bottom: ${location.yPosition}px;"-->
                                                     <#--onclick="clickPositionPoint(this,${location.floor},${location.xPosition},${location.yPosition},'${location.sampleTime?string("yyyy-MM-dd HH:mm:ss")}',${location.status})">-->
                                                    <#---->
                                                <#--</div>-->
                                                    <img class="point"
                                                    <#if location.status =1>
                                                    <#--正常-->
                                                        <#if location.upOrDown=1>
                                                        <#--上楼-->
                                                         src="/images/up_green.png"
                                                        <#elseif location.upOrDown=-1>
                                                         <#--下楼-->
                                                         src="/images/down_green.png"
                                                         <#else>
                                                         src="/images/green.png"
                                                        </#if>
                                                    <#else>
                                                    <#--预警-->
                                                        <#if location.upOrDown=1>
                                                        <#--上楼-->
                                                         src="/images/up_red.png"
                                                        <#elseif location.upOrDown=-1>
                                                        <#--下楼-->
                                                         src="/images/down_red.png"
                                                        <#else>
                                                         src="/images/red.png"
                                                        </#if>
                                                    </#if>
                                                      width="10px"; height="10px"; style="position:absolute; left: ${location.xPosition}px;bottom: ${location.yPosition}px;"
                                                         onclick="clickPositionPoint(this,${location.floor},${location.xPosition},${location.yPosition},'${location.sampleTime?string("yyyy-MM-dd HH:mm:ss")}',${location.status}) ">

                                            </div>
                                        </#list>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <p class="lead">监控数据</p>

                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th style="width:50%">楼层</th>
                                            <td id="floor${item.floor}"></td>
                                        </tr>
                                        <tr>
                                            <th>时间</th>
                                            <td id="time${item.floor}"></td>
                                        </tr>
                                        <tr>
                                            <th>坐标位置</th>
                                            <td id="position${item.floor}"></td>
                                        </tr>
                                        <tr>
                                            <th>状态</th>
                                            <td id="status${item.floor}"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="box-footer">
                        <div class="row">
                            <div class="col-sm-3 col-xs-6">
                                <div class="description-block border-right">
                                <#--<span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 17%</span>-->
                                    <h5 class="description-header">1小时35分钟</h5>
                                    <span class="description-text">楼层总停留时间</span>
                                </div>
                                <!-- /.description-block -->
                            </div>
                            <!-- /.col -->
                            <div class="col-sm-3 col-xs-6">
                                <div class="description-block border-right">
                                <#--<span class="description-percentage text-yellow"><i class="fa fa-caret-left"></i> 0%</span>-->
                                    <h5 class="description-header">0次</h5>
                                    <span class="description-text">总预警次数</span>
                                </div>
                                <!-- /.description-block -->
                            </div>
                            <!-- /.col -->
                            <div class="col-sm-3 col-xs-6">
                                <div class="description-block border-right">
                                <#--<span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 20%</span>-->
                                    <h5 class="description-header">1次</h5>
                                    <span class="description-text">上楼次数</span>
                                </div>
                                <!-- /.description-block -->
                            </div>
                            <!-- /.col -->
                            <div class="col-sm-3 col-xs-6">
                                <div class="description-block">
                                <#--<span class="description-percentage text-red"><i class="fa fa-caret-down"></i> 18%</span>-->
                                    <h5 class="description-header">1次</h5>
                                    <span class="description-text">下楼次数</span>
                                </div>
                                <!-- /.description-block -->
                            </div>
                        </div>
                        <!-- /.row -->
                    </div>
                </div>

            </div>
        </div>
    </#list>
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