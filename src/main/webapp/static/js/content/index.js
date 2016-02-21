/**
 * Created by Administrator on 2015/8/11.
 */


function setAnimateNumber(stepName,value){
    var comma_separator_number_step = $.animateNumber.numberStepFactories.separator(',')
    $('#'+ stepName).animateNumber(
        {
            number: value,
            numberStep: comma_separator_number_step
        }
        ,1500
    );
}

$("#banner_content").addClass("ac");

$(".banner").unslider({
    dots:true,
    fluid:true
});

