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
<div class="jumbotron container">
<h1>开始创建一个投票</h1><Br>
 <form role="form" id="votetab">
<div class="form-group">
    <h2>请输入一个标题</h2>
    <input type="text" class="form-control" id="vote_theme"  name="vote.vote_theme" placeholder="请输入一个标题" style="width:600px;">
 </div>
<div class="form-group">
    <label for="exampleInputOption">请输入一个选项</label>
    <input type="text" class="form-control" id="vote_option"  name="vote.vote_option" placeholder="请输入一个选项" style="width:300px;">
 </div>
</form>
<button id="add_option" class="btn btn-lg btn-primary">添加选项</button>
</div>
<script>$(function(){
	$('#add_option').bind("click",function(){
	
		$('#votetab').append('<div class="form-group"><label for="exampleInputOption">请输入一个选项</label><input type="text" class="form-control" id="vote_option"  name="vote.vote_option" placeholder="请输入一个选项" style="width:300px;"></div>');
	});
})
</script>
<jsp:include page="../includes/footer.jsp"></jsp:include>