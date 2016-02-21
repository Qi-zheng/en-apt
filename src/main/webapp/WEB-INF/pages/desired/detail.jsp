<%@ page import="com.dicp.entity.User" %>
<%@ page import="org.apache.shiro.SecurityUtils" %>
<%--
  Created by IntelliJ IDEA.
  User: Vincent
  Date: 2016/1/7
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp" %>
<html>
<head>
    <title></title>
    <link href="${ctx}/static/plugins/ystep/css/ystep.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="banner need-desired-detail">
</div>
	<c:if test="${utype eq 0}">
        <div style="width:100%;height:50px;text-align:center;color:#fff;line-height:50px;background:#FF8E8E;">账户未实名认证，认证后可发布需求或创意。</div>
	</c:if>

    <c:if test="${utype eq 1}">
        <div style="width:100%;height:50px;text-align:center;color:#fff;line-height:50px;background:#FF8E8E;">实名认证申请已经提交，请等待平台管理员审核！</div>
    </c:if>
    
    <c:if test="${utype eq -1}">
        <div style="width:100%;height:50px;text-align:center;color:#fff;line-height:50px;background:#FF8E8E;">实名认证申请已被拒绝，请核实后填写！</div>
    </c:if>
<div class="content">
    <div class="main-content">
        <div class="border-box">
            <div class="gi-title">
                <div id="step"></div>
            </div>
            <div class="gi-title">
                <h1>${desiredDetail.desired.p_n}</h1>
                <div class="date"><fmt:formatDate value="${desiredDetail.desired.c_t}"></fmt:formatDate></div>
          		
          		<c:if test="${user.u_i eq desiredDetail.desired.u_i and desiredDetail.desired.d_s_t eq 3}">
          			<div style="margin-top: -50px; margin-left: 400px;"><a href="${ctx}/desired/scheme/endDesired/${desiredDetail.desired.d_i}" class="button orange">结束投标</a></div>
          		</c:if>
            </div>
            <table class="data">
                <tr>
                    <th>项目分类：</th>
                    <td>${desiredDetail.desired.p_t_y_n}</td>
                    <th>项目领域：</th>
                    <td>${desiredDetail.desired.p_t_r_n}</td>
                </tr>
                <tr>
                    <th>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区：</th>
                    <td>
                        <c:forEach items="${fn:split(desiredDetail.desired.d_i_s, \",\")}" var="d_i_s">
                            ${d_i_s}&nbsp;&nbsp;&nbsp;
                        </c:forEach>
                        </td>
                    <th>截止时间：</th>
                    <td><fmt:formatDate value="${desiredDetail.desired.d_l}"></fmt:formatDate></td>
                </tr>
            </table>
        </div>
        <div class="border-box detail-info">
            <h1>项目详情</h1>
            <p>
                ${desiredDetail.desired.c_o}
            </p>
        </div>

    <%
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        request.setAttribute("user",user);
    %>
    <c:if test="${user.u_i eq desiredDetail.desired.u_i and not empty desiredDetail.d_s_l}">
        <h1 class="tabs green-top">
