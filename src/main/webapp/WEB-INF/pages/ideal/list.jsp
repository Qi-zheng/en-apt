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
<head>
	<style type="text/css">
		.divcs{
        	 width:185px; 
        	 height:30px; 
        	 line-height:30px; 
        	 overflow:hidden;
        }
	</style>
</head>
<body>

<div class="banner need-ideal">
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
    <p id="r_f">融资阶段：
        <a href="javascript:void(0);" value="0">全部</a>
        <a href="javascript:void(0);" value="1">尚未融资</a>
        <a href="javascript:void(0);" value="2">天使轮</a>
        <a href="javascript:void(0);" value="3">A轮</a>
        <a href="javascript:void(0);" value="4">B轮</a>
        <a href="javascript:void(0);" value="5">C轮</a>
        <a href="javascript:void(0);" value="6">C轮以后</a>
    </p>
    <p id="t_f">技术阶段：
        <a href="javascript:void(0);" value="0">全部</a>
        <a href="javascript:void(0);" value="1">开发试验</a>
        <a href="javascript:void(0);" value="2">小范围测试</a>
        <a href="javascript:void(0);" value="3">商业应用</a>
    </p>
  <div class="search-control"><input type="text" id="searchInput" value="${param.s_k_e_y}"><input type="button" id="searchBtn" class="btn"></div>
</div>
<div class="content">
  <h1 class="tabs" id="tabs"><a href="javascript:void(0);" id="c_o_o_r">综合排序</a><a id="d_l_o_r" href="javascript:void(0);" >到期时间</a></h1>
    <div class="content" id="创意">
    <c:forEach items="${selectIdealList.pageData}" var="sidea">
        <div class="detail four_colomns">
            <a href="${ctx}/ideal/detail/${sidea.i_i}"><img src="${ctx}${empty sidea.p_p_h ? "/static/images/pic-default.png" : sidea.p_p_h}" class="detail_pic"></a>
            <h2><a href="${ctx}/ideal/detail/${sidea.i_i}" target="_blank" ><div class="divcs" title="${sidea.i_n}" >${sidea.i_n}</div></a></h2>
            <p>${sidea.i_n_t}</p>
            <ul>
                <c:forEach items="${fn:split(sidea.i_t_a,\",\")}" var="tag" begin="0" end="0" >
                    <li title="${tag}">${fn:substring(tag,0 ,13 )}…</li>
                </c:forEach>
            </ul>
        </div>
    </c:forEach>
</div>
<c:if test="${not empty selectIdealList.pageData}">
    <div class="page">
        <c:if test="${ param.p_g_n ne \"1\"}">
            <a href="javascript:void(0);" onclick="prev(this);">上一页</a>
        </c:if>
        <c:forEach items="${selectIdealList.pageNums}" var="pn">
            <a href="javascript:void(0);" value="${pn}"<c:if test="${pn eq param.p_g_n}">class="now"</c:if> onclick="pageRun(this);">${pn}</a>
        </c:forEach>
        <c:if test="${ param.p_g_n ne selectIdealList.totalPageNo}">
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
        window.location.href = "${ctx}/ideal/list"+url;
    }

    function next(o){
        var url = "?";
        var param = getRequestParam();
        param.p_g_n = ${param.p_g_n} + 1;
        $.each(param, function(i, val) {
            url += i + "=" + val + "&";
        });
        window.location.href = "${ctx}/ideal/list"+url;
    }

    function pageRun(o){
        var url = "?";
        var param = getRequestParam();
        param.p_g_n = $(o).attr("value");
        $.each(param, function(i, val) {
            url += i + "=" + val + "&";
        });
        window.location.href = "${ctx}/ideal/list"+url;
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
            window.location.href = "${ctx}/ideal/list"+url;
        });


//分类界面点击效果
        var requestParam = getRequestParam();
        // 排序样式与条件
        if(requestParam.d_l_o_r){
            $("#d_l_o_r").addClass("now");
        }
        if(requestParam.c_o_o_r){
            $("#c_o_o_r").addClass("now");
        }



		//类选择器为tabs,单机变化颜色效果并根据条件查询
        $("#tabs > a").on("click",function(){

            var url = "?";
            var param = getRequestParam();
            if($(this).attr("id") == "c_o_o_r"){
                param.c_o_o_r = "asc";
                delete param.d_l_o_r;
            }else {

                param.d_l_o_r = "desc";
                delete param.c_o_o_r;
            }
            param.p_g_n =1;
            $.each(param, function(i, val) {
                url += i + "=" + val + "&";
            });
            window.location.href = "${ctx}/ideal/list"+url;

        });


        // 查询条件通过id选择器选择单机后颜色改变并查找对应记录
        //项目分类
        var ptyFlag = 1;
        $("#p_t_y > a").each(function(){
            if($(this).attr("value") == requestParam.i_t_y){
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
                delete param.i_t_y;
            }else {
                param.i_t_y = $(this).attr("value");
            }
            param.p_g_n =1;
            $.each(param, function(i, val) {
                url += i + "=" + val + "&";
            });

            window.location.href = "${ctx}/ideal/list"+url;

        });

		//项目领域
        var ptrFlag = 1;
        $("#p_t_r > a").each(function(){
            if($(this).attr("value") == requestParam.i_t_r){
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
                delete param.i_t_r;
            }else {
                param.i_t_r = $(this).attr("value");
            }
            param.p_g_n =1;
            $.each(param, function(i, val) {
                url += i + "=" + val + "&";
            });

            window.location.href = "${ctx}/ideal/list"+url;

        });

	//融资阶段
        var tyFlag = 1;
        $("#r_f > a").each(function(){
            if($(this).attr("value") == requestParam.f_s_t){
                $(this).addClass("now");
                tyFlag = 0;
            }
        });
        if(tyFlag){
            $("#r_f > a:first").addClass("now");
        }
		
		 var tyFlag = 1;
        $("#r_f > a").each(function(){
            if($(this).attr("value") == requestParam.f_s_t){
                $(this).addClass("now");
                tyFlag = 0;
            }
        });
        if(tyFlag){
            $("#r_f > a:first").addClass("now");
        }

        $("#r_f > a").on("click",function(){

            var url = "?";
            var param = getRequestParam();
            if($(this).attr("value") == "0"){
                delete param.f_s_t;
            }else {
                param.f_s_t = $(this).attr("value");
            }
            param.p_g_n =1;
            $.each(param, function(i, val) {
                url += i + "=" + val + "&";
            });

            window.location.href = "${ctx}/ideal/list"+url;

        });
        //技术阶段
        var tfFlag = 1;
        $("#t_f > a").each(function(){
            if($(this).attr("value") == requestParam.t_s_t){
                $(this).addClass("now");
                tfFlag = 0;
            }
        });
        if(tfFlag){
            $("#t_f > a:first").addClass("now");
        }
		
		 var tfFlag = 1;
        $("#t_f > a").each(function(){
            if($(this).attr("value") == requestParam.t_s_t){
                $(this).addClass("now");
                tfFlag = 0;
            }
        });
        if(tfFlag){
            $("#t_f > a:first").addClass("now");
        }

        $("#t_f > a").on("click",function(){

            var url = "?";
            var param = getRequestParam();
            if($(this).attr("value") == "0"){
                delete param.t_s_t;
            }else {
                param.t_s_t = $(this).attr("value");
            }
            param.p_g_n =1;
            $.each(param, function(i, val) {
                url += i + "=" + val + "&";
            });

            window.location.href = "${ctx}/ideal/list"+url;

        });
    });
</script>
</body>
</html>
