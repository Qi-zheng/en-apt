<%--
  Created by IntelliJ IDEA.
  User: WuZhi
  Date: 2016/1/13
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
<div class="banner need-ideal-detail"><a href="#"><img src="${ctx}/static/images/banner-originality.jpg" alt=""/></a>
</div>
<div class="content">
       <div class="border-box">
      <div class="gi-title">
          <img src="${ctx}/static/images/gi_sample.jpg" alt="" class="gi-pic"/>
          <h1>${idealDetail.i_d_e.i_n}</h1>
          <div class="date"><fmt:formatDate value="${idealDetail.i_d_e.c_t_i}"></fmt:formatDate></div>
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
    <td>天使轮</td>
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
    <form id="schemeForm" action="${ctx}/ideal/scheme/create" method="post"enctype="multipart/form-data">
        <input type="hidden" name="i_i_d" value="${idealDetail.i_d_e.i_i}" />
        <div id="s_i" class="border-box green-top">
            <h1>选择创意</h1>
            <table class="data manage-table long-table">
                <tr>
                    <th>需求描述：</th>
                    <td colspan="2">
    					<textarea id="d_e_s" name="d_e_s"></textarea>
    					<label id="d_e_s-error" class="error" for="d_e_s" style="display: none;"></label>
                        <!-- <script type="text/plain" id="d_e_s" name="d_e_s">
                            <p>欢迎使用UEditor！</p>
                        </script> -->
                    </td>
                </tr>
                <tr>
                    <th>扶植内容：</th>
                    <td colspan="2">
                        <script type="text/plain" id="s_u_p" name="s_u_p">
                            
                        </script>
                    </td>
                </tr>
            </table>
        <div class="align_right_btns" style="text-align:center;"><input type="submit" id="submit" value="提交" class="big-btn"></div>
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
<script type="text/javascript" src="${ctx}/static/js/jquery.imgPreview.js" ></script>

<script type="text/javascript">
    UE.getEditor('d_e_s',{initialFrameWidth:800});
    UE.getEditor('s_u_p',{initialFrameWidth:800});

	$("#schemeForm").submit(function(e){
		if(!$("#schemeForm").valid())
			return false;
		$('#submit').addClass('gray');
		$('#submit').attr('disabled','disabled');
		$('#submit').val('正在保存...');
		return true;
	});
	
    var validator = $("#schemeForm").submit(function() {
        UE.getEditor('d_e_s').sync();
    }).validate({
                ignore: "",
                rules: {
                	d_e_s: "required"
                },
                messages:{
                	d_e_s:{
                		required:"需求描述不能为空!"
                    }
                },
                errorPlacement: function(label, element) {
                    label.insertAfter(element.is("textarea") ? element.next() : element);
                }
            });
    validator.focusInvalid = function() {
        if( this.settings.focusInvalid ) {
            try {
                var toFocus = $(this.findLastActive() || this.errorList.length && this.errorList[0].element || []);
                if (toFocus.is("textarea")) {
                    UE.getEditor('d_e_s').focus();
                    $('#d_e_s-error').show();
                } else {
                    toFocus.filter(":visible").focus();
                }
            } catch(e) {
            }
        }
    };
</script>
</body>
</html>
