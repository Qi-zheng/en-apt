<%--
  Created by IntelliJ IDEA.
  User: Vincent
  Date: 2016/1/6
  Time: 17:55
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


    <c:if test="${utype eq 0}">
        <div class="warn">账户未实名认证，认证后可发布需求或创意。</div>
    </c:if>

    <c:if test="${utype eq 1}">
        <div class="warn">实名认证申请已经提交，请等待平台管理员审核！</div>
    </c:if>
	<c:if test="${utype eq -1}">
        <div class="warn">实名认证申请已被拒绝，请核实后填写！</div>
    </c:if>
<form id="infoForm" name="infoForm" enctype="multipart/form-data" action="${ctx}${accountType ne 0 ? (accountType eq 20 ? "/account/personage/save" : "/account/enterprise/save"):""}" method="post">
    <table class="data manage-table">
        <tr>
            <th>手机：</th>
            <td><shiro:principal property="p_h_o"/></td>
        </tr>
        <tr>
            <th>密码：</th>
            <td><input type="password" name="p_w_d" ></td>
        </tr>
        <tr>
            <th>账户类型<font color="red">*</font>：</th>
            <td>
                <c:choose>
                    <c:when test="${accountType eq 0}">
                        <input type="radio" name="act_type" value="1" id="enterpriseRadio">
                        <label for="enterpriseRadio">企业</label>
                        <input type="radio" name="act_type" value="2" id="individualRadio" class="person">
                        <label for="individualRadio">个人</label>
                    </c:when>
                    <c:when test="${accountType eq 10}">
                        企业
                    </c:when>
                    <c:when test="${accountType eq 20}">
                        个人
                    </c:when>
                </c:choose>

            </td>
            <td class="prompt">
                <c:if test="${accountType eq 0}">
                选择确定后无法修改，企业可以发布创意和需求，个人只能发布创意
                </c:if>
            </td>
        </tr>
    </table>
    <div id="individual" <c:if test="${accountType eq 10 or accountType eq 0}">style="display: none;"</c:if>>
        <table class="data manage-table">
            <tr>
                <th>姓名<font color="red">*</font>：</th>
                <td><input type="text" name="p_n_a" value="${personage.p_n_a}"></td>
                <td class="prompt">请输入真实的姓名，我们会去公安系统进行验证</td>
            </tr>
            <tr>
                <th>身份证<font color="red">*</font>：</th>
                <td><input type="text" name="i_d_c" value="${personage.i_d_c}"></td>
                <td class="prompt">请输入真实的身份证，我们会去公安系统进行验证</td>
            </tr>
            <tr>
                <th>出生年月：</th>
                <td>

                    <input type="text" name="b_i_r" class="Wdate" onclick="WdatePicker({skin:'twoer',maxDate:'%y-%M-{%d-1}'});"  value="<fmt:formatDate value="${personage.b_i_r}"></fmt:formatDate>" />
                </td>
                <td class="prompt">输入真实的出生年月平台会有奖励呦</td>
            </tr>
            <tr>
                <th>学历<font color="red">*</font>：</th>
                <td><select name="e_d_u"  class="full">
                    <option value="专科" <c:if test="${personage.e_d_u eq \"专科\"}">selected </c:if>>专科</option>
                    <option value="本科"<c:if test="${personage.e_d_u eq \"本科\"}">selected </c:if>>本科</option>
                    <option value="硕士"<c:if test="${personage.e_d_u eq \"硕士\"}">selected </c:if>>硕士</option>
                    <option value="博士"<c:if test="${personage.e_d_u eq \"博士\"}">selected </c:if>>博士</option>
                </select></td>
                <td class="prompt">请输入您的最高学历</td>
            </tr>
            <tr>
                <th>毕业院校：</th>
                <td><input type="text" name="s_c_h"  value="${personage.s_c_h}"></td>
                <td class="prompt">请输入您最高学历的毕业院校</td>
            </tr>
            <tr>
                <th>个人简介：</th>
                <td><textarea name="i_n_t_r"  cols="80" rows="5"> ${personage.i_n_t_r}</textarea></td>
                <td class="prompt">简要的说一下您的个人经历</td>
            </tr>
        </table>
    </div>
    <div id="enterprise" <c:if test="${accountType eq 20 or accountType eq 0}">style="display: none;"</c:if>>
        <table class="data manage-table">
            <tr>
                <th>企业名称<font color="red">*</font>：</th>
                <td><input type="text" name="e_n_a" value="${enterprise.e_n_a}"></td>
            </tr>
            <tr>
                <th>注册资金<font color="red">*</font>：</th>
                <td><input type="text" name="c_a_p" value="${enterprise.c_a_p}">元</td>
            </tr>
            <tr>
                <th>企业性质<font color="red">*</font>：</th>
                <td>
                    <input type="radio" name="t_y" value="1" <c:if test="${enterprise.t_y eq \"1\"}"> checked</c:if> id="g"><label for="g">国企</label>
                    <input type="radio" name="t_y" value="2" <c:if test="${enterprise.t_y eq \"2\"}"> checked</c:if> id="m"><label for="m">民企</label>
                    <input type="radio" name="t_y" value="3" <c:if test="${enterprise.t_y eq \"3\"}"> checked</c:if> id="sm"><label for="sm">上市民企</label>
                    <input type="radio" name="t_y" value="4" <c:if test="${enterprise.t_y eq \"4\"}"> checked</c:if> id="f"><label for="f">非盈利组织</label>
                </td>
            </tr>
            <tr>
                <th>行业<font color="red">*</font>：</th>
                <td>
                    <select name="t_r"  class="full">
                        <option value="1" <c:if test="${enterprise.t_r eq \"1\"}"> selected </c:if>>汽车</option>
                        <option value="2" <c:if test="${enterprise.t_r eq \"2\"}"> selected </c:if>>能源</option>
                        <option value="3" <c:if test="${enterprise.t_r eq \"3\"}"> selected </c:if>>交通</option>
                        <option value="4" <c:if test="${enterprise.t_r eq \"4\"}"> selected </c:if>>信息</option>
                        <option value="5" <c:if test="${enterprise.t_r eq \"5\"}"> selected </c:if>>服务</option>
                        <option value="6" <c:if test="${enterprise.t_r eq \"6\"}"> selected </c:if>>金融</option>
                        <option value="7" <c:if test="${enterprise.t_r eq \"7\"}"> selected </c:if>>其他</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>联络人<font color="red">*</font>：</th>
                <td>
                    <input type="text" name="l_i_a" value="${enterprise.l_i_a}">
                </td>
            </tr>
            <tr>
                <th>办公电话：</th>
                    <td><input type="text" name="o_f_p" value="${enterprise.o_f_p}">
                </td>
            </tr>
            <tr>
                <th>联系地址：</th>
                    <td><input type="text" name="a_d_s" value="${enterprise.a_d_s}">
                </td>
            </tr>
            <tr>
                <th>邮箱：</th>
                    <td><input type="text" name="e_m_l" value="${enterprise.e_m_l}">
                </td>
            </tr>
            <tr>
                <th>机构代码照片：</th>
                <td>
                    <img id="orgCodeImg" width="250" height="250" src="${ctx}${empty enterprise.o_i_b_c ? "/static/images/orc-def.png" : enterprise.o_i_b_c}" onclick="imgClick('#orgCode');" />
                    <input type="file" name="orgCode" accept="image/*"  id="orgCode" style="display: none;">
                </td>
            </tr>
            <tr>
                <th>营业执照照片：</th>
                <td>
                    <img id="licenceImg" width="250" height="250" src="${ctx}${empty enterprise.l_i_c ? "/static/images/lic-def.png" : enterprise.l_i_c}" onclick="imgClick('#licence');" />
                    <input type="file" name="licence" accept="image/*"  id="licence" style="display: none;">
                </td>
            </tr>

        </table>
    </div>
    <div class="btns">
        <input type="submit"  id="sub" value="保存" <c:if test="${accountType eq 0}">disabled</c:if> class="full-btn">
    </div>
