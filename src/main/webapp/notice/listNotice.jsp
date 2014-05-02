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


	<c:forEach items="${notices}" var="notice">
	<div>${notice.au}</div>
	<div>${notice.content}</div>
	</c:forEach>



<jsp:include page="../includes/footer.jsp"></jsp:include>