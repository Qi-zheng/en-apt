<%--
  Created by IntelliJ IDEA.
  User: Vincent
  Date: 2016/1/9
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp" %>
<html>
<head>
    <title></title>
    <link href="${ctx}/static/css/manage.css" rel="stylesheet" />
</head>
<body>
<div class="banner need-desired-detail"><a href="#"><img src="${ctx}/static/images/banner-originality.jpg" alt=""/></a>
</div>
<div class="content">
        <div class="border-box">
            <div class="gi-title">
                <h1>${desiredDetail.desired.p_n}</h1>
                <div class="date"><fmt:formatDate value="${desiredDetail.desired.c_t}"></fmt:formatDate></div>
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
    <form id="schemeForm" action="${ctx}/desired/scheme/create" method="post"enctype="multipart/form-data">
        <input type="hidden" name="d_i" value="${desiredDetail.desired.d_i}" />
        <div id="s_i" class="border-box green-top">
            <h1>项目创意</h1>
            <table class="data manage-table long-table">
                <tr>
                    <th>项目名称：</th>
                    <td><input type="text" name="s_n_a" ></td>
                    <td class="prompt"></td>
                </tr>
                <tr>
                    <th>项目图片：</th>
                    <td>
                        <img id="pImg" name="pImg" style="border: 1px solid #c0c0c0;" width="250" height="250" src="${ctx}/static/images/pic-default.png" onclick="imgClick('#p_b');" />
                        <input type="file" name="p_b" id="p_b" accept="image/*" style="display: none;">
                    </td>
                    <td class="prompt"></td>
                </tr>
                <tr>
                    <th>项目简介：</th>
                    <td><input type="text" name="i_n_t" ></td>
                    <td class="prompt"></td>
                </tr>
                <tr>
                    <th>标签：</th>
                    <td><input type="text" name="s_t_a" ></td>
                    <td class="prompt"></td>
                </tr>
                <tr>
                    <th>项目分类：</th>
                    <td><input type="radio" name="s_t_y" checked value="1" id="jc">
                        <label for="jc">技术创新</label>
                        <input type="radio" name="s_t_y" value="2" id="sm">
                        <label for="sm">商业模式创新</label></td>
                    <td class="prompt">&nbsp;</td>
                </tr>
                <tr>
                    <th>技术阶段：</th>
                    <td><input type="radio" name="t_e_c_s" checked value="1" id="ks">
                        <label for="ks">开发实验</label>
                        <input type="radio" name="t_e_c_s" value="2" id="fc">
                        <label for="fc">小范围测试</label>
                        <input type="radio" name="t_e_c_s" value="2" id="sy">
                        <label for="sy">商业应用</label>
                    <td class="prompt">&nbsp;</td>
                </tr>
                <tr>
                    <th>项目领域：</th>
                    <td><select name="s_t_r"  class="full">
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
                    <td>
                        <input type="radio" name="f_i_n_s" checked value="1" id="sr">
                        <label for="sr">尚未融资</label>
                        <input type="radio" name="f_i_n_s" value="2" id="ts">
                        <label for="ts">天使轮</label>
                        <input type="radio" name="f_i_n_s" value="2" id="al">
                        <label for="al">A轮</label>
                        <input type="radio" name="f_i_n_s" value="2" id="bl">
                        <label for="bl">B轮</label>
                        <input type="radio" name="f_i_n_s" value="2" id="cl">
                        <label for="cl">C轮</label>
                        <input type="radio" name="f_i_n_s" value="2" id="clh">
                        <label for="clh">C轮以后</label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <th>项目详情：</th>
                    <td colspan="2">
                        <script type="text/plain" id="d_e_t" name="d_e_t">
                        </script>

                    </td>
                </tr>
                <tr>
                    <th>详细计划书上传：</th>
                    <td>
                        <input type="file" name="prospectus" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table><div class="align_right_btns" style="text-align:center;"><input id="submit" type="submit" value="提交" class="big-btn"></div>
        </div>
        
    </form>
</div>
<!-- 配置文件 -->
<script type="text/javascript" src="${ctx}/static/plugins/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="${ctx}/static/plugins/ueditor/ueditor.all.js"></script>
<!-- 语言包文件(建议手动加载语言包，避免在ie下，因为加载语言失败导致编辑器加载失败) -->
<script type="text/javascript" src="${ctx}/static/plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" src="${ctx}/static/js/jquery.validate.min.js" ></script>
<script type="text/javascript" src="${ctx}/static/js/additional-methods.min.js" ></script>
<script type="text/javascript" src="${ctx}/static/js/jquery.imgPreview.js" ></script>

<script type="text/javascript">
    UE.getEditor('d_e_t',{initialFrameWidth:800});
    function imgClick(o){
        $(o).click();
    }
	
	$("#p_b").change(function(){
		if(/\.(jpg|gif|jpeg|png|bmp)$/.test(this.value))
			return ;
		$("#p_b").val('');
    	alert("您上传的格式不支持，请上传jpg,png,gif,jpeg,bmp");
	});
	

	$("#schemeForm").submit(function(e){
		if(!$("#schemeForm").valid())
			return false;
		$('#submit').addClass('gray');
		$('#submit').attr('disabled','disabled');
		$('#submit').val('正在保存...');
		return true;
	});


	$.validator.addMethod("isRight", function(value, element) {
		return this.optional(element) || /^[a-z0-9A-Z\u4e00-\u9fa5]+$/.test(value);
	}, "只包括汉字、数字和字母");
	// Accept a value from a file size based on a required size
	$.validator.addMethod("filemin", function(value, element, params) {
		try{
			return element.files[0].size>params*1024;
		}catch(err){
			return true;
		}
		}, "文件大小不符！");
	
	
    $().ready(function(){


        $("#p_b").uploadPreview({ img: "pImg", width: 250, height: 250 });

        var validator = $("#schemeForm").validate({
            rules:{
                s_n_a:{	
                    required:true,
                    maxlength:100,		//最大长度
        	        isRight:true
                },
                i_n_t:{
                    required:true,
                    maxlength:100
                },
                s_t_a:{
                	required:true,
                	maxlength:500
                },
                prospectus:{			//上传附件jpg,png,gif,jpeg,pdf,doc,docx,ppt,pptx,xls,xlsx
    	    	   extension: "jpg|png|gif|jpeg|pdf|doc|docx|ppt|pptx|xls|xlsx",
    	    	   filemin:1	//此处衡量单位为KB
    	       },pImg:{			//上传附件jpg,png,gif,jpeg
    	    	   extension: "jpg|png|gif|jpeg",
    	    	   filemin:1	//此处衡量单位为KB
    	       }
    	       
            },
            messages:{
                s_n_a:{
                    required:"项目名称不能为空",
                    maxlength:"项目名称长度不能超过50个汉字",		//最大长度
        	        isRight:"项目名称可使用字母、数字和汉字"
                },
                i_n_t:{
                    required:"项目简介不能为空",
                    maxlength:"项目简介长度不能超过100个汉字"
                },
                s_t_a:{
                	required:"标签不能为空",
                	maxlength:"标签长度不能超过500个汉字"
                },
                prospectus:{
    	    	   extension: "附件格式不正确.(附件应为jpg,png,gif,jpeg,pdf,doc,docx,ppt,pptx,xls,xlsx)",
    	    	   filemin:"上传文件不得小于1KB"
    	       },pImg:{			//上传附件jpg,png,gif,jpeg
    	    	   extension: "附件格式不正确.(附件应为jpg,png,gif,jpeg)",
    	    	   filemin:"上传文件不得小于1KB"
    	       }
            }
        });
    });
</script>
</body>
</html>
