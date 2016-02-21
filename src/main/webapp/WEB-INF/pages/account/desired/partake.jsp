<%--
  Created by IntelliJ IDEA.
  User: Vincent
  Date: 2016/1/11
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp" %>
<html>
<head>
    <title></title>
</head>
<body>

<img src="${ctx}/static/images/banner-manage.jpg" alt="" class="banner-manage"/>

<table  class="list">
    <tr>
        <th class="align-center">#</th>
        <th>项目名称</th>
        <th>到期时间</th>
        <th>状态</th>
        <th class="align-center">操作</th>
    </tr>
    <c:forEach items="${desireds}" var="desired" varStatus="i">
        <tr>
            <td class="align-center">${i.index+1}</td>
            <td>${desired.p_n}</td>
            <td><fmt:formatDate value="${desired.d_l}"></fmt:formatDate></td>
            <td>
            <c:choose>
                        <c:when test="${desired.d_s_s eq 0}">
                            方案已提交
                        </c:when>
                        <c:when test="${desired.d_s_s eq 1}">
                            方案备选
                        </c:when>
                        <c:when test="${desired.d_s_s eq 2}">
                            方案中标
                        </c:when> 
                    </c:choose>
            </td>
            <td class="align-center">
                <a href="${ctx}/desired/detail/${desired.d_i}">查看</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
