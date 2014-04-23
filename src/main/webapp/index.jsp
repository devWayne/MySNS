<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page language="java" import="java.text.*" %>
<%@ page language="java" import="java.io.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:include page="header.jsp"></jsp:include>

<div class="jumbotron container">
 <h1>Welcome!</h1><Br><br>
<div class="row">
	  <div class="col-md-6">
	 
	
	 
	 <a href="note/newNote.jsp" class="btn btn-primary btn-lg" role="button">开始创建一个笔记</a>
	 <a href="note/listNote.jsp" class="btn btn-default btn-lg" role="button">开始浏览笔记</a>
	
	 <br><br>
	 <a href="vote/newVote.jsp" class="btn btn-primary btn-lg" role="button">开始创建一个投票</a>
	 <a href="vote/listVote.jsp" class="btn btn-default btn-lg" role="button">开始进行投票</a>
	
	</div>
	
	 <div class="col-md-6">
	
	  <a href="notice/newNotice.jsp" class="btn btn-primary btn-lg" role="button">开始创建一个消息</a>
	 <a href="notice/listNotice.jsp" class="btn btn-default btn-lg" role="button">开始浏览消息</a>
	
	 <br><br>
	 <a href="note/newNote.jsp" class="btn btn-primary btn-lg" role="button">开始创建一个投票</a>
	 <a href="note/newNote.jsp" class="btn btn-default btn-lg" role="button">开始进行投票</a>
	 </div>

</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>