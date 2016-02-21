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
    <title>欢迎来到双创云平台<sitemesh:title /></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <script type="text/javascript" src="${ctx}/static/js/jquery.min.js" ></script>
    <script type="text/javascript" src="${ctx}/static/plugins/gotop/js/top.js" ></script>
    <script type="text/javascript" src="${ctx}/static/js/jquery.lazyload.js"></script>

    <link href="${ctx}/static/css/main.css" rel="stylesheet" type="text/css">
    <sitemesh:head />
    <link href="${ctx}/static/plugins/gotop/css/top.css" rel="stylesheet" type="text/css">
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
    <jsp:include page="header.jsp"></jsp:include>

    <sitemesh:body />
    <a href="#" id="totop" onclick="gotoTop();return false;" class="totop"></a>
    <jsp:include page="footer.jsp" ></jsp:include>

    <script type="text/javascript">
        $(function(){
            $("#totop").hide();
            $(window).scroll(function () {

                if ($(window).scrollTop() > 200) {
                    $("#totop").show();
                } else {
                    $("#totop").hide();
                }
            });
            $("img.lazy").lazyload({
                effect : "fadeIn"
            });




        });
        /**
         * iframe弹出层 例子：openDialogByIframe(550,450,'新建单位','add.do');
         *
         * @param width
         *            宽
         * @param height
         *            高
         * @param tit
         *            标题
         * @param url
         *            iframe的URL地址
         */
        function openDialogByIframe(width, height, tit, url) {
            var winWinth = $(window).width(), winHeight = $(document).height();
            $("body").append("<div class='yz_popIframeDiv'></div>");
            $("body")
                    .append(
                    "<div class='yz_popTanChu'><div class='yz_popTanChutit'><span class='yz_popTanChuTxt'>"
                    + tit
                    + "</span><span class='yz_popTanChuClose'>关闭</span></div><iframe class='winIframe' frameborder='0' hspace='0' src="
                    + url + "></iframe></div>");
            $(".yz_popIframeDiv").css({
                width : winWinth,
                height : winHeight,
                background : "#000",
                position : "absolute",
                left : "0",
                top : "0"
            });
            $(".yz_popIframeDiv").fadeTo(0, 0.5);
            var yz_popTanChuLeft = $(window).width() / 2 - width / 2;
            var yz_popTanChuTop = $(window).height() / 2 - height / 2
                    + $(window).scrollTop();
            $(".yz_popTanChu").css({
                width : width,
                height : height,
                border : "3px #ccc solid",
                left : yz_popTanChuLeft,
                top : yz_popTanChuTop,
                background : "#fff",
                position : "absolute"
            });
            $(".yz_popTanChutit").css({
                width : width,
                height : "25px",
                "border-bottom" : "1px #ccc solid",
                background : "#eee",
                "line-height" : "25px"
            });
            $(".yz_popTanChuTxt").css({
                "text-indent" : "5px",
                "float" : "left",
                "font-size" : "14px"
            });
            $(".yz_popTanChuClose").css({
                "width" : "40px",
                "float" : "right",
                "font-size" : "12px",
                "color" : "#667",
                "cursor" : "pointer"
            });
            var winIframeHeight = height - 26;
            $(".winIframe").css({
                width : width,
                height : winIframeHeight,
                "border-bottom" : "1px #ccc solid",
                background : "#ffffff"
            });
            $(".yz_popTanChuClose").hover(function() {
                $(this).css("color", "#334");
            }, function() {
                $(this).css("color", "#667");
            });
            $(".yz_popTanChuClose").click(function() {
                $(".yz_popIframeDiv").remove();
                $(".yz_popTanChu").remove();
            });
        }
        
        
    </script>
</body>

</html>