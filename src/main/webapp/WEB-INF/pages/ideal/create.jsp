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
    <form action="${ctx}/ideal/create" id="crea"  enctype="multipart/form-data" method="post">
    <table class="data manage-table">
        <tr>
            <th>项目名称：</th>
            <td><input type="text" id="pn" name="i_n" ></td>
            <td class="prompt"></td>
        </tr>
        <tr>
         	<th>项目图片：</th>
            <td>
                <img id="p_p_h" name="p_p_h" style="border: 1px solid #c0c0c0;" width="250" height="250" src="${ctx}/static/images/pic-default.png" onclick="imgClick('#picter');" />
                <input type="file" name="picter" id="picter" accept="image/*" style="display: none;">
            </td>
        </tr>
        <tr>
       		<th>简介：</th>
       		<td><input type="text" name="i_n_t" ></td>
        </tr>
        <tr>
       		<th>标签：</th>
       		<td><input type="text" name="i_t_a" ></td>
        </tr>
        <tr>
            <th>项目分类：</th>
            <td><input type="radio" name="i_t_y" checked value="1" id="jc">
                <label for="jc">技术创新</label>
                <input type="radio" name="i_t_y" value="2" id="sy">
                <label for="sy">商业模式创新</label></td>
            <td class="prompt">&nbsp;</td>
        </tr>
        <tr>
            <th>技术阶段：</th>
            <td><input type="radio" name="t_s_t" checked value="1" id="jd">
                <label for="jd">开发试验</label>
                <input type="radio" name="t_s_t" value="2" id="sd">
                <label for="sd">小范围测试</label>
                <input type="radio" name="t_s_t" value="2" id="st">
                <label for="st">商业应用</label></td>
            <td class="prompt">&nbsp;</td>
        </tr>
        <tr>
            <th>项目领域：</th>
            <td><select name="i_t_r"  class="full">
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
            <th>融资阶段：</th>
            <td><input type="radio" name="f_s_t" checked value="1" id="rz">
                <label for="rz">尚未融资</label>
                <input type="radio" name="f_s_t"  value="2" id="ts">
                <label for="ts">天使轮</label>
                <input type="radio" name="f_s_t"  value="3" id="al">
                <label for="al">A轮</label>
                <input type="radio" name="f_s_t"  value="4" id="bl">
                <label for="bl">B轮</label>
                <input type="radio" name="f_s_t"  value="5" id="cl">
                <label for="cl">c轮</label>
                <input type="radio" name="f_s_t"  value="6" id="clh">
                <label for="clh">c轮以后</label>
                </td>
            <td class="prompt">&nbsp;</td>
        </tr>
        <tr>
            <th>项目详细：</th>
            <td colspan="2">
                <script type="text/plain" id="d_e_t" name="d_e_t">
                </script>
            </td>
        </tr>
        <tr>
        	<th>上传附件：</th>
        	<td>
				<input type="file" name="files" id="a_t_t" />
			</td>
        </tr>
    </table>
    <div class="btns"><input name="submit" type="submit" class="full-btn" id="submit" value="提交"></div>
    </form>


    <!-- 配置文件 -->
    <script type="text/javascript" src="${ctx}/static/plugins/ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="${ctx}/static/plugins/ueditor/ueditor.all.js"></script>
    <!-- 语言包文件(建议手动加载语言包，避免在ie下，因为加载语言失败导致编辑器加载失败) -->
    <script type="text/javascript" src="${ctx}/static/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/jquery.imgPreview.js" ></script>
	<!-- 引入vaildate实现验证功能 -->
	<script type="text/javascript" src="${ctx}/static/js/jquery.validate.min.js" ></script>
	<script type="text/javascript" src="${ctx}/static/js/additional-methods.min.js" ></script>
	
	<!-- 实现图片上传功能 -->
	<script type="text/javascript">
	UE.getEditor('d_e_t',{initialFrameWidth:700});
	function imgClick(o){
        $(o).click();
    }
	
	$("#crea").submit(function(e){
		if(!$("#crea").valid())
			return false;
		$('#submit').addClass('gray');
		$('#submit').attr('disabled','disabled');
		$('#submit').val('正在保存...');
		return true;
	});
			
	$("#picter").change(function(){
		if(/\.(jpg|gif|jpeg|png|bmp)$/.test(this.value))
			return ;
		$("#picter").val('');
    	alert("您上传的格式不支持，请上传jpg,png,gif,jpeg,bmp");
	});
	$.validator.addMethod("isRight", function(value, element) {
		return this.optional(element) || /^[a-z0-9A-Z\u4e00-\u9fa5]+$/.test(value);
	}, "只包括汉字和字母");
	
	// Accept a value from a file size based on a required size
	$.validator.addMethod("filemin", function(value, element, params) {
		try{
			return element.files[0].size>params*1024;
		}catch(err){
			return true;
		}
		}, "文件大小不符！");
	
    $().ready(function(){
        $("#picter").uploadPreview({img: "p_p_h", width: 250, height: 250 });
      //表单验证
        $("#crea").validate({
    	    rules: {
    	    	i_n: {			//项目名称
    	        required: true,		//必选
    	        maxlength: 100,		//最大长度
    	        isRight:true
    	       },
    	       i_n_t: {			//项目简介
    	        required: true,
    	        maxlength:100
    	       },
    	       i_t_a: {			//标签
    	        required: true,
    	        maxlength: 500
    	       },
    	       i_t_y: {			//项目分类
    	        required: true
    	       },
    	       files:{			//上传附件jpg,png,gif,jpeg,pdf,doc,docx,ppt,pptx,xls,xlsx
    	    	   extension: "jpg|png|gif|jpeg|pdf|doc|docx|ppt|pptx|xls|xlsx",
    	    	   filemin:1	//此处衡量单位为KB
    	       },
    	       picter:{			//上传附件jpg,png,gif,jpeg,pdf,doc,docx,ppt,pptx,xls,xlsx
    	    	   extension: "jpg|png|gif|jpeg",
    	    	   filemin:1	//此处衡量单位为KB
    	       }
    	      },
    	    messages: {
    	    	i_n: {
    	        required: "项目名称不能为空",
    	        maxlength:"项目名称长度不能超过100个字符",
    	        isRight:"项目名称可使用字母、数字和汉字"
    	       },
    	       i_n_t: {
    	        required: "项目简介不能为空",
    	        maxlength:"项目简介长度不能超过100个字符"
    	       },
    	       i_t_a: {
    	        required: "项目标签不能为空",
    	        maxlength:"项目标签长度不能超过500个字符"
    	       },
    	       i_t_y: {
    	        required: "项目分类不能为空"
    	       },
    	       files:{
    	    	   extension: "附件格式不正确.(附件应为jpg,png,gif,jpeg,pdf,doc,docx,ppt,pptx,xls,xlsx)",
    	    	   filemin:"上传文件不得小于1KB"
    	       },picter:{
    	    	   extension: "附件格式不正确.(附件应为jpg,png,gif,jpeg)",
    	    	   filemin:"上传文件不得小于1KB"
    	       }
    	      }
    	    });
        });
    
	</script>
	 
</body>
</html>
