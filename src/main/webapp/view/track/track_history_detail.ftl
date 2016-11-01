<html>
<body>
<#list detail as item>
<div class="row">
    <div class="col-md-12">
    <#--<div class="box box-primary">-->
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">第${item.floor}层</h3>
            </div>
            <div class="box-body">
                <div class="row">
                    <div class="col-md-8">
                        <div class="box-body no-padding">
                            <div style="width:100%; height:400px;background:url(/img/map.jpg);background-size:100% 100%; ">

                                <#list item.locationList as location>

                                    <div style="width:99%; height:99%;">
                                        <div style="width:10px;height: 10px; border-radius:5px;background-color:
                                            <#if location.status =2>#c23321
                                            <#else>#00c242
                                            </#if>
                                                ;position: absolute;left: ${location.xPosition}px;bottom: ${location.yPosition}px;"
                                             onclick="clickPositionPoint(this,${location.floor},${location.xPosition},${location.yPosition},'${location.sampleTime?string("yyyy-MM-dd HH:mm:ss")}',${location.status})"></div>
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
                                    <td id="floor">测试</td>
                                </tr>
                                <tr>
                                    <th>时间</th>
                                    <td id="time">测试</td>
                                </tr>
                                <tr>
                                    <th>坐标位置</th>
                                    <td id="position">测试</td>
                                </tr>
                                <tr>
                                    <th>状态</th>
                                    <td id="status">测试</td>
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
</body>
</html>