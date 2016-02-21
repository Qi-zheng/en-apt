<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/6/12
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="/static/css/bootstrap-theme.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="/static/js/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="/static/js/bootstrap.min.js"></script>

    <style>
        body {
            font: 14px/1.5 "Microsoft YaHei","Hiragino Sans GB",arial,tahoma;
        }
        .warp {
            width: 1000px;
            margin: 0 auto;
        }
        .touziul {
            list-style: none;
            display: block;
        }
        .touziul li {
            display: list-item;
            border-radius: 3px;
            border: 1px solid #ccc;
            width: 240px;
            height: 206px;
            margin-right:20px;
            float:left;
            text-align: left;
            position: relative;
        }
        .touziul li strong {
            margin: 15px 3px 10px 10px;
            text-align: left;
            padding-bottom: 10px;
            display: block;
            color: #7a7a7a;
            border-bottom: 1px solid #eaeaea;
        }
        .touziul li b {
            text-align: left;
            color: #6c6;
            font-weight: 400;
            font-size: 28px;
        }
        .touziul li em {
            margin-left : 10px;
        }
        .touziul li i {
            margin-left : 10px;
            font-size: 10px;
        }
        .touziul li a {
            margin-top: 20px;
            clear: both;
        }
        .touziul li:hover{
            box-shadow:0 0 20px 0 #ccc;
            cursor:pointer
        }
        a {
            text-decoration: none;
        }
        .btnCommon1, .btnCommon1Disabled {
            height: 34px;
            line-height: 33px;
            display: block;
            text-align: center;
            font-weight: 700;
            font-size: 18px;
            color: #3399fe;
            border-radius: 3px;
            border: 1px solid #3399fe;
            -webkit-transition: all .2s linear;
        }
        .btnCommon1:hover{
            color:#fff;
            background:#3399fe;
            text-decoration: none;
        }

        ::-webkit-scrollbar {
            width: 10px;
            height: 10px;
        }
        ::-webkit-scrollbar-track{background-color:rgba(113,112,107,.2)}::-webkit-scrollbar-thumb:vertical{background-color:rgba(0,0,0,.2)}::-webkit-scrollbar-thumb:vertical:hover,::-webkit-scrollbar-thumb:horizontal:hover{background:#3399fe}::-webkit-scrollbar-thumb:horizontal{background-color:rgba(0,0,0,.2)}

        #gotop {
            border-radius: 2px;
            z-index: 300;
            left: 58%;
            margin-left: 508px;
            width: 58px;
            height: 58px;
            background: #ccc  16px 21px no-repeat;
            /*position: fixed;*/
            text-indent: -999px;
            overflow: hidden;
            -webkit-transition: bottom 1s;
        }
    </style>

</head>

<body >
<nav class="navbar navbar-static-top" style="min-height:40px;background:#666;line-height:40px;  margin-bottom:0px;">
    <div class="container">
        <div class="row">
            <div class="col-md-8" style="color:#fff">客服热线：<strong>4008-888-888</strong>（工作时间：9:00-21:00）　<a id="a-helpcenter" style="color:#fff" href="#">帮助中心</a></div>
            <a href="/user/register/step_1"><div class="col-md-1 col-md-offset-2" style="color:#6c6;" > 免费注册</div></a>
            <div class="col-md-1" style="color:#00a4ff;">立即登录</div>
        </div>
    </div><!-- /.container-fluid -->
</nav>
<header class="navbar navbar-static-top" style="min-height:40px;background:#fff;line-height:40px;">
    <div class="container">
        <div class="row">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">盈和金融</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">首页</a></li>
                    <li><a href="#">我能投资</a></li>
                    <li><a href="#">我要融资</a></li>
                    <li><a href="#">企业约谈</a></li>
                    <li><a href="#">关于我们</a></li>
                </ul>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</header>
<div class="container-fluid" style="background-color:#6f5499;height:350px;">
</div>
<div class="container" style="margin-top:50px;" >
    <h3>
        股权转让
    </h3>
</div>
<div class="container" style="margin-top:50px;" >
    <ul class="touziul" >
        <li link="/lead-toutoule.html">
            <strong>
                公司名称
                <br />
                融资目标<b>300</b>万
            </strong>
            <i>关注：10 &nbsp;&nbsp;&nbsp;&nbsp; 约谈：15</i>
            <div class="progress" style="height:5px;margin:10px 0 0 0;">
                <div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">
                    <span class="sr-only">60% Complete</span>
                </div>
            </div>
            <i>企业约谈</i>
            <a href="/lead-toutoule.html" class="btnCommon1">查 看</a>
        </li>
        <li link="/lead-toutoule.html">
            <strong>
                公司名称
                <br />
                融资目标<b>300</b>万
            </strong>
            <i>关注：10 &nbsp;&nbsp;&nbsp;&nbsp; 约谈：15</i>
            <div class="progress" style="height:5px;margin:10px 0 0 0;">
                <div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">
                    <span class="sr-only">60% Complete</span>
                </div>
            </div>
            <i>企业约谈</i>
            <a href="/lead-toutoule.html" class="btnCommon1">查 看</a>
        </li>
        <li link="/lead-toutoule.html">
            <strong>
                公司名称
                <br />
                融资目标<b>300</b>万
            </strong>
            <i>关注：10 &nbsp;&nbsp;&nbsp;&nbsp; 约谈：15</i>
            <div class="progress" style="height:5px;margin:10px 0 0 0;">
                <div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">
                    <span class="sr-only">60% Complete</span>
                </div>
            </div>
            <i>企业约谈</i>
            <a href="/lead-toutoule.html" class="btnCommon1">查 看</a>
        </li>
        <li link="/lead-toutoule.html">
            <strong>
                公司名称
                <br />
                融资目标<b>300</b>万
            </strong>
            <i>关注：10 &nbsp;&nbsp;&nbsp;&nbsp; 约谈：15</i>
            <div class="progress" style="height:5px;margin:10px 0 0 0;">
                <div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">
                    <span class="sr-only">60% Complete</span>
                </div>
            </div>
            <i>企业约谈</i>
            <a href="/lead-toutoule.html" class="btnCommon1">查 看</a>
        </li>
    </ul>
