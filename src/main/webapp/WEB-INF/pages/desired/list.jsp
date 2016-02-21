<%--
  Created by IntelliJ IDEA.
  User: Vincent
  Date: 2016/1/5
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp"%>
<html>
<body>

<div class="banner need-desired">
</div>

<div class="search content">
    <h1>项目详情</h1>
    <p id="p_t_y">项目分类：
        <a href="javascript:void(0);" value="0">全部</a>
        <a href="javascript:void(0);" value="1">技术创新</a>
        <a href="javascript:void(0);" value="2">商业模式创新</a></p>
    <p id="p_t_r">项目领域：
        <a href="javascript:void(0);" value="0">全部</a>
        <a href="javascript:void(0);" value="1">汽车</a>
        <a href="javascript:void(0);" value="2">能源</a>
        <a href="javascript:void(0);" value="3">交通</a>
        <a href="javascript:void(0);" value="4">信息</a>
        <a href="javascript:void(0);" value="5">服务</a>
        <a href="javascript:void(0);" value="6">金融</a>
        <a href="javascript:void(0);" value="7">其他</a>
    </p>
    <p id="t_y">企业性质：
        <a href="javascript:void(0);" value="0">全部</a>
        <a href="javascript:void(0);" value="1">国企</a>
        <a href="javascript:void(0);" value="2">民企</a>
        <a href="javascript:void(0);" value="3">上市民企</a>
        <a href="javascript:void(0);" value="4">非盈利组织</a>
    </p>
  <div class="search-control"><input type="text" id="searchInput" value="${param.s_k_e_y}"><input type="button" id="searchBtn" class="btn"></div>
</div>
<div class="content">
  <h1 class="tabs" id="tabs">
      <a href="javascript:void(0);" id="c_o_o_r">综合排序</a>
      <a id="d_l_o_r" href="javascript:void(0);" >到期时间</a>
  </h1>
    <c:forEach items="${desiredPagination.pageData}" var="desired" varStatus="i" >
        <div class="detail four_colomns color${i.index+1}">
            <h2><a href="${ctx}/desired/detail/${desired.d_i}" target="_blank">${desired.p_n}</a></h2>
            <p></p>
            <div class="classfied options"><span class="nature">${desired.t_y_n}</span><span class="industry">${desired.p_t_r_n}</span></div>
            <div class="time_left">
                <c:choose>
                    <c:when test="${desired.d_l_d > 0}">
                        距离结束还有<strong>${desired.d_l_d}</strong>天
                    </c:when>
                    <c:otherwise>
                    <strong>此项目已到期</strong>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </c:forEach>
    <c:if test="${not empty desiredPagination.pageData}">
    <div class="page">
        <c:if test="${ param.p_g_n ne \"1\"}">
            <a href="javascript:void(0);" onclick="prev(this);">上一页</a>
        </c:if>
        <c:forEach items="${desiredPagination.pageNums}" var="pn">
            <a href="javascript:void(0);" value="${pn}"<c:if test="${pn eq param.p_g_n}">class="now"</c:if> onclick="pageRun(this);">${pn}</a>
        </c:forEach>
        <c:if test="${ param.p_g_n ne desiredPagination.totalPageNo}">
            <a href="javascript:void(0);" onclick="next(this);">下一页</a>
        </c:if>
    </div>
    </c:if>
