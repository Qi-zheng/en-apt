<%--
  Created by IntelliJ IDEA.
  User: Wuzhi
  Date: 2016/1/12
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp" %>
<html>
<head>
    <title></title>

    <link href="${ctx}/static/css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="main-content">

    <div class="border-box">
        <div class="gi-title">
            <img src="${ctx}${idealSchemeDetail.e_n_a}" alt="" class="gi-pic"/>
            <h1>${idealSchemeDetail.e_n_a}</h1>
            <div class="date">2016-05-05</div>
            <c:choose>
                <c:when test="${idealSchemeDetail.i_s_s eq 0}">
                    <a href="javascript:void(0);" onclick="top.window.location.href='${ctx}/ideal/scheme/updateStatus/${idealSchemeDetail.i_s_d}/${idealSchemeDetail.i_i_d}/1'" class="button gi-btn-up">备选</a>
                    <a href="javascript:void(0);" onclick="top.window.location.href='${ctx}/ideal/scheme/updateStatus/${idealSchemeDetail.i_s_d}/${idealSchemeDetail.i_i_d}/2'" class="button gi-btn-bottom">中标</a>
                </c:when>
                <c:when test="${idealSchemeDetail.i_s_s eq 1}">
                    <a href="javascript:void(0);" onclick="top.window.location.href='${ctx}/ideal/scheme/updateStatus/${idealSchemeDetail.i_s_d}/${idealSchemeDetail.i_i_d}/0'" class="button gi-btn-up">取消备选</a>
                    <a href="javascript:void(0);" onclick="top.window.location.href='${ctx}/ideal/scheme/updateStatus/${idealSchemeDetail.i_s_d}/${idealSchemeDetail.i_i_d}/2'" class="button gi-btn-bottom">中标</a>
                </c:when>
                <c:when test="${idealSchemeDetail.i_s_s eq 2}">
                    <a href="javascript:void(0);" onclick="top.window.location.href='${ctx}/ideal/scheme/updateStatus/${idealSchemeDetail.i_s_d}/${idealSchemeDetail.i_i_d}/1'" class="button gi-btn-up">备选</a>
                    <a href="javascript:void(0);" onclick="top.window.location.href='${ctx}/ideal/scheme/updateStatus/${idealSchemeDetail.i_s_d}/${idealSchemeDetail.i_i_d}/0'" class="button gi-btn-bottom">取消中标</a>
                </c:when>
            </c:choose>
        </div>
        <table class="data">
            <tr>
                <th>公司类型：</th>
                <td>${idealSchemeDetail.t_y_n}</td>
                <th>注册资金：</th>
                <td>${idealSchemeDetail.c_a_p}元</td>
            </tr>
            <tr>
                <th>行业领域：</th>
                <td>${idealSchemeDetail.t_r_n}</td>
                <th></th>
                <td></td>
            </tr>
        </table>
    </div>
	<div class="border-box detail-info">
		<h1>需求内容</h1>
        <p>${idealSchemeDetail.d_e_s}</p>
	</div>
	<div class="border-box detail-info">
		<h1>扶植内容</h1>
        <p>${idealSchemeDetail.s_u_p}</p>
	</div>
</div>
</body>
</html>
