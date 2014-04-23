<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page language="java" import="java.text.*" %>
<%@ page language="java" import="java.io.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:include page="../header.jsp"></jsp:include>


<br><Br><br>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-wysiwyg.js"></script>
<jsp:include page="../footer.jsp"></jsp:include>