<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/8/13
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/pages/commons/include-tags.jsp"%>
<html>
<head>
    <title>关于我们</title>
    <link rel="stylesheet" href="${ctx}/static/css/about.css">
    <style>
        .list_team img{
            -webkit-transition: 0.4s;
            -webkit-transition: -webkit-transform 0.4s ease-out;
            transition: transform 0.4s ease-out;
            -moz-transition: -moz-transform 0.4s ease-out;
        }

        .list_team img:hover{
            transform: rotateZ(360deg);
            -webkit-transform: rotateZ(360deg);
            -moz-transform: rotateZ(360deg);
        }
    </style>
    <script src="${ctx}/static/plugins/video-js/video.js" type="text/javascript"></script>
    <link href="${ctx}/static/plugins/video-js/video-js.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="bannners">
    <div class="top_movie">
        <video id="video_1" class="video-js vjs-default-skin" controls preload="none" width="550" height="320"
               data-setup="{}">
            <source src="${ctx}/static/shipin.flv" type='video/flv' />
        </video>
        <h1>卡睿达双创云平台 </h1>
        <p>
            科技创新的交流平台，为好苗子提供成长机会<br />
            行业发展的加速平台，为产业改革提供方案<br />
            融资增效的支撑平台，为企业壮大提供能量<br />
            前沿科技的咨询，为企业发展祛除痛点<br />
            创客挥洒激情的平台，让每一个美丽的梦都成为现实
        </p>
        <div class="clear"></div>
    </div>
</div>
<script type="text/javascript">
    var myPlayer = videojs('video_1');
    videojs("video_1").ready(function(){
        var myPlayer = this;
        myPlayer.play();
    });
</script>
<div class="about_nv">
    <div class="inner"><a href="#" id="s1">关于卡睿达双创云平台</a> <a href="#" id="s2">合作机构</a> <a href="#" id="s3" style="display: none">团队介绍</a></div>
