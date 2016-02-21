<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/7/1
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>邮箱验证结果页面</title>
    <script type="text/javascript" src="${ctx}/static/js/jquery.min.js"></script>
    <link rel="stylesheet" href="${ctx}/static/css/main.css" type="text/css" />
    <style type="text/css">
    	.wcontainer {
		    width: 1200px;
		    margin: 0px auto;
		    min-height: 660px;
		}
		.wrap-boxes {
		    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
		    background: #FFF none repeat scroll 0% 0%;
		}
		.wwrap {
		    padding: 20px;
		    height: 450px;
		}
		.wheader-wrap {
		    padding-bottom: 20px;
		    border-bottom: 1px solid #D0D6D9;
		}
		.wheader-wrap h1 {
		    color: #4D5559;
		    font-size: 18px;
		    line-height: 100%;
		}
		h1, h2, h3, h4, h5, h6 {
		    font-size: 100%;
		    font-weight: normal;
		    font-family: "Microsoft YaHei";
		}
	.pwd-reset-result p {
    color: #656E73;
    margin-left: 39%;
    margin-top: 2%;
}
.pwd-rstsuc-txt {
    font-size: 24px;
}
#chage{
	margin-left: 41%;
}
.pwd-reset-result .rlf-btn-green {
    color: #FFF;
    margin-left: 44%;
margin-top: 1%;
}
.rlf-btn-green:hover {
    background-color: #33A646;
}
a:hover, a:active {
    color: #C00;
}
a:link, a:visited {
    color: #14191E;
}
a:hover {
    color: #C9394A;
}
a:link, a:visited {
    color: #5E5E5E;
}
.btn-block {
    display: block;
    width: auto;
}
.rlf-btn-green {
    color: #FFF;
    font-size: 14px;
    background-color: #39B94E;
    height: 40px;
    line-height: 40px;
    width: 160px;
    cursor: pointer;
    text-align: center;
    transition: background-color 0.2s ease 0s;
}
:link, :visited, ins {
    text-decoration: none;
}
a, input, button {
    outline: medium none;
}
    </style>
</head>
<body>

    <div class="wwrap wrap-boxes">
        <div class="wheader-wrap">
            <h1>邮箱验证</h1>
        </div>
        <div class="pwd-reset-result">
            <i class="pwd-rsterror-icon"></i>
            <div class="pwd-rstsuc-inner">
                <p class="pwd-rstsuc-txt">${result}</p>
                <p id = "chage">
                    	你的邮箱${username}验证${flag} <br>
                    	
                    	&nbsp &nbsp<span id="pwd-rstsuc-timer" class="pwd-rstsuctm-wrap">6</span>秒后自动跳转到盈和数据首页
                </p>
            </div>
            <a href="${ctx}/" class="rlf-btn-green btn-block">返回首页</a>
        </div>
    </div>


<script type="text/javascript">

        function countDown(secs,surl) {
            var jumpTo = $('#pwd-rstsuc-timer');
            jumpTo.html(secs);
            if (--secs > 0) {
                setTimeout("countDown(" + secs + ",'" + surl + "')", 1000);
            }
            else {
                location.href = surl;
            }
        }
        countDown(6,"${ctx}/"); 

</script>
</body>
</html>
