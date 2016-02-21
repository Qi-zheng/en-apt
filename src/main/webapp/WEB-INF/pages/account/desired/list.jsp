<%--
  Created by IntelliJ IDEA.
  User: Vincent
  Date: 2016/1/9
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp"%>
<html>
<head>
    <title></title>
</head>
<body>


<img src="${ctx}/static/images/banner-manage.jpg" alt="" class="banner-manage"/>
<div class="search content">
    <form>
        <p>状态：
            <a href="?" ${empty param.d_s_t ? "class=\"now\"" : ""} >全部</a>
            <a href="?d_s_t=1" ${param.d_s_t eq 1 ? "class=\"now\"" : ""}>待发布</a>
            <a href="?d_s_t=2" ${param.d_s_t eq 2 ? "class=\"now\"" : ""}>待审核</a>
            <a href="?d_s_t=3" ${param.d_s_t eq 3 ? "class=\"now\"" : ""}>发布中</a>
            <a href="?d_s_t=4" ${param.d_s_t eq 4 ? "class=\"now\"" : ""}>待评价</a>
            <a href="?d_s_t=5" ${param.d_s_t eq 5 ? "class=\"now\"" : ""}>完毕</a>
        </p>
        <!-- <div class="search-control"><input type="text"><input type="button" value="" class="btn"></div> -->
    </form>
</div>
    <table  class="list">
        <tr>
            <th class="align-center">#</th>
            <th>项目名称</th>
            <th>到期时间</th>
            <th>投稿人数</th>
            <th>状态</th>
            <th class="align-center">操作</th>
        </tr>
        <c:forEach items="${desiredWithINums}" var="desired" varStatus="i">
            <tr>
                <td class="align-center">${i.index+1}</td>
                <td>${desired.p_n}</td>
                <td><fmt:formatDate value="${desired.d_l}"></fmt:formatDate></td>
                <td>${desired.i_n_u}</td>
                <td>
                    <c:choose>
                        <c:when test="${desired.d_s_t eq 1}">
                            待发布
                        </c:when>
                        <c:when test="${desired.d_s_t eq 2}">
                            待审核
                        </c:when>
                        <c:when test="${desired.d_s_t eq 3}">
                            发布中
                        </c:when> 
                        <c:when test="${desired.d_s_t eq 4}">
                            待评价
                        </c:when>
                        <c:when test="${desired.d_s_t eq 5}">
                            完毕
                        </c:when>
                    </c:choose>

                </td>
                <td class="align-center">
                    <c:if test="${desired.d_s_t eq 1}">
                	    <a href="${ctx}/desired/change/${desired.d_i}">修改</a>
                    </c:if>
                    <a href="${ctx}/desired/detail/${desired.d_i}">查看</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
