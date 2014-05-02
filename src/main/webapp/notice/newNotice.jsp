<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page language="java" import="java.text.*" %>
<%@ page language="java" import="java.io.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="../includes/head.jsp"></jsp:include>
<jsp:include page="../includes/header.jsp"></jsp:include>


<s:form  action="notice_newNotice" method="POST" enctype="multipart/form-data" onsubmit="return true">
<div class="jumbotron container">
  <h1>新建一条消息</h1>
  <br>
     <textarea rows="10" cols="100" id="notice_content" name="notice.notice_content">
		在w3school，你可以找到你所需要的所有的网站建设教程。
	</textarea>
<br><br>
	 <button type="submit" class="btn-lg btn btn-primary">提交</button>  
  </div>
 
</s:form>


<jsp:include page="../includes/footer.jsp"></jsp:include>