</div>
<div class="container" style="margin-top:50px;" >
    <h3>
        债权转让
    </h3>
</div>
<div class="container" style="margin-top:50px;" >
    <ul class="touziul" >
        <li link="/lead-toutoule.html">
            <strong>
                项目
                <br />
                公司名称
            </strong>

            <em>融资目标<b>300</b>万 &nbsp;&nbsp;&nbsp;&nbsp; 已预约96%</em>
            <i>关注：10 &nbsp;&nbsp;&nbsp;&nbsp; 约谈：15 &nbsp;&nbsp;&nbsp;&nbsp; 认购：12</i>
            <div class="progress" style="height:5px;margin:10px 0 0 0;">
                <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                    <span class="sr-only">60% Complete</span>
                </div>
            </div>
            <i>60/43283743</i>
            <a href="/lead-toutoule.html" class="btnCommon1">查 看</a>
        </li>
        <li link="/lead-toutoule.html">
            <strong>
                项目
                <br />
                公司名称
            </strong>

            <em>融资目标<b>300</b>万 &nbsp;&nbsp;&nbsp;&nbsp; 已预约96%</em>
            <i>关注：10 &nbsp;&nbsp;&nbsp;&nbsp; 约谈：15 &nbsp;&nbsp;&nbsp;&nbsp; 认购：12</i>
            <div class="progress" style="height:5px;margin:10px 0 0 0;">
                <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                    <span class="sr-only">60% Complete</span>
                </div>
            </div>
            <i>60/43283743</i>
            <a href="/lead-toutoule.html" class="btnCommon1">查 看</a>
        </li>
        <li link="/lead-toutoule.html">
            <strong>
                项目
                <br />
                公司名称
            </strong>

            <em>融资目标<b>300</b>万 &nbsp;&nbsp;&nbsp;&nbsp; 已预约96%</em>
            <i>关注：10 &nbsp;&nbsp;&nbsp;&nbsp; 约谈：15 &nbsp;&nbsp;&nbsp;&nbsp; 认购：12</i>
            <div class="progress" style="height:5px;margin:10px 0 0 0;">
                <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                    <span class="sr-only">60% Complete</span>
                </div>
            </div>
            <i>60/43283743</i>
            <a href="/lead-toutoule.html" class="btnCommon1">查 看</a>
        </li>
        <li link="/lead-toutoule.html">
            <strong>
                项目
                <br />
                公司名称
            </strong>

            <em>融资目标<b>300</b>万 &nbsp;&nbsp;&nbsp;&nbsp; 已预约96%</em>
            <i>关注：10 &nbsp;&nbsp;&nbsp;&nbsp; 约谈：15 &nbsp;&nbsp;&nbsp;&nbsp; 认购：12</i>
            <div class="progress" style="height:5px;margin:10px 0 0 0;">
                <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                    <span class="sr-only">60% Complete</span>
                </div>
            </div>
            <i>60/43283743</i>
            <a href="/lead-toutoule.html" class="btnCommon1">查 看</a>
        </li>
    </ul>
</div>
<div class="container-fluid" style="background-color:#ccc;height:100px;margin-top:50px;">
</div>
<div class="container" style="background-color:#fff;height:100px;">
</div>

<script>
    $(function(){
        var timeout=null,gotopDom='<a href="javascript:void(0);" id="gotop">回顶部</a>';
        $("body").append(gotopDom);
        var win=$(window),doc=$(document),gotop=$("#gotop");
        var k=navigator.userAgent.indexOf("MSIE")>0;

        if(k){
            gotop.css({bottom:"100px"}).hide();
            win.scroll(function(){
                window.clearTimeout(timeout);
                if(doc.scrollTop()>win.height()){
                    gotop.show(),gotop.css({bottom:"100px"})
                }else{
                    gotop.hide(),gotop.css({bottom:"-100px"})
                }
            })
        }else{
            win.scroll(function(){
                window.clearTimeout(timeout);
                if(doc.scrollTop()>win.height()){
                    gotop.css({bottom:"100px"}).fadeIn("slow")
                }else{
                    gotop.css({bottom:"-100px"})
                }
            })
        }
        $("#gotop").click(
                function(){
                    if(navigator.userAgent.indexOf("Safari")>0){
                        $("body").scrollTop(0)
                    }else{
                        $("html").scrollTop(0)
                    }
                })
    });
</script>
</body>

</html>
