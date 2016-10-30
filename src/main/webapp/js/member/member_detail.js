/**
 * Created by YX on 2016/10/23.
 *
 */

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
function setMemberDetail(item) {

    $("#member-detail-box").empty();
    $("#member-detail-box").load("/member/memberDetail?memberId="+item);
}