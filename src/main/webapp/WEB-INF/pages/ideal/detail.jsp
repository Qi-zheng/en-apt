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
   
</head>
<div class="banner need-ideal-detail">
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
      <c:if test="${not empty idealDetail.i_d_e.p_p_h }">
          <img src="${ctx}${idealDetail.i_d_e.p_p_h}" alt="" class="gi-pic"/>
      </c:if>
      
      <c:if test="${empty idealDetail.i_d_e.p_p_h }">
          <img src="${ctx}/static/images/pic-default.png" alt="" class="gi-pic"/>
      </c:if>
      
          <h1>${idealDetail.i_d_e.i_n}</h1>
          <div class="date"><fmt:formatDate value="${idealDetail.i_d_e.c_t_i}"></fmt:formatDate></div>
          
          <c:if test="${user.u_i eq idealDetail.i_d_e.u_i and idealDetail.i_d_e.i_s_t eq 3}">
          	<div style="margin-top: -50px; margin-left: 400px;"><a href="${ctx}/ideal/scheme/endIdeal/${idealDetail.i_d_e.i_i}" class="button orange">结束投标</a></div>
          </c:if>
      </div>
      
      <table class="data">
  <tr>
    <th>项目分类：</th>
    <td>${idealDetail.i_d_e.i_t_y_n }</td>
    <th>技术阶段：</th>
    <td>${idealDetail.i_d_e.t_s_t_n }</td>
  </tr>
  <tr>
    <th>项目领域：</th>
    <td>${idealDetail.i_d_e.i_t_r_n }</td>
    <th>融资阶段：</th>
    <td>
    	<c:if test="${idealDetail.i_d_e.f_s_t eq 1}"> 尚未融资 </c:if>
    	<c:if test="${idealDetail.i_d_e.f_s_t eq 2}"> 天使轮</c:if>
    	<c:if test="${idealDetail.i_d_e.f_s_t eq 3}"> A轮 </c:if>
    	<c:if test="${idealDetail.i_d_e.f_s_t eq 4}"> B轮 </c:if>
    	<c:if test="${idealDetail.i_d_e.f_s_t eq 5}"> C轮 </c:if>
    	<c:if test="${idealDetail.i_d_e.f_s_t eq 6}"> C轮以后 </c:if>
    </td>
  </tr>
  <tr>
    <th>项目简介：</th>
    <td colspan="3">${idealDetail.i_d_e.i_n_t }</td>
    </tr>
</table>
    </div>
    <div class="border-box detail-info">
      <h1>项目详情</h1>
      <p>${idealDetail.i_d_e.d_e_t}</p>
    </div>
    
    
    <%
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        request.setAttribute("user",user);
    %>
    <c:if test="${user.u_i eq idealDetail.i_d_e.u_i and not empty idealDetail.s_l}">
        <h1 class="tabs green-top">
