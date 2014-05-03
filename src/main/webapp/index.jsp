<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page language="java" import="java.text.*" %>
<%@ page language="java" import="java.io.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="includes/head.jsp"></jsp:include>
<jsp:include page="includes/header.jsp"></jsp:include>

<div class="jumbotron">

<div class="row">
	  <div class="col-md-5">
	  <h1>欢迎使用!</h1><Br>
	
	 
	 <a href="${pageContext.request.contextPath}/note/newNote.jsp" class="btn btn-primary btn-lg" role="button">开始创建一个笔记</a>
	 <a href="${pageContext.request.contextPath}/note/listNote.jsp" class="btn btn-default btn-lg" role="button">开始浏览笔记</a>
	
	 <br><br>
	 <a href="${pageContext.request.contextPath}/vote/newVote.jsp" class="btn btn-primary btn-lg" role="button">开始创建一个投票</a>
	 <a href="${pageContext.request.contextPath}/vote/listVote.jsp" class="btn btn-default btn-lg" role="button">开始进行投票</a>
	 <br><br>
	  <a href="${pageContext.request.contextPath}/notice/newNotice.jsp" class="btn btn-primary btn-lg" role="button">开始创建一个消息</a>
	 <a href="${pageContext.request.contextPath}/notice/listNotice.jsp" class="btn btn-default btn-lg" role="button">开始浏览消息</a>
	
	 <br><br>
	 <a href="${pageContext.request.contextPath}/note/newTest.jsp" class="btn btn-primary btn-lg" role="button">开始创建一个测试</a>
	 <a href="${pageContext.request.contextPath}/note/newTest.jsp" class="btn btn-default btn-lg" role="button">开始进行测试</a>
	</div>
	
	 <div class="col-md-7">

			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		  </ol>
		
		  <!-- Wrapper for slides -->
		  <div class="carousel-inner">
		    <div class="item active">
		      <img src="images/first.png"   alt="github1">
		      <div class="carousel-caption">
		       <h3>github1</h3> 
		         <p>github.com</p>
		      </div>
		    </div>
		       <div class="item">
		      <img src="images/second.png"    alt="github2">
		      <div class="carousel-caption">
		     	<h3>github2</h3> 
		         <p>github.com</p>
		      </div>
		    </div>
		  </div>
		
		  <!-- Controls -->
		  <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left"></span>
		  </a>
		  <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right"></span>
		  </a>
		</div>
</div>
 
	</div>
</div>




<script src="${pageContext.request.contextPath}/js/unslider.js"></script>
<script>
$(function() {
    $('.banner').unslider({	
    	speed: 500,               //  The speed to animate each slide (in milliseconds)
    	delay: 3000,              //  The delay between slide animations (in milliseconds)
    	complete: function() {},  //  A function that gets called after every slide animation
    	keys: true,               //  Enable keyboard (left, right) arrow shortcuts
    	dots: true,               //  Display dot navigation
    	fluid: false   });
});
</script>
<jsp:include page="includes/footer.jsp"></jsp:include>