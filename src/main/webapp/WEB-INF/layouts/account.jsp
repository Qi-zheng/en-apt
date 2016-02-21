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
    <link href="${ctx}/static/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${ctx}/static/js/bootstrap.js" ></script>

    <link href="${ctx}/static/plugins/My97DatePicker/skin/WdatePicker.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${ctx}/static/plugins/My97DatePicker/WdatePicker.js" ></script>
    <link href="${ctx}/static/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${ctx}/static/plugins/datatables/jquery.dataTables.min.js" ></script>
    <script type="text/javascript" src="${ctx}/static/plugins/datatables/dataTables.bootstrap.min.js" ></script>


    <link href="${ctx}/static/css/main.css" rel="stylesheet" type="text/css" />
    <link href="${ctx}/static/css/manage.css" rel="stylesheet" type="text/css" />
    <sitemesh:head />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
    <jsp:include page="header.jsp" ></jsp:include>
    <div class="content border-box manage-box">
        <div id="sider" class="nav">
            <div class="series">
                <a href="${ctx}/account/info" class="now">账户信息</a>
            </div>
            <shiro:hasRole name="member">
                <div class="series">
                    <a href="${ctx}/ideal/create">撒种子</a>
                    <shiro:hasPermission name="enterprise">
                        <a href="${ctx}/desired/create">晾花盆</a>
                    </shiro:hasPermission>
                </div>
                <div class="series">
                    <a href="${ctx}/account/ideal/list">我的种子</a>
                    <shiro:hasPermission name="enterprise">
                    <a href="${ctx}/account/desired/list">我的花盆</a>
                    </shiro:hasPermission>
                </div>
                <div class="series">
                    <shiro:hasPermission name="enterprise">
                    <a href="${ctx}/account/ideal/partake">种子进展</a>
                    </shiro:hasPermission>
                    <a href="${ctx}/account/desired/partake">监控花盆</a>
                </div>
            </shiro:hasRole>
        </div>
        <div class="manage-content">
            <sitemesh:body />
        </div>
    </div>

    <jsp:include page="footer.jsp" ></jsp:include>
    <script>
        $('#sider a').each(function(index,element){
            var url = $(element).attr("href");
            if(url.indexOf("?") > 0){
                url = url.substring(0,url.indexOf("?"));
            }
            if(url == window.location.pathname) {
                $(element).addClass("now");
            } else {
                $(element).removeClass("now");
            }
        });
        $.extend( $.fn.dataTable.defaults, {
            language: {
                "sProcessing": "处理中...",
                "sLengthMenu": "显示 _MENU_ 项结果",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "表中数据为空",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页"
                },
                "oAria": {
                    "sSortAscending": ": 以升序排列此列",
                    "sSortDescending": ": 以降序排列此列"
                }
            }
        } );
    </script>
</body>

</html>