<!--             <a href="#">交稿</a> -->
            <a href="${ctx}/ideal/detail/${sid}/0"<c:if test="${r_e_s_l eq 0}"> class="now" </c:if>>全部</a>
            <a href="${ctx}/ideal/detail/${sid}/2"<c:if test="${r_e_s_l eq 2}"> class="now" </c:if>>中标（${idealDetail.s_u_c_n}）</a>
            <a href="${ctx}/ideal/detail/${sid}/1"<c:if test="${r_e_s_l eq 1}"> class="now" </c:if>>备选（${idealDetail.r_e_s_n}）</a>
        </h1>
        
        <c:if test="${r_e_s_l eq 2}">
        <c:forEach items="${idealDetail.s_u_c_l}" var="sl" varStatus="i" >
	        <div class="detail four_colomns color${i.index+1}">
	        	<h2><a onclick="openDialogByIframe(750,500,'${sl.e_n_a}','${ctx}/ideal/scheme/detail/${sl.i_s_i}')">${sl.e_n_a}</a></h2>
	        	<c:if test="${sl.i_s_s eq 1}">
	            	<img src="${ctx}/static/images/checked_no.png"  alt="" class="checked_no"/>
	            </c:if>
	            <c:if test="${sl.i_s_s eq 2}">
	            	<img src="${ctx}/static/images/checked_yes.png"  alt="" class="checked_no"/>
	            </c:if><div style="line-height: 9px;">&nbsp;</div>
	            <div class="classfied options" style="border-top:1px dashed #e6e6e6;margin: 10px 18px;"><span class="nature">${sl.t_y_n} - ${sl.t_r_n}</span></div>
	        </div>
	    </c:forEach>        	
        </c:if>
        <c:if test="${r_e_s_l eq 1}">
        <c:forEach items="${idealDetail.r_e_s_l}" var="sl" varStatus="i" >
	        <div class="detail four_colomns color${i.index+1}">
	        	<h2><a onclick="openDialogByIframe(750,500,'${sl.e_n_a}','${ctx}/ideal/scheme/detail/${sl.i_s_i}')">${sl.e_n_a}</a></h2>
	        	<c:if test="${sl.i_s_s eq 1}">
	            	<img src="${ctx}/static/images/checked_no.png"  alt="" class="checked_no"/>
	            </c:if>
	            <c:if test="${sl.i_s_s eq 2}">
	            	<img src="${ctx}/static/images/checked_yes.png"  alt="" class="checked_no"/>
	            </c:if><div style="line-height: 9px;">&nbsp;</div>
	            <div class="classfied options" style="border-top:1px dashed #e6e6e6;margin: 10px 18px;"><span class="nature">${sl.t_y_n} - ${sl.t_r_n}</span></div>
	        </div>
	    </c:forEach>
        </c:if>
        <c:if test="${r_e_s_l eq 0}">
        <c:forEach items="${idealDetail.s_l}" var="sl" varStatus="i" >
	        <div class="detail four_colomns color${i.index+1}">
	        	<h2><a onclick="openDialogByIframe(750,500,'${sl.e_n_a}','${ctx}/ideal/scheme/detail/${sl.i_s_i}')">${sl.e_n_a}</a></h2>
	        	<c:if test="${sl.i_s_s eq 1}">
	            	<img src="${ctx}/static/images/checked_no.png"  alt="" class="checked_no"/>
	            </c:if>
	            <c:if test="${sl.i_s_s eq 2}">
	            	<img src="${ctx}/static/images/checked_yes.png"  alt="" class="checked_no"/>
	            </c:if><div style="line-height: 9px;">&nbsp;</div>
	            <div class="classfied options" style="border-top:1px dashed #e6e6e6;margin: 10px 18px;"><span class="nature">${sl.t_y_n} - ${sl.t_r_n}</span></div>
	        </div>
	    </c:forEach>
	    </c:if>
        <%-- 
        <c:forEach items="${idealDetail.s_l}" var="sl">
            <div class="detail four_colomns pics-in" onclick="openDialogByIframe(750,500,'${sl.e_n_a}','${ctx}/ideal/scheme/detail/${sl.e_i}&${idealDetail.i_d_e.i_i}')">
                <c:if test="${sl.i_s_s eq 1}">
                    <img src="${ctx}/static/images/checked_no.png"  alt="" class="checked_no"/>
                </c:if>
                <c:if test="${sl.i_s_s eq 2}">
                    <img src="${ctx}/static/images/checked_yes.png"  alt="" class="checked_no"/>
                </c:if>
                <a href="javascript:void(0);"><img src="${ctx}${empty sl.l_i_c ? "/static/images/pic-default.png" : sl.l_i_c}" class="detail_pic"></a>
                <h2>${sl.e_n_a}</h2>
                <div class="date"><fmt:formatDate value="${sl.t_y_n}"></fmt:formatDate></div>
            </div>
        </c:forEach> --%>
    </c:if>
    <c:if test="${idealDetail.f_l_g eq 1}">
	    <div class="border-box detail-info">
	      <h1>我的方案</h1>
	      <div class="border-box">
		      <table class="data" >
				  <tr>
				    <th>需求描述：</th>
				   		<td  colspan="3"><div id="aaa" >${idealDetail.i_s.d_e_s}</div></td>
				  </tr>
				  <tr>
				    <th>扶持内容：</th>
				    <td  colspan="3">${idealDetail.i_s.s_u_p }</td>
				  </tr>
				  <tr>
				    <th>提交日期：</th>
				    <td  colspan="3"><div class="date"><fmt:formatDate value="${idealDetail.i_s.c_t }"></fmt:formatDate></div></td>
				    </tr>
				</table>
    </div>
	    </div>
    </c:if>
  </div>
  <div class="sider">
    <div class="border-box">
      <h1>创客介绍</h1>
      <img src="${ctx}/static/images/photo.jpg" alt="" class="photo"/>
      <div class="name">${idealDetail.n_i_n}</div>
      <div class="sucess-number">成功创作数：<fmt:formatNumber value="${idealDetail.s_n_u_m}" pattern="###,###,###,###,###,###"></fmt:formatNumber></div>
      <div class="btns">
      	<shiro:hasRole name="member">
                <c:if test="${user.u_i ne idealDetail.i_d_e.u_i and idealDetail.f_l_g ne 1 and idealDetail.i_d_e.i_s_t eq 3 and utype eq 10}">
                    <a href="${ctx}/ideal/scheme/${idealDetail.i_d_e.i_i}#s_i" class="button">选择创意</a>
                </c:if>
                </shiro:hasRole>
       <a href="#" class="button orange">咨询客服</a></div>
    </div>
    
    <div class="code"><img src="${ctx}/static/images/code.jpg" alt=""/></div>
<!--     <div class="border-box"> -->
<!--       <h1>最近浏览创意</h1> -->
<!--       	<ul><li><a href="#">技术创新技术创新技术创新技术创新</a></li> -->
<!--       <li><a href="#">技术创新技术创新技术创新技术创新</a></li> -->
<!--       <li><a href="#">技术创新技术创新技术创新技术创新</a></li></ul> -->
<!--     </div> -->
  </div>
</div>
	<script type="text/javascript">
		$(function(){
			var imgsId=$("#aaa img");
			imgsId.css({"width":"550px"});
		});
	</script>
</html>
