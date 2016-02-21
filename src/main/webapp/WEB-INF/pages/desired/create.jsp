<%--
  Created by IntelliJ IDEA.
  User: Vincent
  Date: 2016/1/9
  Time: 11:25
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
    <form action="${ctx}/desired/create" id="cred" method="post">
    <table class="data manage-table">
        <tr>
            <th>项目名称：</th>
            <td><input type="text" name="p_n" ></td>
            <td class="prompt"></td>
        </tr>
        <tr>
            <th>项目分类：</th>
            <td><input type="radio" name="p_t_y" checked value="1" id="jc">
                <label for="jc">技术创新</label>
                <input type="radio" name="p_t_y" value="2" id="sy">
                <label for="sy">商业模式创新</label></td>
            <td class="prompt">&nbsp;</td>
        </tr>
        <tr>
            <th>项目领域：</th>
            <td><select name="p_t_r"  class="full">
                <option value="1" selected<c:if test="${enterprise.t_r eq \"1\"}"> selected </c:if>>汽车</option>
                <option value="2" <c:if test="${enterprise.t_r eq \"2\"}"> selected </c:if>>能源</option>
                <option value="3" <c:if test="${enterprise.t_r eq \"3\"}"> selected </c:if>>交通</option>
                <option value="4" <c:if test="${enterprise.t_r eq \"4\"}"> selected </c:if>>信息</option>
                <option value="5" <c:if test="${enterprise.t_r eq \"5\"}"> selected </c:if>>服务</option>
                <option value="6" <c:if test="${enterprise.t_r eq \"6\"}"> selected </c:if>>金融</option>
                <option value="7" <c:if test="${enterprise.t_r eq \"7\"}"> selected </c:if>>其他</option>
            </select></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <th>地区：</th>
            <td>
                <div id="city">
                    <select class="prov" name="prov"></select>
                    <select class="city" name="city" disabled="disabled"></select>
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <th>截止日期：</th>
            <td>
                <input type="text" name="d_l" class="Wdate" onclick="WdatePicker({skin:'twoer',minDate:'%y-%M-{%d+1}'});"  value="<fmt:formatDate value="${personage.b_i_r}"></fmt:formatDate>" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <th>需求内容：</th>
            <td colspan="2">
                <script type="text/plain" id="c_o" name="c_o">
                </script>

            </td>
        </tr>
    </table>
    <div class="btns"><input name="submit" type="submit" class="full-btn" id="submit" value="提交"></div>
    </form>
</div>

    <!-- 配置文件 -->
    <script type="text/javascript" src="${ctx}/static/plugins/ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="${ctx}/static/plugins/ueditor/ueditor.all.js"></script>
    <!-- 语言包文件(建议手动加载语言包，避免在ie下，因为加载语言失败导致编辑器加载失败) -->
    <script type="text/javascript" src="${ctx}/static/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript" src="${ctx}/static/plugins/city/jquery.cityselect.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jquery.validate.min.js" ></script>
<script type="text/javascript">
    UE.getEditor('c_o',{initialFrameWidth:700});
    $("#city").citySelect({
        prov: "北京",
        city: "东城区"
    });

	$.validator.addMethod("isRight", function(value, element) {
		return this.optional(element) || /^[a-z0-9A-Z\u4e00-\u9fa5]+$/.test(value);
	}, "只包括汉字、数字和字母");

	$("#cred").submit(function(e){
		if(!$("#cred").valid())
			return false;
		$('#submit').addClass('gray');
		$('#submit').attr('disabled','disabled');
		$('#submit').val('正在保存...');
		return true;
	});
    
    $().ready(function(){
      //表单验证
        $("#cred").validate({
    	    rules: {
    	    	p_n: {			//项目名称
    	        required: true,		//必选
    	        maxlength: 100,		//最大长度
    	        isRight:true
    	       },
    	       d_l:{		//需求日期
    	       	required:true	
    	       }
    	      },
    	    messages: {
    	    	p_n: {
    	        required: "项目名称不能为空",
    	        maxlength:"项目名称长度不能超过100个字符",
    	        isRight:"项目名称可使用字母、数字和汉字"
    	       },
    	       d_l:{		//需求日期
    	       	required:"日期为必选项"	
    	       }
    	      }
    	    });
        });
</script>
</body>
</html>
