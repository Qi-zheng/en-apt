<%--
  Created by IntelliJ IDEA.
  User: Vincent
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
            <img src="${ctx}${desiredScheme.d_s_p_p}" alt="" class="gi-pic"/>
            <h1>${desiredScheme.s_n_a}</h1>
            <div class="date">2016-05-05</div>
            <c:choose>
                <c:when test="${desiredScheme.d_s_s eq 0}">
                    <a href="javascript:void(0);" onclick="top.window.location.href='${ctx}/desired/scheme/updateStatus/${desiredScheme.s_i}/${desiredScheme.d_i}/1'" class="button gi-btn-up">备选</a>
                    <a href="javascript:void(0);" onclick="top.window.location.href='${ctx}/desired/scheme/updateStatus/${desiredScheme.s_i}/${desiredScheme.d_i}/2'" class="button gi-btn-bottom">中标</a>
                </c:when>
                <c:when test="${desiredScheme.d_s_s eq 1}">
                    <a href="javascript:void(0);" onclick="top.window.location.href='${ctx}/desired/scheme/updateStatus/${desiredScheme.s_i}/${desiredScheme.d_i}/0'" class="button gi-btn-up">取消备选</a>
                    <a href="javascript:void(0);" onclick="top.window.location.href='${ctx}/desired/scheme/updateStatus/${desiredScheme.s_i}/${desiredScheme.d_i}/2'" class="button gi-btn-bottom">中标</a>
                </c:when>
                <c:when test="${desiredScheme.d_s_s eq 2}">
                    <a href="javascript:void(0);" onclick="top.window.location.href='${ctx}/desired/scheme/updateStatus/${desiredScheme.s_i}/${desiredScheme.d_i}/1'" class="button gi-btn-up">备选</a>
                    <a href="javascript:void(0);" onclick="top.window.location.href='${ctx}/desired/scheme/updateStatus/${desiredScheme.s_i}/${desiredScheme.d_i}/0'" class="button gi-btn-bottom">取消中标</a>
                </c:when>
            </c:choose>
        </div>
        <table class="data">
            <tr>
                <th>项目分类：</th>
                <td>${desiredScheme.s_t_y_n }</td>
                <th>技术阶段：</th>
                <td>${desiredScheme.t_e_c_s_n }</td>
            </tr>
            <tr>
                <th>项目领域：</th>
                <td>${desiredScheme.s_t_r_n }</td>
                <th>融资阶段：</th>
                <td>${desiredScheme.f_i_n_s_n}</td>
            </tr>
            <tr>
                <th>项目简介：</th>
                <td colspan="3">${desiredScheme.i_n_t }</td>
            </tr>
        </table>
    </div>
    <div class="border-box detail-info">
        <h1>项目详情</h1>
        <p>${desiredScheme.d_e_t}</p>
    </div>
</div>
</body>
</html>
