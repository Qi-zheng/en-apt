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
.page-forgotpwd-wrap {
    width: 320px;
    padding: 100px 0px;
    margin: 0px auto;
    min-height: 400px;
}
.forgot-send-result {
    text-align: center;
    margin-top: 63px;
}
.forgot-send-result p a {
    color: #3C3 !important;
    text-decoration: underline;
}
a:link, a:visited {
    color: #14191E;
}
a:link, a:visited {
    color: #5E5E5E;
}
:link, :visited, ins {
    text-decoration: none;
}
a, input, button {
    outline: medium none;
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
               
                <div style="" class="js-forgot-result forgot-send-result">
                    <i></i>
                    <p>
                    密码重设连接邮件已发送到您的邮箱<em>${email}</em><br>
                    请注意查收并重新设置密码
                    <br><a href="http://${emailHost}" target="_blank">查看邮件&gt;&gt;</a></p>
                </div>
            </div>
        </div>
    </div>
</div>


  
<script type="text/javascript">
	
</script>
</body>
</html>
