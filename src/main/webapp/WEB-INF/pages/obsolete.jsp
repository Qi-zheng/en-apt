<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/8/17
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp"%>
<html>
<head>
    <title></title>
</head>
<body>
<div style="text-align: center;background:#f0f0f0;border-bottom:1px solid #CCC">
    <img src="${ctx}/static/images/logo.jpg" style="height: 80px" alt="盈和数据"/>
</div>
<!--end: Header-->

<div style="text-align: center; margin-top: 30px;">
    <img src="${ctx}/static/images/ie-old.png" alt="ie-old" style="width:70px;height:70px;"/>
    <p>
        Internet Explorer 6
    </p>

    <h3 style="margin-top:30px">Oops! 您使用的浏览器版本过于陈旧，我们无法支持！</h3>
    <h2>建议您使用以下浏览器（点击图标下载）</h2>
    <div style="margin-top:50px">
        <a href="http://www.google.com/chrome/" style="margin:10px;width:70px;height:70px;">
            <img src="${ctx}/static/images/chrome.png" alt="chrome" style="width:70px;height:70px;"/> <span>Chrome</span>
        </a>
        <a href="http://download.firefox.com.cn/releases/webins3.0/official/zh-CN/Firefox-latest.exe" style="margin:10px;width:70px;height:70px;">
            <img src="${ctx}/static/images/firefox.png" alt="firefox" style="width:70px;height:70px;"/> <span>firefox</span>
        </a>
        <a href="http://www.apple.com/safari/download/" style="margin:10px;width:70px;height:70px;">
            <img src="${ctx}/static/images/safari.png" alt="safari" style="width:70px;height:70px;"/> <span>Safari</span>
        </a>
        <a href="http://windows.microsoft.com/zh-CN/internet-explorer/products/ie/home" style="margin:10px;width:70px;height:70px;">
            <img src="${ctx}/static/images/ie9.png" alt="ie-lastest" style="width:70px;height:70px;"/> <span>更高版本的IE</span>
        </a>
    </div>
</div>
</body>
</html>
