<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/7/1
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>邮箱找回密码页面</title>
    <script type="text/javascript" src="${ctx}/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/localization/messages_zh.min.js"></script>
    <link rel="stylesheet" href="${ctx}/static/css/main.css" type="text/css" />
    <style type="text/css">
    	.wcontainer {
		    width: 1200px;
		    margin: 0px auto;
		    min-height: 660px;
		}
		.wrap-boxes {
		    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
		    background: #FFF none repeat scroll 0% 0%;
		}
		.wwrap {
		    padding: 20px;
		}
		.wheader-wrap {
		    padding-bottom: 20px;
		    border-bottom: 1px solid #D0D6D9;
		}
		.wheader-wrap h1 {
		    color: #4D5559;
		    font-size: 18px;
		    line-height: 100%;
		}
		h3 {
		    font-size: 16px;
		    line-height: 32px;
		}
		.ipt-email {
    background-position: 0px 0px;
}
.ipt {
    width: 291px;
    padding: 9px 9px 9px 48px;
    background: #FFF url("/static/img/common/ipt-sprite.png") no-repeat scroll 0px 0px;
}
.ipt {
    color: #14191E;
    background-color: #FFF;
    border: 1px solid #98A1A6;
    height: 20px;
    padding: 9px;
    font-size: 14px;
    line-height: 20px;
    border-radius: 0px;
    transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s;
    box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.075) inset;
}
.form-control-verify input {
    background: #FFF none repeat scroll 0% 0%;
    padding-left: 7px;
    width: 120px;
}
.form-control-verify input, .form-control-verify img, .form-control-verify span {
    vertical-align: top;
}
.form-control-verify span {
    display: inline-block;
    color: #39B94E;
    cursor: pointer;
    height: 40px;
    line-height: 150%;
    margin-top: -4px;
    margin-left: 2px;
}
.btn-green:hover, .btn-green:focus, .btn-green.focus {
    color: #FFF;
    background-color: #00D747;
    border-color: #00D747;
}
.btn-green:link, .btn-green:visited {
    color: #FFF;
}
.btn:hover, .btn:focus, .btn.focus {
    color: #FFF;
    text-decoration: none;
}
.btn-block {
    display: block;
    width: 100%;
    padding: 0px;
}
.btn-green {
    color: #FFF;
    background-color: #00B33B;
    border-color: #00B33B;
    border-style: solid;
    border-width: 1px;
    cursor: pointer;
    transition: all 0.3s ease 0s;
    width: 138px;
    height: 38px;
    line-height: 38px;
    font-size: 14px;
}
.btn {
    display: inline-block;
    margin-bottom: 0px;
    font-weight: 200;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    text-decoration: none;
    box-sizing: content-box;
    background-image: none;
    border: 1px solid transparent;
    white-space: nowrap;
    outline: medium none;
    -moz-user-select: none;
}
.login-addon a:hover {
    text-decoration: underline;
}
.login-addon a {
    color: #0EB4FF;
    margin-left: 118px;
}
.js-forgotpwd-form-wrap{
	margin-left:38%;
	margin-top: 60px;
	padding-bottom: 101px;
}
#js-forgot-submit{
	width: 311px;
margin-top: 30px;
}
.form-control-verify{
	margin-top: 21px;
}
img{
	margin-left: 11px;
}
.error{
			color:#ff0000
		}
    </style>
</head>
<body>

  <div class="wcontainer">
    <div class="wwrap wrap-boxes">
        <div class="wheader-wrap">
            <h1>忘记密码</h1>
        </div>
        <div class="page-forgotpwd">
            <div class="page-forgotpwd-wrap">
                <div class="js-forgotpwd-form-wrap">
                    <h3>通过注册邮箱链接重设密码</h3>
                    <form id="js-forgot-form" method="post" action="${ctx}/forgetPassword/sendPasswordInfo">
                        <div class="form-control">
                            <input name="username" data-validate="email" class="ipt ipt-email" placeholder="请输入登录邮箱" type="text">
                           
                        </div>
                        <div class="form-control form-control-verify">
                            <input name="jcaptchaCode" class="ipt" placeholder="请输入验证码" type="text">
                            <img class="jcaptcha-btn jcaptcha-img" src="${ctx}/jcaptcha.jpg" title="点击更换验证码">
                            <span class="js-change-verify-code">看不清<br>换一张</span>
                           
                        </div>
                        <div>
                            <p class="tips" id="js-g-forgot-error">&nbsp;</p>
                            <div>
                                <a href="javascript:void(0);" id="js-forgot-submit" class="btn btn-green link-btn btn-block">提交</a>
                            </div>
                            <p class="login-addon"><br><a href="${ctx}/login"> 返回立即登录</a></p>
                        </div>
                    </form>
                </div>
              
            </div>
        </div>
    </div>
 </div>


<script type="text/javascript">
	$(function(){
		//进行表单的验证
		$("#js-forgot-form").validate({
			rules:{
				"username":{
 				   required: true,
 				   email:true
 			   },
 			  "jcaptchaCode":{
 				 required: true
 			  }
			}
		});
		$("#js-forgot-submit").on("click",function(){
			$("#js-forgot-form").submit();
		});
		
		$(".js-change-verify-code").click(
				function() {
					$(".jcaptcha-img").attr(
							"src",
							'${pageContext.request.contextPath}/jcaptcha.jpg?'
									+ new Date().getTime());
				});
	});
      
</script>
</body>
</html>
