<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/7/24
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>

    <link rel="stylesheet" href="${ctx}/static/plugins/jquery-fullpage/jquery.fullPage.css">
    <style>
        * { margin: 0; padding: 0;}
        body { font: 16px/1.8 "Microsoft Yahei",verdana;}

        /* 右侧导航 */
        #fullPage-nav { _display: none; font-size: 12px;}
        #fullPage-nav li { width: 90px; height: 21px; margin: 10px 0 0; vertical-align: middle;}
        #fullPage-nav li a { float: right; width: 21px; height: 21px; color: #8F9DA4; text-decoration: none; text-align: right; background: url(${ctx}/static/images/dot.png) 5px 5px no-repeat;}
        #fullPage-nav li .active { background-position: 0 bottom;}
        #fullPage-nav span { display: none;}
        .fullPage-tooltip { float: left; top: 0; margin-right: 5px; font: 12px "Microsoft Yahei"; color: #8F9DA4; line-height: 21px;}

        .section { position: relative; overflow: hidden;}
        .section .bg { position: absolute; left: 0; top: 0; width: 100%; height: 100%;}
        .section .bg img { display: block; width: 100%; height: 100%;}

        .bg11 { position: absolute; bottom: 0; width: 100%; height: 850px; background: url() 50% 0 no-repeat; transition: all 1s;}
        .bg12 { position: absolute; bottom: -392px; width: 100%; height: 430px; background: url(${ctx}/static/images/study_bg1_1.png) 50% 0 no-repeat; opacity: 0; transition: all 1.7s; bottom: 90px\0;}
        .bg13 { position: absolute; bottom: -377px; width: 100%; height: 377px; background: url(images/bg13.png) 50% 0 no-repeat; transition: all 1s;}
        .hgroup {color: #fff; position: absolute; width: 554px; height: 176px; left: 50%; top: 25%; margin: 0 0 0 -277px; opacity: 1; -webkit-transform:scale(0.5, 0.5); transform:scale(0.5, 0.5); transition: all 1s;}
        .p11 { position: absolute; left: 50%; top: 50%; width: 600px; margin: 0 0 0 -280px; font-size: 14px; color: #94a7c6; opacity: 0; transition: all 0.5s;}
        .mail { position: absolute; left: 50%; top: -26px; width: 375px; height: 26px; margin-left: -187px; background-image: url(${ctx}/static/images/logo-n.png); transition: all 1s;}
        .mail { float: left; height: 26px; text-indent: -9999px;}
        .mail-163 { float: left; width: 107px;}
        .mail-126 { float: left;width: 108px; margin-left: 23px;}
        .mail-yeah { float: right; width: 115px;}

        .logo{position: absolute;left: 20%;top: -20%;background: url(${ctx}/static/images/logo_w.png);width: 201px;height: 53px;text-indent: -9999px;transition: all 1s;}
        .logo-b{background: url(${ctx}/static/images/logo-n.png)}
        .logo-text{width: 201px;height: 53px;z-index: 9999; display: block;}
        .active .logo { top: 5%; transition-delay: 0.7s;}

        .bg21 { position: absolute; right:-999px; bottom: 15%; width: 819px; height: 437px;  margin-bottom: 40px; background: url(${ctx}/static/images/study_bg2_2.png) 0 0 no-repeat; transition: all 1s;  opacity: 0; margin-left: -1108px;}

        .active .bg21 { position: absolute; opacity: 1; right: 10%; bottom:15%;transition-delay: 0.7s;}


        .bg22 { position: absolute; left: 50%; bottom: 15%; width: 819px; height: 299px; margin-left: -280px; margin-bottom: 70px; background: url(images/bg22.png) right 0 no-repeat; transition: all 1s; opacity: 0; margin-left: 320px;}
        .bg23 { position: absolute; left: 50%; bottom: 15%; width: 819px; height: 325px; margin-left: -409px; background: url(images/bg23.png) 50% 0 no-repeat; transition: all 1s;  bottom: -40%;}
        .section strong { position: absolute; left: 50%; top: 15%; z-index: 10; width: 512px; height: 45px; margin-left: -256px; font-size: 24px; font-weight: 500; color: #748A9E; opacity: 0; -webkit-transform:scale(0.5, 0.5); transform:scale(0.5, 0.5); transition: all 1s;}
        .section h3 { position: absolute; left: 50%; top: 15%; z-index: 10; width: 512px; height: 45px; margin-left: -256px; margin-top: 60px; text-indent: -9999px; background-repeat: no-repeat; opacity: 0; -webkit-transform:scale(0.5, 0.5); transform:scale(0.5, 0.5); transition: all 1s;}
        .p1 { position: absolute; left: 50%; top: 15%; width: 510px; margin-left: -255px; margin-top: 130px; font-size: 16px; color: #727F8C; opacity: 0; transition: all 1s;}

        .section2 h3 { background-image: url(${ctx}/static/images/study_bg1.png);}
        .section3 h3 { background-image: url(${ctx}/static/images/study_bg2.png);}
        .section4 h3 { background-image: url(${ctx}/static/images/study_bg3.png);}

        .bg31 { position: absolute; left: 50%; bottom: 0; width: 892px; height: 472px; margin-left: -396px; margin-bottom: 80px; background-image: url(images/bg31.png); opacity: 0; transition: all 1s;}
        .bg32 { position: absolute; left: 50%; bottom: 0; width: 892px; height: 472px; margin-left: -396px; background: url(images/bg32.png) 470px bottom no-repeat; opacity: 0; transition: all 1s;}
        .bg33 { position: absolute; left: 50%; bottom: 0; width: 441px; height: 380px; margin-left: 50%; background: url(images/bg33.png) 0 0 no-repeat; opacity: 0; transition: all 1s;}
        .p3 { position: absolute; width: 430px; left: 50%; top: 15%; margin-top: 250px; margin-left: -100%; font-size: 16px; color: #FFFDE1; opacity: 0; transition: all 1s;}

        .bg41 { position: absolute; bottom: -372px; width: 100%; height: 372px; background: url(images/bg41.png) 50% 0 no-repeat; transition: all 1s;}
        .bg42 { position: absolute; bottom: -449px; width: 100%; height: 449px; background: url(images/bg42.png) 50% 0 no-repeat; transition: all 1s;}
        .bg43 { position: absolute; bottom: -449px; width: 100%; height: 449px; margin-bottom: -130px; background: url(images/bg43.png) 50% 0 no-repeat; transition: all 1s;}





        .copyright a, .copyright span { margin: 0 7px; font-size: 12px; color: #a0a0a0;}

        /* CSS3过度及动画 */
        .active strong, .active h3 { opacity: 1; -webkit-transform:scale(1, 1); transform:scale(1, 1); transition-delay: 0.7s;}
        .active .p1 { opacity: 1; transition-delay: 1.7s;}

        .active .bg11 { bottom: 90px; opacity: 1; transition-delay: 0.7s;}
        .active .bg12 { bottom: 190px; opacity: 1; transition-delay: 0.7s; }
        .active .bg13 { bottom: 0; opacity: 1; transition-delay: 0.7s;}
        .active .hgroup { opacity: 1; -webkit-transform:scale(1, 1); transform:scale(1, 1); transition-delay: 0.7s;}
        .active .mail { top: 25px; transition-delay: 0.7s;}
        .active .p11 { opacity: 1; transition-duration: 1s; transition-delay: 2s;}

        .active .bg23 { bottom: 15%; transition-delay: 0.7s;}
        .active .bg22 { margin-left: -280px; opacity: 1; transition-delay: 0.7s;}

        .active .p3 { margin-left: -480px; opacity: 1; transition-delay: 0.7s;}
        .active .bg31, .active .bg32 { opacity: 1; transition-delay: 1s;}
        .active .bg33 { margin-left: -120px; opacity: 1; transition-delay: 0.7s;}

        .active .bg41 { bottom: 15%; transition-delay: 0.7s;}
        .active .bg42 { bottom: 15%; transition-delay: 1.1s;}
        .active .bg43 { bottom: 15%; transition-delay: 0.9s;}



        /* for lt ie 10 */
        .ltie10 strong, .ltie10 h3 { opacity: 1; transform:scale(1, 1); transition-delay: 0.7s;}
        .ltie10 .p1 { opacity: 1; transition-delay: 1.7s;}

        .ltie10 .bg12 { bottom: 90px; opacity: 1; transition-delay: 0.7s; }
        .ltie10 .bg13 { bottom: 0; opacity: 1; transition-delay: 0.7s;}
        .ltie10 .hgroup { opacity: 1; transform:scale(1, 1); transition-delay: 0.7s;}
        .ltie10 .mail { top: 25px; transition-delay: 0.7s;}
        .ltie10 .p11 { opacity: 1; transition-duration: 1s; transition-delay: 2s;}

        .ltie10 .bg21 { opacity: 1; margin-left: -608px; transition-delay: 0.7s;}
        .ltie10 .bg23 { bottom: 15%; transition-delay: 0.7s;}
        .ltie10 .bg22 { margin-left: -280px; opacity: 1; transition-delay: 0.7s;}

        .ltie10 .p3 { margin-left: -480px; opacity: 1; transition-delay: 0.7s;}
        .ltie10 .bg31, .ltie10 .bg32 { opacity: 1; transition-delay: 1s;}
        .ltie10 .bg33 { margin-left: -120px; opacity: 1; transition-delay: 0.7s;}

        .ltie10 .bg41 { bottom: 15%; transition-delay: 0.7s;}
        .ltie10 .bg42 { bottom: 15%; transition-delay: 1.1s;}
        .ltie10 .bg43 { bottom: 15%; transition-delay: 0.9s;}


    </style>

    <script src="${ctx}/static/js/jquery.min.js"></script>
    <script src="${ctx}/static/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="${ctx}/static/plugins/jquery-fullpage/jquery.fullPage.min.js"></script>
    <!--[if gte IE 10]>
    <script>
        $(function () {
            $('body').addClass('ltie10');
        });
    </script>
    <![endif]-->
    <script>
        $(function () {
            $.fn.fullpage({
                verticalCentered: false,
                anchors: ['page1', 'page2', 'page3', 'page4'],
                navigation: true,
                navigationTooltips: ['首页', '视觉', '交互', '皮肤']
            });
        });
    </script>
</head>
<body>
<div id="superContainer" style="top: 0px;">
    <div class="section section1 active" data-anchor="page1" style="height: 589px;">
        <div class="bg"><img src="${ctx}/static/images/study_bg1.jpg" alt=""></div>



        <div class="bg11"></div>
        <div class="bg12"></div>
        <div class="bg13"></div>
        <div class="logo">
            <a class="logo-text" href="${ctx}/">盈和数据</a>
        </div>
        <div class="hgroup">
            <h1></h1>
            <h2>改变，不止所见。</h2>
        </div>
        <p class="p11">
            通过盈和数据实现自己的梦想<br />
            通过盈和数据讲述自己的故事
        </p>
    </div>

    <div class="section section2" data-anchor="page2" style="height: 589px;">
        <div class="bg"><img src="${ctx}/static/images/study_bg2.jpg" alt=""></div>
        <div class="bg21"></div>
        <div class="logo logo-b">
            <a class="logo-text" href="${ctx}/">盈和数据</a>
        </div>
    </div>

    <div class="section section3" data-anchor="page3" style="height: 589px;">
        <div class="bg"><img src="${ctx}/static/images/study_bg3.jpg" alt=""></div>
        <div class="logo">
            <a class="logo-text" href="${ctx}/">盈和数据</a>
        </div>
           </div>

    <div class="section section4" data-anchor="page4" style="height: 589px;">
        <div class="bg"><img src="${ctx}/static/images/study_bg4.jpg" alt=""></div>
        <div class="logo logo-b">
            <a class="logo-text" href="${ctx}/">盈和数据</a>
        </div>
    </div>


</div>

<div id="fullPage-nav" class="right" style="color: rgb(0, 0, 0); margin-top: -155px;">
    <ul>
    </ul>
</div>

</body>
</html>
