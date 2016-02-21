
<%@ page contentType="text/html; charset=UTF-8" buffer="48kb"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="ctxUri" value="${fn:substringBefore(fn:substringAfter(pageContext.request.requestURI, '/WEB-INF/pages/'),'.jsp' )}"/>
<c:set var="req" value="${pageContext.request}" />
