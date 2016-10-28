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

<#if (trackhistory?size<=4 )>

    <#list 0..(trackhistory?size-1)/2 as t>

        <div class="row">
            <div class="col-md-12">
            <#--<div class="box box-primary">-->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">第${trackhistory[t*2].floor}层</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="box-body no-padding">
                                    <div style="width:100%; height:400px;background:url(/img/map.jpg);background-size:100% 100%; ">

                                        <#list trackhistory[t*2].locationList as location>

                                            <div id="point" style="width:99%; height:99%;">
                                                <div style="width:10px;height: 10px; background-color:
                                                    <#if location.status =2>#c23321
                                                    <#else>#00c242
                                                    </#if>
                                                        ;position: relative;left: ${location.xPosition}px;top: ${location.yPosition}px;border-radius:5px;"></div>

                                            </div>
                                        </#list>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">

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
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">第${trackhistory[t*2+1].floor}层</h3>
                    </div>
                    <div class="box-body no-padding">
                        <div style="width:500px; height:400px;background:url(/img/map.jpg);background-size:100% 100%; ">

                            <#list trackhistory[t*2+1].locationList as location>

                                <div id="point" style="width:99%; height:99%;">
                                    <div style="width:10px;height: 10px; background-color:
                                        <#if location.status =2>#c23321
                                        <#else>#00c242
                                        </#if>
                                            ;position: relative;left: ${location.xPosition}px;top: ${location.yPosition}px;border-radius:5px;"></div>

                                </div>
                            </#list>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </#list>
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


</section>
</#if>