</form>
<script src="${ctx}/static/plugins/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${ctx}/static/js/jquery.validate.min.js" ></script>
<script type="text/javascript" src="${ctx}/static/js/jquery.imgPreview.js" ></script>

<script type="text/javascript">

    function imgClick(o){
        $(o).click();
    }    

	$("#infoForm").submit(function(e){
		if(!$("#infoForm").valid())
			return false;
		$('#sub').addClass('gray');
		$('#sub').attr('disabled','disabled');
		$('#sub').val('正在保存...');
		return true;
	});
	
	$("#orgCode").change(function(){
		if(/\.(jpg|gif|jpeg|png|bmp)$/.test(this.value))
			return ;
		$("#orgCode").val('');
    	alert("您上传的格式不支持，请上传jpg,png,gif,jpeg,bmp");
	});

	$("#licence").change(function(){
		if(/\.(jpg|gif|jpeg|png|bmp)$/.test(this.value))
			return ;
		$("#licence").val('');
    	alert("您上传的格式不支持，请上传jpg,png,gif,jpeg,bmp");
	});
    
    $().ready(function(){
        $("#orgCode").uploadPreview({ img: "orgCodeImg", width: 250, height: 250 });
        $("#licence").uploadPreview({ img: "licenceImg", width: 250, height: 250 });
        $("input[name='act_type']").on("click",function(){
            $("#sub").removeAttr("disabled");
            if($(this).val() == "1"){
                $("#infoForm").attr("action","${ctx}/account/enterprise/save");
                $("#enterprise").show();
                $("#individual").hide();
            }else{
                $("#infoForm").attr("action","${ctx}/account/personage/save");
                $("#enterprise").hide();
                $("#individual").show();
            }
        });
        $.validator.addMethod("isIdCardNo", function (value, element) {
        	 return this.optional(element) || isIdCardNo(value);
            //return this.optional(element) || /^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X|x)$/.test(value);            
        }, "请正确输入您的18位身份证号码");

        $.validator.addMethod("isEmail", function (value, element) {
        	 return this.optional(element) || /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,8}){1,2})$/.test(value);
            //return this.optional(element) || /^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X|x)$/.test(value);            
        }, "您的邮箱不正确");
        
        $.validator.addMethod("isOfficePhone", function (value, element) {
            return this.optional(element) || (/^\d{3}-\d{8}$/.test(value) || /^\d{4}-\d{7,8}$/.test(value));
        }, "办公电话不正确");
        
        $.validator.addMethod("isCapital", function (value, element) {
            return this.optional(element) || (/^-?[1-9]\d*$/.test(value) || /^(([0-9]|([1-9][0-9]{0,12}))((\.[0-9]{1,2})?))$/.test(value));
        }, "金额不正确");

        $("#infoForm").submit(function(e){
        	if (!confirm("保存信息后将强行退出，信息的修改需要重新审核账户！")){
        		window.location.reload();
        		return false;
        	}
        });
        
        $("#infoForm").validate({
            rules: {
                i_d_c:{
                    required: true,
                    isIdCardNo:true
                },
                p_n_a:{
                    required:true,
                    maxlength:10
                },
                e_n_a:{
                    required:true,
                    maxlength:100
                },
                c_a_p:{
                    required:true,
                    isCapital:true
                },
                l_i_a:{
                    required:true,
                    maxlength:10
                },
                e_m_l:{
                	isEmail:true
                },
                o_f_p:{
                	isOfficePhone:true
                },a_d_s:{
                	maxlength:100
                },
                s_c_h:{
                	maxlength:20
                },
                i_n_t_r:{
                	maxlength:500
                }
            },
            messages: {
                i_d_c:{
                    required:"身份证号不能为空"
                },
                p_n_a:{
                    required:"姓名不能为空",
                    maxlength:"姓名长度不能超过10个汉字"
                },
                e_n_a:{
                    required:"企业名称不能为空",
                    maxlength:"企业名称长度不能超过100个汉字"
                },
                c_a_p:{
                    required:"注册资金不能为空",
                    isCapital:"请输入正确的金额"
                },
                l_i_a:{
                    required:"联络人不能为空",
                    maxlength:"联络人长度不能超过10个汉字"
                },
                e_m_l:{
                	isEmail:"邮箱验证未通过"
                },
                o_f_p:{
                	isOfficePhone:"办公电话不正确(格式为[3位-8位]或[4位-7至8位])"
                },a_d_s:{
                	maxlength:"联系地址最大为100汉字"
                },
                 s_c_h:{
                	maxlength:"毕业院校最大为20个汉字"
                },
                 i_n_t_r:{
                	maxlength:"个人简介最大为500个汉字"
                }
            }
        });

    });

    // 增加身份证验证
    function isIdCardNo(num) {
        var factorArr = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1);
        var parityBit = new Array("1", "0", "X", "9", "8", "7", "6", "5", "4", "3", "2");
        var varArray = new Array();
        var intValue;
        var lngProduct = 0;
        var intCheckDigit;
        var intStrLen = num.length;
        var idNumber = num;
        // initialize
        //if ((intStrLen != 15) || (intStrLen != 18)) {
        if (intStrLen != 18) {
            return false;
        }
        // check and set value
        for (i = 0; i < intStrLen; i++) {
            varArray[i] = idNumber.charAt(i);
            if ((varArray[i] < '0' || varArray[i] > '9') && (i != 17)) {
                return false;
            } else if (i < 17) {
                varArray[i] = varArray[i] * factorArr[i];
            }
        }
        if (intStrLen == 18) {
            //check date
            var date8 = idNumber.substring(6, 14);
            if (isDate8(date8) == false) {
                return false;
            }
            // calculate the sum of the products
            for (i = 0; i < 17; i++) {
                lngProduct = lngProduct + varArray[i];
            }
            // calculate the check digit
            intCheckDigit = parityBit[lngProduct % 11];
            // check last digit
            if (varArray[17] != intCheckDigit) {
                return false;
            }
        }
        else {        //length is 15
            //check date
            var date6 = idNumber.substring(6, 12);
            if (isDate6(date6) == false) {
                return false;
            }
        }
        return true;
    }
    function isDate6(sDate) {
        if (!/^[0-9]{6}$/.test(sDate)) {
            return false;
        }
        var year, month, day;
        year = sDate.substring(0, 4);
        month = sDate.substring(4, 6);
        if (year < 1700 || year > 2500) return false;
        if (month < 1 || month > 12) return false;
        return true
    }

    function isDate8(sDate) {
        if (!/^[0-9]{8}$/.test(sDate)) {
            return false;
        }
        var year, month, day;
        year = sDate.substring(0, 4);
        month = sDate.substring(4, 6);
        day = sDate.substring(6, 8);
        var iaMonthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        if (year < 1700 || year > 2500) return false;
        if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) iaMonthDays[1] = 29;
        if (month < 1 || month > 12) return false;
        if (day < 1 || day > iaMonthDays[month - 1]) return false
        return true
    }
    

</script>

</body>
</html>