<!--             <a href="#">交稿</a> -->
            <a href="${ctx}/desired/detail/${sid}/0"<c:if test="${r_e_s_l eq 0}"> class="now" </c:if>>全部</a>
            <a href="${ctx}/desired/detail/${sid}/2"<c:if test="${r_e_s_l eq 2}"> class="now" </c:if>>中标（${desiredDetail.s_u_c_n}）</a>
            <a href="${ctx}/desired/detail/${sid}/1"<c:if test="${r_e_s_l eq 1}"> class="now" </c:if>>备选（${desiredDetail.r_e_s_n}）</a>
        </h1>
        <c:if test="${r_e_s_l eq 2}">
	        <c:forEach items="${desiredDetail.s_u_c_l}" var="dsl">
	            <div class="detail four_colomns pics-in" onclick="openDialogByIframe(750,500,'${dsl.s_n_a}','${ctx}/desired/scheme/detail/${dsl.s_i}')">
	                <c:if test="${dsl.d_s_s eq 1}">
	                    <img src="${ctx}/static/images/checked_no.png"  alt="" class="checked_no"/>
	                </c:if>
	                <c:if test="${dsl.d_s_s eq 2}">
	                    <img src="${ctx}/static/images/checked_yes.png"  alt="" class="checked_no"/>
	                </c:if>
	                <a href="javascript:void(0);"><img src="${ctx}${empty dsl.d_s_p_p ? "/static/images/pic-default.png" : dsl.d_s_p_p}" class="detail_pic"></a>
	                <h2>${dsl.s_n_a}</h2>
	                <div class="date"><fmt:formatDate value="${dsl.c_t}"></fmt:formatDate></div>
	            </div>
	        </c:forEach>
        </c:if>
        <c:if test="${r_e_s_l eq 1}">
	        <c:forEach items="${desiredDetail.r_e_s_l}" var="dsl">
	            <div class="detail four_colomns pics-in" onclick="openDialogByIframe(750,500,'${dsl.s_n_a}','${ctx}/desired/scheme/detail/${dsl.s_i}')">
	                <c:if test="${dsl.d_s_s eq 1}">
	                    <img src="${ctx}/static/images/checked_no.png"  alt="" class="checked_no"/>
	                </c:if>
	                <c:if test="${dsl.d_s_s eq 2}">
	                    <img src="${ctx}/static/images/checked_yes.png"  alt="" class="checked_no"/>
	                </c:if>
	                <a href="javascript:void(0);"><img src="${ctx}${empty dsl.d_s_p_p ? "/static/images/pic-default.png" : dsl.d_s_p_p}" class="detail_pic"></a>
	                <h2>${dsl.s_n_a}</h2>
	                <div class="date"><fmt:formatDate value="${dsl.c_t}"></fmt:formatDate></div>
	            </div>
	        </c:forEach>
        </c:if>
        <c:if test="${r_e_s_l eq 0}">
        <c:forEach items="${desiredDetail.d_s_l}" var="dsl">
            <div class="detail four_colomns pics-in" onclick="openDialogByIframe(750,500,'${dsl.s_n_a}','${ctx}/desired/scheme/detail/${dsl.s_i}')">
                <c:if test="${dsl.d_s_s eq 1}">
                    <img src="${ctx}/static/images/checked_no.png"  alt="" class="checked_no"/>
                </c:if>
                <c:if test="${dsl.d_s_s eq 2}">
                    <img src="${ctx}/static/images/checked_yes.png"  alt="" class="checked_no"/>
                </c:if>
                <a href="javascript:void(0);"><img src="${ctx}${empty dsl.d_s_p_p ? "/static/images/pic-default.png" : dsl.d_s_p_p}" class="detail_pic"></a>
                <h2>${dsl.s_n_a}</h2>
                <div class="date"><fmt:formatDate value="${dsl.c_t}"></fmt:formatDate></div>
            </div>
        </c:forEach>
        </c:if>
    </c:if>
    
    <c:if test="${desiredDetail.f_l_g eq 1}">
	    <div class="border-box detail-info">
	      <h1>项目创意</h1>
	      <div class="border-box">
		      <table class="data manage-table long-table">
                <tr>
                    <th>项目名称：</th>
                    <td colspan="2">${desiredDetail.d_s.s_n_a}</td>
                </tr>
                <tr>
                    <th>项目图片：</th>
                    <td colspan="2">
                        <img id="pImg" style="border: 1px solid #c0c0c0;" width="250" height="250" src="${desiredDetail.d_s.d_s_p_p}" />
                    </td>
                </tr>
                <tr>
                    <th>项目简介：</th>
                    <td colspan="2">${desiredDetail.d_s.i_n_t}</td>
                </tr>
                <tr>
                    <th>标签：</th>
                    <td colspan="2">${desiredDetail.d_s.s_t_a}</td>
                </tr>
                <tr>
                    <th>项目分类：</th>
                    <td colspan="2">${desiredDetail.d_s.s_t_y_n}</td>
                </tr>
                <tr>
                    <th>技术阶段：</th>
                    <td colspan="2">
                    ${desiredDetail.d_s.t_e_c_s_n }</td>
                </tr>
                <tr>
                    <th>项目领域：</th>
                    <td colspan="2">${desiredDetail.d_s.s_t_r_n }</td>
                </tr>
                <tr>
                    <th>融资阶段：</th>
                    <td colspan="2">${desiredDetail.d_s.f_i_n_s_n }
                    </td>
                </tr>
                <tr>
                    <th>项目详情：</th>
                    <td colspan="2">
                        ${desiredDetail.d_s.d_e_t }
                    </td>
                </tr>
                <tr>
                    <th>计划书：</th>
                    <td colspan="2">
                    	<div style="width: 580px;word-break: break-word;">
                    	<c:if test="${ not empty desiredDetail.d_s.a_t_t }">
                    		<a href="${desiredDetail.d_s.a_t_t }">${desiredDetail.d_s.a_t_t_n }</a>
                    	</c:if>
                    	<c:if test="${ empty desiredDetail.d_s.a_t_t }">
                    		无
                    	</c:if>
                    	</div>
                    </td>
                </tr>
            </table>
    </div>
	    </div>
    </c:if>

    </div>
    <div class="sider">
        <div class="border-box">
            <h1>企业介绍</h1>
            <table class="data com-info">
                <tr>
                    <th>注册资金：
                    </th>
                    <td><strong><fmt:formatNumber value="${desiredDetail.enterprise.c_a_p}" pattern="###,###,###,###,###,###"></fmt:formatNumber></strong></td>
                </tr>
                <tr>
                    <th>企业性质：</th>
                    <td>${desiredDetail.enterprise.t_y_n}
                </tr>
                <tr>
                    <th>行&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业：</th>
                    <td>${desiredDetail.enterprise.t_r_n}</td>
                </tr>
                <tr>
                    <th>发布需求数：</th>
                    <td>${desiredDetail.d_n_u_m}个</td>
                </tr>
            </table>
            <div class="btns">
                <shiro:hasRole name="member">
                    <c:if test="${user.u_i ne desiredDetail.desired.u_i and desiredDetail.f_l_g ne 1 and desiredDetail.desired.d_s_t eq 3}">
                        <a href="${ctx}/desired/scheme/${desiredDetail.desired.d_i}#s_i" class="button">&nbsp;&nbsp;投&nbsp;&nbsp;&nbsp;稿&nbsp;&nbsp;</a>
                    </c:if>
                </shiro:hasRole>
                <a href="#" class="button orange">咨询客服</a>
            </div>
        </div>

        <div class="code"><img src="${ctx}/static/images/code.jpg" alt=""/></div>
