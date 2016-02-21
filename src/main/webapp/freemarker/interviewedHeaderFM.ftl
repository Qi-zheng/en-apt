<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div id="search">
      <p><span>行　业　：</span>
      <#list ctypeOneList as ctypeOne>
      	<a href="javascript:void(0);" value="${ctypeOne.did?c}">${ctypeOne.dname}</a>
      </#list>
      <a href="javascript:void(0);" class="all now">全部</a></p>
      <p><span>注册资本：</span>
      <#list ctypeTwoList as ctypeTwo>
      	<a href="javascript:void(0);" value="${ctypeTwo.brange?c}-${ctypeTwo.erange?c}">${ctypeTwo.dname}</a>
      </#list>
      	<a href="javascript:void(0);" class="all now">全部</a></p>
      <p><span>营业收入：</span>
      <#list ctypeThreeList as ctypeThree>
      	<a href="javascript:void(0);" value="${ctypeThree.brange?c}-${ctypeThree.erange?c}">${ctypeThree.dname}</a>  
      </#list>
      <a href="javascript:void(0);" class="all now">全部</a></p>
      <p><span>净利润　：</span>
      <#list ctypeFourList as ctypeFour>
      	<a href="javascript:void(0);" value="${ctypeFour.brange?c}-${ctypeFour.erange?c}">${ctypeFour.dname}</a>
      </#list>
      <a href="javascript:void(0);" class="all now">全部</a></p>
      <p><span>资产规模：</span>
      <#list ctypeFiveList as ctypeFive>
      	<a href="javascript:void(0);" value="${ctypeFive.brange?c}-${ctypeFive.erange?c}">${ctypeFive.dname}</a> 
      </#list>
      <a href="javascript:void(0);" class="all now">全部</a></p>
      <p><span>增长率　：</span><em>
(三年利润平均)</em>
	  <#list ctypeSixList as ctypeSix>
		<a href="javascript:void(0);" value="${ctypeSix.brange?c}-${ctypeSix.erange?c}">${ctypeSix.dname}</a> 
	  </#list>
	  <a href="javascript:void(0);" class="all now">全部</a></p>
      <div id="search_inner"><input id="txtSearch" type="text" placeholder="公司名称" /><input id="btnSearch" type="submit" value="　" /></div>
</div>