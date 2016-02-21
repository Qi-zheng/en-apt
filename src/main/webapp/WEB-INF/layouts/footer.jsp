<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp" %>
<div class="footer">
    <p class="content">
        <span class="atus">
            <a href="#" target="_blank"><img id="weixin" src="${ctx}/static/images/ico1.png" alt=""/></a>
            <a href="#" target="_blank"><img src="${ctx}/static/images/ico2.png" alt=""/></a>
            <a href="#" target="_blank"><img src="${ctx}/static/images/ico3.png" alt=""/></a>
            <a href="#" target="_blank"><img src="${ctx}/static/images/ico4.png" alt=""/></a>
        </span>
        官方邮箱：<a href="mailto:lining@163.com">lining@163.com</a>　© 石化盈科信息技术有限责任公司  技术支持 <span class="tel">400-665-1000</span>
        <span class="logos">
            <a href="#" target="_blank"><img src="${ctx}/static/images/logos2.gif" alt=""/></a>
            <a href="#" target="_blank"><img src="${ctx}/static/images/logos3.gif" alt=""/></a>
        </span>
    </p>
</div>
<img id="erweima" style="position: absolute;display: none;" src="${ctx}/static/images/erweima.jpg" width="150" height="150" alt=""/>

<script type="text/javascript">
    $("#weixin").on("mouseout",function(){

        $("#erweima").hide();
    });
    $("#weixin").on("mouseover",function(){
        var x = $(this).offset().top;
        var y = $(this).offset().left;
        $("#erweima").css("top",x-160 + "px");
        $("#erweima").css("left",y-65 + "px");
        $("#erweima").show();
    });
</script>
