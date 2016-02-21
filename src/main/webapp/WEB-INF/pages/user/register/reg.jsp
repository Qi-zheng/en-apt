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
            <h1><span>入圃登记</span></h1>
            <form id="loginForm" action="${ctx}/user/register/registerUser" method="post">
                <table class="data login-table" style="border-bottom: 1px; width: 650px;" >
                <tr>
                    <th>手机：</th>
                    <td colspan="2">
                        <input type="text" id="phone" name="p_h_o" /></td> 
                </tr>
                <tr>
                    <th>密码：</th>
                    <td colspan="2"><input type="password" name="p_w_d" /></td>
                </tr>
                <tr>
                    <th>验证码：</th>
                    <td style="width: 270px;"><input type="text" id="jcaptchaCode" name="jcaptchaCode" class="half" style="float: left;" />
	                    	<img id="jcaptcha" class="jcaptcha-btn jcaptcha-img" style="margin-left:4px;vertical-align: middle;" width="141" height="42" src="${ctx}/jcaptcha.jpg" title="点击更换验证码">
                    </td>
                </tr>
                 <tr>
                    <th>手机验证码：</th>
                    <td><input type="text" id="regCode"  name="regCode" class="half" />
                     <button type="button"  id="getRegCodeBtn" class="button gray">获取短信验证码</button>
                     <c:if test="${not empty error}">
                     		<label class="error">请输入正确验证码!</label>
                     </c:if>
                     </td>
                </tr>
       
                <tr>
                    <th>&nbsp;</th>
                    <td><input type="checkbox" name="readAgreement" id="readAgreement">
                        <label for="readAgreement">阅读并接受<a onclick="openDialogByIframe(750,500,'双创云平台协议','${ctx}/user/register/agreement')">《双创云平台协议》</a></label></td>
                </tr>
                <tr>
                    <th>&nbsp;</th>
                    <td><input id="sub" type="submit" name="submit" value="注册" class="full-btn"></td>
                </tr>
            </table>
            </form>
        </div>
       
    </div>
    
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

            var validator = $("#loginForm").validate({
        		onkeyup:false,
                rules: {
                    p_h_o: {
                        required: true,
                        minlength: 11,
                        maxlength: 11,
                        digits:true,
                        remote: {
                            url: "${ctx}/user/register/checkPhone",     //后台处理程序
                            type: "post",               //数据发送方式
                            dataType: "json",           //接受数据格式
                            data: {                     //要传递的数据
                                p_h_o: function() {
                                    return $("#phone").val();
                                }
                            }
                        }

                    },
                    p_w_d: {
                        required: true,
                        minlength: 6,
                        maxlength:20
                    },
                    jcaptchaCode:{
                    	required:true,
                    	isJcaptchaCode:true
                    },
                    regCode: {
                        required: true,
                        isRegCode: true
                    },
                    readAgreement:{
                        required: true
                    }
                },
                messages: {
                    p_h_o: {
                        required: "请输入11位手机号码",
                        minlength: "请输入11位手机号码",
                        maxlength: "请输入11位手机号码",
                        digits: "请输入11位手机号码",
                        remote: "手机号已被注册"
                    },
                    p_w_d: {
                        required:"请输入密码",
                        minlength:"密码长度大于6位",
                        maxlength:"密码长度应小于20位"
                    },
                    jcaptchaCode:{
                    	required:"请输入验证码",
                    	isJcaptchaCode:"请输入正确验证码!"
                    },
                    regCode:{
                        required:"请输入验证码",
                    	isRegCode:"请输入正确验证码！"
                    },
                    readAgreement:{
                        required: "请阅读并接受协议"
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
                if(!validator.element("#phone") || !validator.element("#jcaptchaCode")){
                    return;
                }
                regCodefunc($(this));
                $.ajax({
                    url:'${ctx}/user/register/smsVerificationCode',
                    data:{phoneNumber: $("#phone").val(), state:true},
                    success:function(data){
                        regCode = data;
                    },
                    error:function(data){

                    }
                })
            });
            
       //从后台获取验证码 
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
