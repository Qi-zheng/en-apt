<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/6/12
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            background: #F2F2F2;
        }
    </style>
</head>
<body>
<div class="index-banner slider-container">
    <ul style="margin-top: 0px;margin-bottom: 0px;padding-left: 0px;">
        <li><a href="http://chuangye.cyol.com/node_56017.htm" target="_blank"><div class="slider-tab-1" ></div></a></li>
        <li><a href="http://chuangye.cyol.com/node_56017.htm" target="_blank"><div class="slider-tab-2" ></div></a></li>
        <li><a href="http://chuangye.cyol.com/node_56017.htm" target="_blank"><div class="slider-tab-3" ></div></a></li>
        <li><a href="http://chuangye.cyol.com/node_56017.htm" target="_blank"><div class="slider-tab-4" ></div></a></li>
    </ul>
</div>
<div class="content">
    <h1 class="options">筛种子 <a href="${ctx}/ideal/list?p_g_n=1&c_o_o_r=desc">更多</a> </h1>

    <c:forEach items="${ideaList}" var="idea">
        <div class="detail four_colomns">
            <a href="${ctx}/ideal/detail/${idea.i_i}" target="_blank"><img src="${ctx}${empty idea.p_p_h ? "/static/images/pic-default.png" : idea.p_p_h}" class="detail_pic"></a>
            <h2>
                <a href="${ctx}/ideal/detail/${idea.i_i}" target="_blank">
                    <c:choose>
                        <c:when test="${fn:length(idea.i_n) > 14}">
                            ${fn:substring(idea.i_n,0 ,13 )}…
                        </c:when>
                        <c:otherwise>
                            ${idea.i_n}
                        </c:otherwise>
                    </c:choose>
                </a>
            </h2>
            <p>
                <c:choose>
                    <c:when test="${fn:length(idea.i_n_t) > 28}">
                        ${fn:substring(idea.i_n_t,0 ,27 )}…
                    </c:when>
                    <c:otherwise>
                        ${idea.i_n_t}
                    </c:otherwise>
                </c:choose>
            </p>
            <ul>
                <c:forEach items="${fn:split(idea.i_t_a,\",\")}" var="tag" begin="0" end="1">
                	<c:choose>
                    <c:when test="${fn:length(tag) < 4}">
                        <li title="${tag}">${tag}</li>
                    </c:when>
                    <c:otherwise>
                        <li title="${tag}">${fn:substring(tag,0 ,4 )}...</li>
                    </c:otherwise>
                	</c:choose>
                </c:forEach>
            </ul>
        </div>
    </c:forEach>
</div>
<div class="content">
    <h1 class="options">挑花盆 <a href="${ctx}/desired/list?p_g_n=1&c_o_o_r=desc">更多</a> </h1>
    <c:forEach items="${desiredList}" var="desired" varStatus="i">
        <div class="detail four_colomns color${i.index+1}">
            <h2><a href="${ctx}/desired/detail/${desired.d_i}" target="_blank">${desired.p_n}</a></h2>
            <p><%--${desired.c_o}--%></p>
            <div class="classfied options"><span class="nature">${desired.t_y_n}</span><span class="industry">${desired.p_t_r_n}</span></div>
            <div class="time_left">距离结束还有<strong>${desired.d_l_d}</strong>天</div>
        </div>
    </c:forEach>
</div>
<div class="content" style="display: none;">
    <!--<h1>动态信息</h1>-->
    <div class="detail three_colomns color01">
        <img src="${ctx}/static/images/info1.png" class="detail_pic"><!--
    <div class="img_title">欧阳杰、张聪</div>-->
        <h2>前沿动态</h2>
        <c:forEach items="${frontEdgeList}" var="frontEdge">
            <p>${frontEdge.t_i_t}</p>
        </c:forEach>
        <!--<div class="feedback"><span class="upvote">赞：2</span><span class="review">评论：6</span></div>-->
    </div>
    <div class="detail three_colomns color02">
        <img src="${ctx}/static/images/info2.png" class="detail_pic">
        <h2>成果展示</h2>
        <c:forEach items="${secceedList}" var="secceed">
            <p>${secceed.p_n}</p>
        </c:forEach>
    </div>
    <div class="detail three_colomns color03">
        <img src="${ctx}/static/images/info3.png" class="detail_pic">
        <h2>公共服务</h2>
        <c:forEach items="${serviceList}" var="service">
            <p>${service.t_i_t}</p>
        </c:forEach>
    </div>
</div>

<div class="coop_logos">
    <h1 class="content">合作机构</h1>
    <div class="content options">
        <a href="#"><img src="${ctx}/static/images/partners-logo1.png" alt="" class="coop_logo"/></a>
        <a href="#"><img src="${ctx}/static/images/partners-logo2.png" alt="" class="coop_logo"/></a>
        <a href="#"><img src="${ctx}/static/images/partners-logo3.png" alt="" class="coop_logo"/></a>
        <a href="#"><img src="${ctx}/static/images/partners-logo4.png" alt="" class="coop_logo"/></a>
    </div>
</div>
<script src="${ctx}/static/plugins/unslider/unslider.js"></script>
<script>
    $(".index-banner").unslider({
        dots:true,
        fluid:true
    });
</script>
</body>

</html>

