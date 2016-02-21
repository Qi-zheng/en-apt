<%@ include file="/WEB-INF/pages/commons/include-tags.jsp"%>
<%@ page language="java" pageEncoding="UTF-8"%>


<div class="header">
	<div class="options content">欢迎致电400-000-0000<small>服务时间：9:00 - 21:00</small>
		<div class="header-logins">
			<shiro:guest>
				<a href="${ctx}/login">报到</a>
				<a href="${ctx}/user/register/reg" class="now">入圃登记</a>
			</shiro:guest>
			<shiro:user>
				<span>欢迎[<shiro:principal property="p_h_o" />]报到</span>
				<a href="${ctx}/account/info">我的试验田</a>
				<a href="${ctx}/logout">退出</a>
			</shiro:user>
		</div>
	</div>
</div>
<div class="mainnv">
	<div class="options content">
		<a href="${ctx}/" class="logo"><img
			src="${ctx}/static/images/logo48.jpg" alt="" /> </a> <a href="${ctx}/"
			class="now">苗圃</a> <a href="${ctx}/desired/list?p_g_n=1&c_o_o_r=desc">挑花盆</a>
		<a href="${ctx}/ideal/list?p_g_n=1&c_o_o_r=desc">筛种子</a> <a
			href="${ctx}/financing/index">光合实验室</a> <a href="${ctx}/about">关于苗圃</a>
	</div>
</div>

<script>

    $('.mainnv a').each(function(index,element){

        if($(element).attr("href").indexOf(window.location.pathname) != -1 && window.location.pathname != "${ctx}/") {
            if($(element).attr("class") != "logo" )
                $(element).addClass("now");
        } else {
            if(window.location.pathname != "${ctx}/"){
                $(element).removeClass("now");
            }
        }

    });
    
     
</script>