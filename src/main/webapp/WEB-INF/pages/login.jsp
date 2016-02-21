<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/6/12
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>



    <link href="${ctx}/static/css/login.css"  rel="stylesheet" type="text/css" />
</head>
<body>
<div class="content">
    <div class="login-forms">
        <h1><span>报到</span></h1>

        <form action="${ctx}/login" method="post" name="loginForm"><table class="data login-table">
            <tr>
                <th>手机：</th>
                <td>
                    <input name="username"
                           type="text" placeholder="手机号/用户名" onblur="GetPwdAndChk()" id="txtUserName"/>
                </td>
            </tr>
            <tr>
                <th>密码：</th>
                <td><input name="password"
                           type="password" placeholder="请输入密码" id="txtPassword" /></td>
            </tr>
            <tr>
                <th>&nbsp;</th>
                <td><input type="checkbox" name="rememberMe" value="true" id="rememberMe" />
                    <label for="rememberMe">记住密码<a href="${ctx}/forgetPassWord" class="align_right">忘记密码？</a></label></td>
            </tr>
            <c:if test="${not empty error}">
                <tr><td></td>
                    <td class="validate">${error}</td>
                </tr>
            </c:if>
            <tr>
                <th>&nbsp;</th>
                <td><input OnClick="SetPwdAndChk()" type="submit" name="submit" id="submit" value="登录" class="full-btn"></td>
            </tr>
        </table>
        </form>
    </div>
    <div class="login-siders">
        <h1>还没有账号</h1>
        <div class="btns"><a href="${ctx}/user/register/reg" class="button long-btn space-btn">立即入圃登记</a></div>
        <p>若<a href="${ctx}/forgetPassWord" > <strong>忘记密码？</strong></a> 可以通过手机找回</p>
        <ul>

            <li><a href="#">开发者零门槛加入</a></li>
            <li><a href="#">开发者零门槛加入</a></li>
            <li><a href="#">开发者零门槛加入</a></li>
            <li><a href="#">开发者零门槛加入</a></li>
        </ul>
    </div>
</div>
<div class="abouts">
    <div class="content">
        <div class="six-colomns">
            <h3>关于我们</h3>
            <p><a href="#">关于双创云平台</a></p>
            <p><a href="#">合作机构</a></p>
            <p><a href="#">团队介绍</a></p>

        </div>

        <div class="six-colomns long">
            <h3>联系我们</h3>
            <p>电话咨询：400-610-1019</p>
            <p>在线咨询：<a href="#"><img src="${ctx}/static/images/qq.jpg" alt=""/></a></p>
        </div>
        <div class="six-colomns">
            <h3>关注我们</h3>
            <p><a href="#"><img src="${ctx}/static/images/erweima.jpg" width="100" height="100" alt=""/></a></p>
            <p><a href="#"><img src="${ctx}/static/images/s-logo.png" alt=""/></a></p>
        </div>
    </div>
</div>


</body>
</html>
