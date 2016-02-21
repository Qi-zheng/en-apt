<%--
  Created by IntelliJ IDEA.
  User: Vincent
  Date: 2016/1/5
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp"%>
<html>
<head>
    <title></title>
    <link href="${ctx}/static/css/validation.css"  rel="stylesheet" type="text/css" />
    <link href="${ctx}/static/css/login.css"  rel="stylesheet" type="text/css" />
</head>
<body>
<div>
    <div class="content" align="center" >
        <div class="login-forms" align="center" >
            <h1><span>手机找回</span></h1>
            <form id="forgetPassWordForm" action="${ctx}/revisePassWord" method="get">
                <table class="data login-table" style="border-bottom: 1px; width: 650px;">
                <tr>
                    <th>手机：</th>
                    <td ><input type="text" id="phone" name="p_h_o" />
                    </td>
                </tr>
                <tr>
                	<th>验证码：</th>
                	<td  style="width: 270px;"><input type="text" id="jcaptchaCode"  name="jcaptchaCode" class="half"/>
                	<img id="jcaptcha" class="jcaptcha-btn jcaptcha-img" style="margin-left:4px;vertical-align: middle;" width="141" height="42" src="${ctx}/jcaptcha.jpg" title="点击更换验证码">
                    </td>
                </tr>
                <tr>
                    <th>手机验证码：</th>
                    <td><input type="text" id="regCode"  name="regCode" class="half" />
                    <button type="button"  id="getRegCodeBtn" class="button gray">获取短信验证码</button></td>
                </tr>
                <tr>
                    <th>&nbsp;</th>
                    <td><input id="sub" type="submit"  value="下一步" class="full-btn"></td>          	
                </tr>
            </table>
            </form>
        </div>
       


    <script type="text/javascript" src="${ctx}/static/js/jquery.validate.min.js" ></script>
    <script type="text/javascript">

    $().ready(function() {

        var waitTime = 60;
        var regCode = "";
        jQuery.validator.addMethod("isRegCode", function(value, element) {
            return value === regCode;
        }, "验证码错误");
        
        jQuery.validator.addMethod("isJcaptchaCode", function(value, element) {
        	var state =false;

        	$.ajax({
                url:'${ctx}/reviseYanZheng',
                type: "post",               //数据发送方式
                data:{jcaptchaCode: $('#jcaptchaCode').val()},
                success:function(data){
                	if(!data)
                		$('#jcaptcha').click();
                	state = data;
                },
                error:function(data){

                },
                async: false // 同步
            });
            return state;
        }, "验证码错误");

        var validator = $("#forgetPassWordForm").validate({
        	onkeyup:false,
            rules: {
                    p_h_o: {
                        required: true,
                        minlength: 11,
                        maxlength: 11,
                        digits:true,
                        remote: {
                            url: "${ctx}/user/register/checkPhone_find",     //后台处理程序
                            type: "post",               //数据发送方式
                            dataType: "json",           //接受数据格式
                            data: {                     //要传递的数据
                                p_h_o: function() {
                                    return $('#phone').val();
                                }
                            }
                        }

                    },
                	jcaptchaCode:{
                        required: true,
	                	isJcaptchaCode:true
                	},
                	regCode:{
	                    required: true,
	                    isRegCode:true
                	}
            },
            messages: {
                p_h_o: {
                    required: "请输入11位手机号码",
                    minlength: "请输入11位手机号码",
                    maxlength: "请输入11位手机号码",
                    digits: "请输入11位手机号码",
                    remote: "手机号未被注册"
                },
                jcaptchaCode:{
                	required:"请输入验证码！",
                	isJcaptchaCode:"请输入正确验证码！"
                },
                regCode:{
                    required: "请填写验证码！",
                    isRegCode:"请输入正确验证码！"
                    
                }
            },

            errorPlacement: function(error, element) {
                if($(element).attr("name") == "regCode"){
                    error.appendTo($("#getRegCodeBtn").parent());
                }else {
                    error.appendTo(element.parent());
                }
            }
        });
        function regCodefunc(o){

            if (waitTime == 0) {
                o.removeAttr("disabled")
                o.html("获取短信验证码");
                waitTime = 60;
            } else {
                o.attr("disabled", true);
                o.html("重新发送(" + waitTime + "s)");
                waitTime--;
                setTimeout(function() {
                    regCodefunc(o)
                },1000);
            }
        }
        
        
        $("#getRegCodeBtn").on("click",function(){
        	//验证phone字段是否为空
            if(!validator.element("#phone") || !validator.element("#jcaptchaCode")){
                return;
            }
        
            regCodefunc($(this));
            $.ajax({
                url:'${ctx}/user/register/smsVerificationCode',
                data:{phoneNumber: $("#phone").val()},
                success:function(data){
                	//alert(data);
                	if(data=='no'){
                		$('#phone-error').html("手机号码不存在");
                		$('#phone-error').show();
                		//$('#phone').val("");
                		//$('#regCode').val("");
                		return;
                	}
                    regCode = data;
                },
                error:function(data){

                }
                
            });
        });
    });
    //前台获取验证码
     $(function() {
			$(".jcaptcha-btn").click(
					function() {
						$(".jcaptcha-img").attr(
								"src",
								'${pageContext.request.contextPath}/jcaptcha.jpg?'
										+ new Date().getTime());
					});
			});
    </script>
</div>
</body>
</html>
