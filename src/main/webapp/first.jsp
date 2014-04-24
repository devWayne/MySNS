<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page language="java" import="java.text.*" %>
<%@ page language="java" import="java.io.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
    <title>VI Wayne毕业设计</title>
    <!-- Bootstrap -->
<link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
<link   type="text/css"href="${pageContext.request.contextPath}/css/bootstrap-custom.css" rel="stylesheet">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>

  
</head>
<body>
<div class="jumbotron container">
<h1>Ysera<small>Graduation Design of ViWayne</small></h1>
  <hr>
    <p>&nbsp;&nbsp;mySNS is a SNS open-source website based on JAVA EE with Sturt2,Spring and Mybatis framework.if you are insterested in the source code of mySNS(https://github.com/devWayne/mySNS) or want to improve it,you can click here and follow me on https://github.com/devWayne </p>
  <br> <br>
   <div class="text-center"><a href="index.jsp" role="button" class="btn btn-lg btn-primary">GET STARTED!</a></div>
</div>
</body>
</html>