<!--         <div class="border-box"> -->
<!--             <h1>最近浏览创意</h1> -->
<!--             <ul><li><a href="#">技术创新技术创新技术创新技术创新</a></li> -->
<!--                 <li><a href="#">技术创新技术创新技术创新技术创新</a></li> -->
<!--                 <li><a href="#">技术创新技术创新技术创新技术创新</a></li></ul> -->
<!--         </div> -->
    </div>
</div>

<script type="text/javascript" src="${ctx}/static/plugins/ystep/js/ystep.js"></script>
<script type="text/javascript">
    $().ready(function(){
        $("#step").loadStep({
            //ystep的外观大小
            //可选值：small,large
            size: "large",
            //ystep配色方案
            //可选值：green,blue
            color: "green",
            //ystep中包含的步骤
            steps: [{
                //步骤名称
                title: "待发布",
                //步骤内容(鼠标移动到本步骤节点时，会提示该内容)
                content: "企业发起需求"
            },{
                title: "待审核",
                content: "平台工作人员审核需求"
            },{
                title: "发布中",
                content: "正在搜集创客们的稿件"
            },{
                title: "待评价",
                content: "评价提供创意的企业或个人"
            },{
                title: "完成",
                content: "项目已完成"
            }]
        });

        $("#step").setStep(${desiredDetail.desired.d_s_t});
    });
</script>
</body>
</html>
