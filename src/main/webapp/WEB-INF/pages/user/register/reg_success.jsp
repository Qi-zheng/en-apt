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
    <title>注册成功</title>
    <script type="text/javascript" src="${ctx}/static/js/jquery.min.js"></script>
    <link rel="stylesheet" href="${ctx}/static/css/main.css" type="text/css" />
   <%--  <link href="${ctx}/static/css/logins.css" rel="stylesheet" type="text/css" />  --%>
	<style type="text/css">
		.wrap-boxes {
		    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
		    background: #FFF none repeat scroll 0% 0%;
		}
		.wwrap {
		    padding: 20px;
		}
		.result-container {
		    padding: 0px 0px;
		    text-align: center;
		}
		result-container h1 {
		    margin: 20px 0px;
		    color: #333;
		}
		.result-container h1 {
		    font-size: 24px;
		    color: #656E73;
		    margin: 10px 0px;
		}
		.bottom {
		    width: 800px;
		    margin: 30px auto;
		    border-top: 1px solid #D0D6D9;
		}
		.bottom #validateEmail {
		   display: inline-block;
			margin: 30px 0px 0px 30px;
			color: #FFF;
			font-size: 14px;
			background: rgb(20, 131, 227) none repeat scroll 0% 0%;
			height: 40px;
			line-height: 40px;
			width: 120px;
			cursor: pointer;
			text-align: center;
			transition: background-color 0.2s ease 0s;
		}
		.sbtn-green:hover, .sbtn-green:active {
		    color: #FFF;
		    background: #33A646 none repeat scroll 0% 0%;
		}
		.sbtn-green:link, .sbtn-green:visited {
		    display: inline-block;
		    margin-top: 50px;
		    width: 120px;
		    background: #39B94E none repeat scroll 0% 0%;
		    color: #FFF;
		}
		.bottom .link-goback:hover {
		   
		}
		.bottom .link-goback {
		    display: inline-block;
		    margin: 30px 0px 0px 30px;
		    color: #333;
		    font-size: 14px;
		    background-color: #FFF;
		    height: 40px;
		    line-height: 40px;
		    width: 120px;
		    cursor: pointer;
		    text-align: center;
		    transition: background-color 0.2s ease 0s;
		    border: 1px solid #337AB7;
		}
		.wheader-wrap h1{
			 margin: 30px 0px 0px 30px;
		}
		.reg_success{
			width: 420px;
			height: 52px;
			margin: 68px auto;
			
			padding: 0px 0px 0px 60px;
			font-size: 20px;
			font-weight: bold;
			line-height: 52px;
			margin-bottom: 0px;
			color: #656E73;
		}
		.main{
			padding:0px;
			margin: 49px 50px;
		}
		.sent-again span.resend {
		    color: rgb(20, 131, 227);
		    cursor: pointer;
		}
		
	</style>
</head>
<body>
<div class="main">
	<div class="wcontainer">
	    <div class="wwrap wrap-boxes">
	        <div class="wheader-wrap">
	            <div class="reg_success">注册成功！<a href="${ctx}/login">请登录</a>进行实名验证。</div>
	        </div>
	    </div>
	</div>
</div>

</body>
</html>
