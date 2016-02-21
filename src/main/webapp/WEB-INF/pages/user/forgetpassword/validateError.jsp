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
.pwd-reset-result {
    width: 300px;
    margin: 100px auto;
    text-align: center;
}
.pwd-rsterror-icon {
    display: inline-block;
    width: 120px;
    height: 120px;
    background: transparent url("../images/rl-sprite.png") no-repeat scroll 0px 0px;
}
.pwd-rstsuc-inner {
    padding: 20px 0px 45px;
}
.pwd-reset-result p {
    color: #656E73;
}
.pwd-rstsuc-txt {
    font-size: 24px;
}
.pwd-reset-result p {
    color: #656E73;
}
.pwd-reset-result .rlf-btn-green {
    color: #FFF;
}
a:link, a:visited {
    color: #14191E;
}
a:link, a:visited {
    color: #5E5E5E;
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
    width: 160px;
    cursor: pointer;
    text-align: center;
    transition: background-color 0.2s ease 0s;
}
:link, :visited, ins {
    text-decoration: none;
}
a, input, button {
    outline: medium none;
}
    </style>
</head>
<body>





<div class="wcontainer">
    <div class="wwrap wrap-boxes">
        <div class="wheader-wrap">
            <h1>邮箱验证</h1>
        </div>
        <div class="pwd-reset-result">
            <i class="pwd-rsterror-icon"></i>
            <div class="pwd-rstsuc-inner">
                <p class="pwd-rstsuc-txt">验证链接过期</p>
                <p>
                    你的链接 验证失败 <br>                                        <span id="pwd-rstsuc-timer" class="pwd-rstsuctm-wrap">1</span>秒后自动跳转到慕课网首页
                </p>
            </div>
            <a href="${ctx}/" class="rlf-btn-green btn-block">返回首页</a>
        </div>
    </div>
</div>


<script type="text/javascript">
function countDown(secs,surl) {
    var jumpTo = $('#pwd-rstsuc-timer');
    jumpTo.html(secs);
    if (--secs > 0) {
        setTimeout("countDown(" + secs + ",'" + surl + "')", 1000);
    }
    else {
        location.href = surl;
    }
}
countDown(5,"${ctx}/");
</script>
</body>
</html>
