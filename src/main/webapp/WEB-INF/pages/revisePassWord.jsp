<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'revisePassWord.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="${ctx}/static/css/validation.css"  rel="stylesheet" type="text/css" />
    <link href="${ctx}/static/css/login.css"  rel="stylesheet" type="text/css" />
  </head>
  
  <body>
  <div class="content" align="center" >
  	<div class="login-forms" style="width: 660px" >
            <h1><span>修改密码</span></h1>
  	<form action="${ctx}/revisePassWord" method="post" id="rpw"  >
  		<table class="data login-table" >
  			<tr>
  				<td> <input type="hidden" name="p_h_o" value="${ph}"/></td>
                <td> <input type="hidden" name="v_c" value="${re}" /><td>
  			</tr>
  			<tr>
   				<th style="width:340px" >密码:</th>
   				<td><input data-validate="password" name="newpass" id="newpass" class="rlf-input rlf-input-pwd"  type="password"></td>
   			</tr>
   			<tr>
   				<th>确认密码:</th>
   				<td style="width: 700px;"><input name="p_w_d" id="p_w_d" class="rlf-input rlf-input-pwd"  type="password"></td>
   			</tr>	   
            <tr>
            	
               <td colspan="2" style="padding-left:178px " >
               <input id="sub" type="submit" name="submit" value="提交" class="full-btn" ></td>
            </tr>
        </table>
     </form>
   </div>
</div>
        <script type="text/javascript" src="${ctx}/static/js/jquery.validate.min.js" ></script>
    	<script type="text/javascript">
    	$().ready(function(){
          //密码验证
            $("#rpw").validate({
        	    rules: {
        	    	newpass: {			//密码
        	        required: true,		//必选
        	        minlength: 6,		//最大长度
        	        maxlength:30,
        	       },
        	       p_w_d: {			//确认密码
        	        required: true,		
        	        minlength: 6,
        	        maxlength:30,
        	        equalTo: "#newpass"
        	       }
        	      },
        	    messages: {
        	    	newpass: {
        	        required: "密码不能为空",
        	        minlength:"密码长度大于6位",
        	        maxlength:"密码长度小于30位"
        	       },
        	        p_w_d: {
        	        required: "确认密码不能为空",
        	        minlength:"确认密码长度大于6位",
        	        maxlength:"确认密码长度小于30位",
        	        equalTo: "两次密码输入必须一致"
        	       }
        	      }
        	    });
            });
    	</script>
  </body>
</html>