</div>
<script type="text/javascript">
    function getRequestParam() {

        var url = location.search; //获取url中"?"符后的字串
        var theRequest = new Object();
        if (url.indexOf("?") != -1) {
            var str = url.substr(1);
            strs = str.split("&");
            for(var i = 0; i < strs.length; i ++) {
                theRequest[strs[i].split("=")[0]]=(strs[i].split("=")[1]);
            }
        }
        return theRequest;
    }
    function prev(o){
        var url = "?";
        var param = getRequestParam();
        param.p_g_n = ${param.p_g_n} - 1;
        $.each(param, function(i, val) {
            url += i + "=" + val + "&";
        });
        window.location.href = "${ctx}/desired/list"+url;
    }

    function next(o){
        var url = "?";
        var param = getRequestParam();
        param.p_g_n = ${param.p_g_n} + 1;
        $.each(param, function(i, val) {
            url += i + "=" + val + "&";
        });
        window.location.href = "${ctx}/desired/list"+url;
    }

    function pageRun(o){
        var url = "?";
        var param = getRequestParam();
        param.p_g_n = $(o).attr("value");
        $.each(param, function(i, val) {
            url += i + "=" + val + "&";
        });
        window.location.href = "${ctx}/desired/list"+url;
    }

    $().ready(function(){
        $("#searchBtn").on("click",function(){
            var url = "?";
            var param = getRequestParam();
            param.s_k_e_y = $("#searchInput").val();
            param.p_g_n =1;
            $.each(param, function(i, val) {
                url += i + "=" + val + "&";
            });
            window.location.href = "${ctx}/desired/list"+url;
        });



        var requestParam = getRequestParam();
        // 排序条件
        if(requestParam.d_l_o_r){
            $("#d_l_o_r").addClass("now");
        }
        if(requestParam.c_o_o_r){
            $("#c_o_o_r").addClass("now");
        }


        $("#tabs > a").on("click",function(){

            var url = "?";
            var param = getRequestParam();
            if($(this).attr("id") == "c_o_o_r"){
                param.c_o_o_r = "desc";
                delete param.d_l_o_r;
            }else {

                param.d_l_o_r = "asc";
                delete param.c_o_o_r;
            }
            param.p_g_n =1;
            $.each(param, function(i, val) {
                url += i + "=" + val + "&";
            });
            window.location.href = "${ctx}/desired/list"+url;

        });


        // 查询条件
        var ptyFlag = 1;
        $("#p_t_y > a").each(function(){
            if($(this).attr("value") == requestParam.p_t_y){
                $(this).addClass("now");
                ptyFlag = 0;
            }
        });
        if(ptyFlag){
            $("#p_t_y > a:first").addClass("now");
        }
        $("#p_t_y > a").on("click",function(){

            var url = "?";
            var param = getRequestParam();
            if($(this).attr("value") == "0"){
                delete param.p_t_y;
            }else {
                param.p_t_y = $(this).attr("value");
            }
            param.p_g_n =1;
            $.each(param, function(i, val) {
                url += i + "=" + val + "&";
            });

            window.location.href = "${ctx}/desired/list"+url;

        });


        var ptrFlag = 1;
        $("#p_t_r > a").each(function(){
            if($(this).attr("value") == requestParam.p_t_r){
                $(this).addClass("now");
                ptrFlag = 0;
            }
        });
        if(ptrFlag){
            $("#p_t_r > a:first").addClass("now");
        }


        $("#p_t_r > a").on("click",function(){

            var url = "?";
            var param = getRequestParam();
            if($(this).attr("value") == "0"){
                delete param.p_t_r;
            }else {
                param.p_t_r = $(this).attr("value");
            }
            param.p_g_n =1;
            $.each(param, function(i, val) {
                url += i + "=" + val + "&";
            });

            window.location.href = "${ctx}/desired/list"+url;

        });


        var tyFlag = 1;
        $("#t_y > a").each(function(){
            if($(this).attr("value") == requestParam.t_y){
                $(this).addClass("now");
                tyFlag = 0;
            }
        });
        if(tyFlag){
            $("#t_y > a:first").addClass("now");
        }


        $("#t_y > a").on("click",function(){

            var url = "?";
            var param = getRequestParam();
            if($(this).attr("value") == "0"){
                delete param.t_y;
            }else {
                param.t_y = $(this).attr("value");
            }
            param.p_g_n =1;
            $.each(param, function(i, val) {
                url += i + "=" + val + "&";
            });

            window.location.href = "${ctx}/desired/list"+url;

        });
    });
</script>
</body>
</html>