</div>
<div class="about_body">
    <div class="list_about s1">
        <br />
        <a name="1" id="1"></a><h1>关于卡睿达双创云平台</h1>
        <p style="text-indent:32px;line-height:150%">
            <span style="font-size:16px;line-height:150%;font-family: 华文琥珀">中国电动汽车百人会双创平台将于2016年1月24日上线，届时，作为与车相关行业的众创、众扶、众包、众筹平台，将发布中国石化、整车企业等的创新创业项目需求，为您创业指明方向，敬请关注。</span>
        </p>
        <p style="text-indent:32px;line-height:150%">
            <span style="font-size:16px;line-height:150%;font-family: 宋体">为了落实中央十八届五中全会提出的“创新、协调、绿色、开放、共享”的发展理念，以及国务院关于发展众创空间推进大众创新创业的意见，推动车、人、网、生活构成的生态圈在科技、管理、生产、营销、服务、金融等方面的创新，为生态圈内企业提供开源的创新平台，为大众创新创业搭建创新与创业、线上与线下、创新与投资融合的平台，中国电动汽车百人会联合清华大学创新发展研究院发起，并由市场化运营设立双创平台。</span>
        </p>
        <p style="text-indent:32px;line-height:150%">
            <span style="font-size:16px;line-height:150%;font-family: 宋体">双创平台名为“</span><span style="font-size:16px;line-height:150%">Carieda”. “Car”</span><span style="font-size:16px;line-height:150%;font-family:宋体">代表汽车及其相关领域，“</span><span style="font-size:16px;line-height:150%">ieda”</span><span style="font-size:16px;line-height:150%;font-family:宋体">将“</span><span style="font-size:16px;line-height:150%">idea”</span><span style="font-size:16px;line-height:150%;font-family:宋体">（想法，创意）中间的两个字母颠倒顺序，预示着“颠覆传统的想法，鼓励新颖的创意”。同时，</span><span style="font-size:16px;line-height:150%">I,E,D,A</span><span style="font-size:16px;line-height:150%;font-family:宋体">四个字母分别代表“</span><span style="font-size:16px;line-height:150%">innovation</span><span style="font-size:16px;line-height:150%;font-family:宋体">”（创新），“</span><span style="font-size:16px;line-height:150%">entrepreneurship</span><span style="font-size:16px;line-height:150%;font-family:宋体">”（创业），“</span><span style="font-size:16px;line-height:150%">development</span><span style="font-size:16px;line-height:150%;font-family:宋体">”（发展），“</span><span style="font-size:16px;line-height:150%">action</span><span style="font-size:16px;line-height:150%;font-family:宋体">”（行动）。表明我们双创平台将积极响应国家“大众创业，万众创新”的号召，用实际行动扶持创客，服务企业，推动“车生态圈”的良性发展。“</span><span style="font-size:16px;line-height:150%">Carieda”</span><span style="font-size:16px;line-height:150%;font-family:宋体">音译为“卡睿达”，意为我们致力于汇集和培养汽车及相关领域睿智的创客达人，并竭诚为其服务。</span>
        </p>
        <p style="text-indent:32px;line-height:150%">
            <span style="font-size:16px;line-height:150%;font-family: 宋体">双创平台将整合行业生态圈内的各参与方资源，并整合政府部门的延伸服务和政策扶持资源，线下进行高端孵化精准投资，线上通过开展众创、众包、众扶、众筹业务，促使大企业与创业者共享企业内资源，分享企业客户、线下网络、线上流量、科研设施等；聚集一定规模的投融资资源，构建创业经验交流分享、创业成果路演展示、风险投资、成果转化、项目孵化一体化创新创业全过程全链条的创新创业服务体系。使平台内的企业和创业者进行畅通的思想交流、思维碰撞，促进科技转化，帮助生态圈内创业者的创新创业项目产业化，推助大企业集成众多创业者的创新创业成果，提升企业创新效率，切实解决创业企业的困境和创业者的痛点，真正实现“围绕产业链布局创新链，围绕创新链布局资金链”。</span>
        </p>
        <p style="text-indent:32px;line-height:150%">
            <strong><span style="font-size:16px;line-height:150%;font-family: 宋体">双创平台五大业务</span></strong>
        </p>
        <p class="MsoListParagraph" style="margin-left: 0;text-indent: 32px;line-height: 150%">
            <strong><span style="font-size:16px;line-height:150%">1.<span style="font-weight: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><strong><span style="font-size:16px;line-height:150%;font-family:宋体">线上平台（</span></strong><strong><span style="font-size:16px;line-height:150%">2016</span></strong><strong><span style="font-size:16px;line-height:150%;font-family:宋体">年元月</span></strong><strong><span style="font-size:16px;line-height:150%">24</span></strong><strong><span style="font-size:16px;line-height:150%;font-family:宋体">日上线）</span></strong>
        </p>
        <p style="text-indent:32px;line-height:150%">
            <span style="font-size:16px;line-height:150%;font-family:宋体">线上业务将成为行业内企业与创业者的沟通、交流、交易平台，行业前瞻研究的发布平台。在线上连接多头，一是帮助企业实现开源式的创新，利用社会资源开展众创、众包，为企业的创新驱动提供动力，为科技创新、管理创新、商业模式创新和服务创新提供解决方案；二是引导社会创业者有的放矢地进行创新，并通过双创云平台整合行业资源，实现对创业者的众扶、众筹，帮助创业者解决成长中的烦恼，提高创新创业的效率和成功率；三是向社会发布行业科技前沿、创新管理模式、创新商业模式的前瞻性的课题、领先成果和应用，以及成功的实践，成为创业者、专家、学者了解行业动态的窗口，推动企业和社会进步。</span>
        </p>
        <p class="MsoListParagraph" style="margin-left: 0;text-indent: 32px;line-height: 150%">
            <strong><span style="font-size:16px;line-height:150%">2.<span style="font-weight: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><strong><span style="font-size:16px;line-height:150%;font-family:宋体">线下孵化</span></strong>
        </p>
        <p style="line-height:150%">
            <span style="font-size: 16px;line-height:150%">&nbsp;&nbsp;&nbsp; </span><span style="font-size:16px;line-height:150%;font-family:宋体">搭建全方位的孵化、共享空间。</span>
        </p>
        <p class="MsoListParagraph" style="margin-left: 0;text-indent: 32px;line-height: 150%">
            <strong><span style="font-size:16px;line-height:150%">3.<span style="font-weight: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><strong><span style="font-size:16px;line-height:150%;font-family:宋体">直投基金</span></strong>
        </p>
        <p style="line-height:150%">
            <span style="font-size: 16px;line-height:150%">&nbsp;&nbsp;&nbsp; </span><span style="font-size:16px;line-height:150%;font-family:宋体">设立直投基金，对行业内的潜在“雄鹰”进行直投，支持行业孵化项目和行业的高端制造、互联网</span><span style="font-size:16px;line-height:150%">+</span><span style="font-size:16px;line-height:150%;font-family:宋体">、以及商业模式创新。</span>
        </p>
        <p class="MsoListParagraph" style="margin-left: 0;text-indent: 32px;line-height: 150%">
            <strong><span style="font-size:16px;line-height:150%">4.<span style="font-weight: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><strong><span style="font-size:16px;line-height:150%;font-family:宋体">咨询服务</span></strong>
        </p>
        <p style="line-height:150%">
            <span style="font-size: 16px;line-height:150%">&nbsp;&nbsp;&nbsp; </span><span style="font-size:16px;line-height:150%;font-family:宋体">双创平台将整合法律顾问、会计师事务所、投资银行、专业咨询机构资源，为创业者和企业提供创新创业中的政策、法律、金融、财务等方面的问题，为他们提供一站式的解决方案。</span>
        </p>
        <p class="MsoListParagraph" style="margin-left: 0;text-indent: 32px;line-height: 150%">
            <strong><span style="font-size:16px;line-height:150%">5.<span style="font-weight: normal;font-stretch: normal;font-size: 9px;line-height: normal;font-family: &#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><strong><span style="font-size:16px;line-height:150%;font-family:宋体">举办行业创新大赛</span></strong>
        </p>
        <p style="text-indent:32px;line-height:150%">
            <span style="font-size:16px;line-height:150%;font-family: 宋体">双创平台将响应国家创新创业的要求，结合中国电动汽车百人会年度主题，每年举办两次“车创未来”创新大赛，首届创新大赛总决赛将在</span><span style="font-size:16px;line-height:150%">2016</span><span style="font-size:16px;line-height:150%;font-family:宋体">年</span><span style="font-size:16px;line-height:150%">1</span><span style="font-size: 16px;line-height:150%;font-family:宋体">月</span><span style="font-size:16px;line-height:150%">24</span><span style="font-size: 16px;line-height:150%;font-family:宋体">日举行，将在</span><span style="font-size:16px;line-height:150%">2016</span><span style="font-size: 16px;line-height:150%;font-family:宋体">年</span><span style="font-size:16px;line-height:150%">8</span><span style="font-size: 16px;line-height:150%;font-family:宋体">月举办“车创未来”创新大赛</span><span style="font-size:16px;line-height:150%">2016</span><span style="font-size:16px;line-height:150%;font-family:宋体">夏季大赛，向社会展示行业内最佳的双创成果，成为创业者的展示平台，并为行业营造双创的良好的社会氛围。</span>
        </p>
        <p style="text-indent:32px;line-height:150%">
            <span style="font-size:16px;line-height:150%;font-family: 宋体">中国电动汽车百人会双创平台致力于建设成具有国际影响力的创新创业服务平台，平台不但能成为创业者理想的工作空间、网络空间、社交空间和资源共享空间，还能够为他们提供一个创业培训、投融资对接、商业模式构建、团队融合、政策申请、工商注册、法律财务、媒体资讯等全方位创业服务的生态体系。同时，优化平台内的大企业内部资源、激发创新活力、提高科技效率、更好的满足企业客户多样化、个性化的需求，为大众参与创新创业提供服务平台，共享双创的成果。</span>
        </p>
        <p>
            <img src="http://7xjb25.com1.z0.glb.clouddn.com/@/images/qiniu/1453178115766036682.png" title="1453178115766036682.png" alt="介绍.png" width="671" height="270" style="width: 671px; height: 270px;"/>
        </p>
    </div>
    <div class="list_co-operating s2">
        <a name="2" id="2"></a><h1>合作机构</h1>
        <p> <a href="#" target="_blank"><img src="${ctx}/static/images/partners-logo1.png" alt=""/></a>
            <a href="#" target="_blank"><img src="${ctx}/static/images/partners-logo2.png" alt=""/></a>
            <a href="#" target="_blank"><img src="${ctx}/static/images/partners-logo3.png" alt=""/></a>
            <a href="#" target="_blank"><img src="${ctx}/static/images/partners-logo4.png" alt=""/></a>
        </p>
    </div>
    <div class="list_team s3" style="display: none;">
        <a name="3" id="3"></a><h1>团队介绍</h1>
        <div class="os">
            <img class="lazy" src="${ctx}/static/images/about_photo1.png" height="140" width="140" alt=""/>
            <h2>大当家</h2>
            <h3>CEO</h3>
            <p>1986年毕业于北京大学<br />
                1996年起担任集团股份<br />
                有限公司董事长</p>
        </div>
        <div class="os">
            <img class="lazy" src="${ctx}/static/images/about_photo2.png" height="140" width="140" alt=""/>
            <h2>二当家</h2>
            <h3>COO</h3>
            <p>1986年毕业于北京大学<br />
                1996年起担任集团股份<br />
                有限公司董事长</p>
        </div>
        <div class="os">
            <img class="lazy" src="${ctx}/static/images/about_photo3.png" height="140" width="140" alt=""/>
            <h2>三当家</h2>
            <h3>CTO</h3>
            <p>1986年毕业于北京大学<br />
                1996年起担任集团股份<br />
                有限公司董事长</p>
        </div>
    </div>
</div>

<script type="text/javascript" src="${ctx}/static/plugins/smint/jquery.smint.js"></script>

<script>
    $(function() {
        $(".about_nv").smint({
            scrollSpeed : 400
        });
    });
</script>

</body>
</html>
