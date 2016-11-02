/**
 * Created by YX on 2016/10/23.
 *
 */

function submitMember() {
    if($("#memberId").val()==''){
        addMember();
    }
    else {
        updateMember();
    }
}
function addMember() {
    var params = {};
    params.memberName = $("#memberName").val();
    params.gender = $("#gender").val();
    params.birthday = $("#datepicker").val();
    params.address = $("#address").val();
    params.phoneNumber = $("#phoneNumber").val();
    alert("member_detail.ftl内部");
    alert(params);
    $.ajax({
        type: 'POST',
        url: "/member/addMember",
        data: params,
        success: function (result) {
            alert("result");
        },
        dataType: "text"
    });

}

function  editMember(_this) {

    $("#submit").removeAttr("disabled");
    $("#memberName").removeAttr("disabled");
    $("#gender").removeAttr("disabled");
    $("#datepicker").removeAttr("disabled");
    $("#address").removeAttr("disabled");
    $("#phoneNumber").removeAttr("disabled");

}

function updateMember() {
    alert("更新客户信息");
}
function setMemberDetail(item) {

    $("#member-detail-box").empty();
    $("#member-detail-box").load("/member/memberDetail?memberId="+item);
}