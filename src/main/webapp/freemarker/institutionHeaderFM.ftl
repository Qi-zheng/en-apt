<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div id="search">
      <p><span>机构类型　：</span>
      <#list ctypeOneList as ctypeOne>
      	<a href="javascript:void(0);" value="${ctypeOne.did?c}">${ctypeOne.dname}</a>
      </#list>
      <a href="javascript:void(0);" class="all now">全部</a></p>
      <div id="search_inner"><input id="txtSearch" type="text" placeholder="公司名称" /><input id="btnSearch" type="submit" value="　" /></div>
</div>