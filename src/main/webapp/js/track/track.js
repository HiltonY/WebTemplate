/**
 * Created by YX on 2016/10/23.
 *
 */

function clickPositionPoint(_this,floor,xPosition,yPosition,sampleTime,status) {
    // $(_this).parent().children(".point").each(
    //     function () {
    //         $(this).css({width:'10px',height:'10px'});
    //     }
    // );
    // $(_this).parent().child(".point").css({width:'10px',height:'10px'});
    $(".point").css({width:'10px',height:'10px'});
    $(_this).css({width:'20px',height:'20px'});

    $("#floor"+floor).text(floor.toString());
    $("#position"+floor).text("("+xPosition+","+yPosition+")");
    $("#time"+floor).text(sampleTime);
    $("#status"+floor).text(status==0?'预警':'正常');
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