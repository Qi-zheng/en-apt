<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="ctxUri" value="${pageContext.request.requestURI}"/>
<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 2.3.1
Version: 1.3
Author: KeenThemes
Website: http://www.keenthemes.com/preview/?theme=metronic
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469
-->
<!--[if IE 8]> <html lang="zh" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="zh" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zh" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title><sitemesh:title /></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <script type="text/javascript" src="${ctx}/static/js/jquery.min.js" ></script>
    <link href="${ctx}/static/css/main.css" rel="stylesheet" type="text/css" />

    <link href="${ctx}/static/css/logins.css" rel="stylesheet" type="text/css" />
    <sitemesh:head />

</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
<div class="header">
    <div class="container-fdb header_options">
        <div class="pull-left">
            <div class="contact">
                <small>欢迎致电：</small>
                <span class="phone">400-919-9000</span>
                <small>服务时间：9:00 - 21:00</small>
            </div>
        </div>
        <div class="pull-right">
            <ul>
                <li><a href="${ctx}/login" >登录</a></li>
                <li><a href="${ctx}/user/register/step_1" class="now">注册</a></li>
            </ul>
        </div>

    </div>
</div>
    <sitemesh:body />

    <jsp:include page="footer.jsp" ></jsp:include>

</body>

</html>