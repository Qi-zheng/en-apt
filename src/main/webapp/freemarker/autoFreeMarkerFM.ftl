<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div id="search" class="container-fdb ">
	<#list map?keys as key>
		  <p><span>${key}：</span>
		  <#list map[key].getConditionDetail() as condition>
		  	<#if condition.brange??>
	      		<a href="javascript:void(0);" value="${condition.brange?c}-${condition.erange?c}">${condition.dname}</a>
	      	<#else>
	      		<a href="javascript:void(0);" value="${condition.did?c}">${condition.dname}</a>
	      	</#if>
	      </#list>
	      <a href="javascript:void(0);" class="all now">全部</a></p>
	</#list>
	<div id="search_inner"><input id="txtSearch" type="text" placeholder="公司名称" /><input id="btnSearch" type="submit" value="　" /></div>
</div>