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
.pwd-reset-wrap {
    width: 550px;
    margin: 100px auto;
}
.wlfg-wrap .label-name {
    float: left;
    width: 120px;
    text-align: right;
    height: 40px;
    line-height: 40px;
    color: #656E73;
    font-size: 14px;
}
.rlf-input-pwd {
    background-position: -80px -774px;
}
.rlf-btn-green:hover {
    background-color: #33A646;
}
.btn-block {
    display: block;
    width: auto;
}
.rlf-btn-green {
    color: #FFF;
    font-size: 14px;
    background-color: #39B94E;
    height: 40px;
    line-height: 40px;
    width: 418px;
    cursor: pointer;
    text-align: center;
    transition: background-color 0.2s ease 0s;
    margin-top: 15px;
}
.wlfg-wrap .rlf-group {
    margin-left: 130px;
}
.pwd-reset-wrap .rlf-input {
    width: 360px;
}
.rlf-input-email {
    background-position: -80px -678px;
}
.rlf-input {
    border: 1px solid #D0D6D9;
    width: 260px;
    height: 24px;
    line-height: 24px;
    padding: 7px 7px 7px 48px;
    font-size: 14px;
    background: #FFF url("/static/images/rl-sprite.png") no-repeat scroll -80px -678px;
    box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.075) inset;
    transition: padding 0.15s ease 0s;
}
a, input, button {
    outline: medium none;
}
.rlf-tip-wrap {
    font-size: 12px;
    height: 30px;
}
#confirmPassword{
	margin-top: 20px;
}
#postEmail{
	margin-bottom: 20px;
}
.sucess{
	text-align: center;
}
.sucess a{
	color: #33A646;
}
.failure{
	text-align: center;
}
    </style>
</head>
<body>

<div class="wcontainer">
    <div class="wwrap wrap-boxes">
        <div class="wheader-wrap">
            <h1>重设密码</h1>
        </div>
        <div class="pwd-reset-wrap">
           
                <div class="wlfg-wrap" id="postEmail">
                    <label class="label-name" for="">邮箱</label>
                    <div class="rlf-group">
                        <input name="email" disabled="disabled" readonly="readonly" class="rlf-input rlf-input-email" value="${email}" type="text">
                    </div>
                </div>
                <div class="wlfg-wrap">
                    <label class="label-name" for="newpass">新密码</label>
                    <div class="rlf-group">
                        <input data-validate="password" name="newpass" id="newpass" class="rlf-input rlf-input-pwd" placeholder="请输入密码" type="password">
                        <p style="display: none" class="rlf-tip-wrap">您的密码格式不正确(长度为6-16个字符（a-z、A_Z、0-9） 不包含特殊符号)</p>
                    </div>
                </div>
                <div class="wlfg-wrap" id="confirmPassword">
                    <label class="label-name" for="confirm">确认密码</label>
                    <div class="rlf-group">
                        <input name="confirm" id="confirm" class="rlf-input rlf-input-pwd" placeholder="请输入密码" type="password">
                        <p style="display: none" class="rlf-tip-wrap">请输入确认密码！</p>
                    </div>
                </div>
                <div class="wlfg-wrap">
                    <label class="label-name" for=""></label>
                    <div class="rlf-group">
                        <span id="reset-submit" hidefocus="true" data-dismiss="modal" aria-role="button" class="rlf-btn-green btn-block">完成</span>
                    </div>
                </div>
           
        </div>
    </div>
</div>





  
<script type="text/javascript">
	$(function(){
		
		$("input[name='newpass']").keyup(
			function(){
				var pwd = /^[0-9_a-zA-Z]{6,20}$/;
				if (!pwd.test($(this).val())) {
					$(this).find("+p").show();
				}else{
					$(this).find("+p").hide();
				}
		});
		
		$("#confirm").keyup(function(){
			var confirmPassword = $(this).val();
			var password = $("input[name='newpass']").val();
			if(password != confirmPassword){
				$(this).find("+p").show();
			}else{
				$(this).find("+p").hide();
			}
		});
		
		$("#reset-submit").on("click",function(){
			var url = "${ctx}/forgetPassword/changePassword";
			
			var flag = true;
			var pwd = /^[0-9_a-zA-Z]{6,20}$/;
			if(!pwd.test($("input[name='newpass']").val())){
				flag = false;
				
			}
			var confirmPassword = $("#confirm").val();
			var password = $("input[name='newpass']").val();
			if(password != confirmPassword){
				flag = false;
			}
			
			if(flag){
				var username = $("input[name='email']").val();
				var userPassword = $("input[name='newpass']").val();
				$.post(url,{"username":username,"userPassword":userPassword},function(data){
					if(data.flage == "1"){
						$("div[class='pwd-reset-wrap']").html("<div class='sucess'>恭喜您，密码修改成功！请去<a href='${ctx}/login'>登录>></a></div>");
					}else{
						$("div[class='pwd-reset-wrap']").html("<div class='failure'>对不起，密码修改失败！请去邮箱点击重新修改密码链接！</div>");
					}
				},"json");
			}else{
				alert("亲，请按照规则填写密码！");
			}
		});
	});
</script>
</body>
</html>
