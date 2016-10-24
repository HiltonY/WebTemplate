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
                <div class="col-lg-6">
                    <label class="col-lg-12">姓名a </label>
                    <input id="name" type="text" class="form-control" value="${member.memberName}"
                           placeholder="点击输入 ...">
                </div>
                <div class="col-lg-6">
                    <label class="col-lg-12">性别</label>

                    <select id="gender" class="form-control select2" style="width: 100%;">
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
                    <label>联系地址</label>
                    <input id="address" type="text" class="form-control" placeholder="点击输入 ..." >
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
    <div class="tab-content">
        <button id="addMember" type="submit" class="btn btn-default" onclick="addMember()">新增</button>
        <button id="submit" type="submit" class="btn btn-info pull-right" onclick="addMember()">提交</button>
    </div>
    <!-- /.tab-content -->
</div>
</body>
</html>