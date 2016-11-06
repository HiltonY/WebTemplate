<!DOCTYPE html>
<html>
<body>

<div id="member-detail-context" class="nav-tabs-custom">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#activity" data-toggle="tab">基本信息</a></li>
        <li><a href="#timeline" data-toggle="tab">历史记录</a></li>
    </ul>
    <div class="tab-content">
        <div class="active tab-pane" id="activity">
            <div class="row">
                <div hidden="hidden">
                    <input id="memberId" value="${member.memberId}">
                </div>
                <div class="col-lg-6">
                    <label class="col-lg-12">姓名a </label>
                    <input id="memberName" type="text" class="form-control" value="${member.memberName}"
                           placeholder="点击输入 ..." disabled>
                </div>
                <div class="col-lg-6">
                    <label class="col-lg-12">性别</label>

                    <select id="gender" class="form-control select2" style="width: 100%;" disabled>
                        <option selected="selected">男</option>
                        <option>女</option>
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
                        <input type="text" class="form-control pull-right" value="${member.birthday?date}"
                               id="datepicker" placeholder="点击输入 ..." disabled>
                    </div>
                </div>
                <div class="col-lg-6">
                    <label class="col-lg-12">联系电话</label>
                    <input id="phoneNumber" type="text" class="form-control" value="${member.phoneNumber}"
                           placeholder="点击输入 ..." disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <label class="col-lg-12">身份证号</label>
                    <input id="certificate" type="text" class="form-control" value="${member.certificate}"
                           placeholder="点击输入 ..." disabled>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <label class="col-lg-12">联系地址</label>
                    <input id="address" type="text" class="form-control" value="${member.address}"
                           placeholder="点击输入 ..." disabled>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <label class="col-lg-12"></label>
                    <button id="editMember" type="submit" class="btn btn-default" onclick="editMember(this)">编辑</button>
                    <button id="submit" type="submit" class="btn btn-info pull-right" onclick="submitMember()" disabled>提交</button>
                </div>
            </div>




        </div>
        <!-- /.box-body -->

        <!-- /.tab-pane -->
        <div class="tab-pane" id="timeline">
            <!-- The timeline -->
            <ul class="timeline timeline-inverse">

            <#list memberEvent as event>
                <!-- timeline time label -->
                <li class="time-label">

                    <#if event.eventType=2>
                    <span class="bg-red">
                    <#else><span class="bg-green">
                    </#if>
                ${event.eventTime?date}
                </span>
                </li>
                <!-- /.timeline-label -->
                <!-- timeline item -->
                <li>
                    <i class="fa fa-envelope bg-blue"></i>

                    <div class="timeline-item">
                        <span class="time"><i class="fa fa-clock-o"></i> ${event.eventTime?time}</span>

                        <h3 class="timeline-header"><strong>${event.title}</strong></h3>

                        <div class="timeline-body">
                        ${event.eventDesc}
                        </div>

                    </div>
                </li>
            </#list>


            </ul>

        </div>
        <!-- /.tab-pane -->

    </div>
    <div class="tab-content">

    </div>
    <!-- /.tab-content -->
</div>
</body>
</html>