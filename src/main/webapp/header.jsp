<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page language="java" import="java.text.*" %>
<%@ page language="java" import="java.io.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
   <title>VI Wayne毕业设计</title>
    <!-- Bootstrap -->
<link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">



<link type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-custom.css" rel="stylesheet">

<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>

  
</head>
<body>


<nav class="navbar navbar-default " role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">首页</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li ><a href="http://wayneix.duapp.com">进入聊天室</a></li>
            <li><a href="#">Link</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                    <li class="divider"></li>
                    <li><a href="#">One more separated link</a></li>
                </ul>
            </li>
        </ul>
          <c:choose> 
             <c:when test="${empty sessionScope.USER}">
         		<ul class="nav navbar-nav navbar-right">
		            <li data-toggle="modal" data-target="#LogModal"><a href="#">登陆</a></li>
		            <li data-toggle="modal" data-target="#RegModal"><a href="#">注册</a></li>
		        </ul>
          	</c:when>
          	<c:otherwise>
          	    <ul class="nav navbar-nav navbar-right">
		            <li class="active"><a>${sessionScope.USER.stu_name},你好&nbsp;</a></li>
		              <li><a href="user_logout">退出登录</a></li>
		        </ul>
          	</c:otherwise>
          </c:choose>
      
        
    </div><!-- /.navbar-collapse -->
</nav>

 <!--Reg Modal --> 
<div class="modal fade" id="RegModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <s:form action="user_register" method="POST" enctype="multipart/form-data" onsubmit="return true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h2 class="modal-title" id="myModalLabel">欢迎注册！</h2>
      </div>
      <div class="modal-body">
      
  <div class="form-group">
    <label for="stu_loginName">请输入用户名</label>
    <input type="text" class="form-control" name="stuUser.stu_loginName" id="stu_loginName" placeholder="请输入用户名">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">请输入密码</label>
    <input type="password" class="form-control" name="stuUser.stu_password" id="stu_password" placeholder="请输入密码">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">确认密码</label>
    <input type="password" class="form-control"  id="exampleInputPassword1" placeholder="确认密码">
  </div>
   <div class="form-group">
    <label for="stu_name">请输入真实姓名</label>
    <input type="text" class="form-control" name="stuUser.stu_name" id="stu_name" placeholder="请输入真实姓名">
  </div>
    <div class="form-group">
    <label for="stu_term">请选择入学时间</label>
        <select class="form-control" name="stuUser.stu_term" id="stu_term">
		  <option>2010</option>
		  <option>2011</option>	
		  <option>2012</option>
		  <option>2013</option>	
		  <option>2014</option>
		  <option>2015</option>	
		  <option>2016</option>
		  <option>2017</option>	
		  <option>2018</option>
		  <option>2019</option>
		</select>
  </div>
    <div class="form-group">
    <label for="stu_gen">请选择性别</label>
    <select class="form-control" name="stuUser.stu_gen" id="stu_gen">
	  <option value=1>男</option>
	  <option value=0>女</option>	
	</select>
  </div>
      <div class="form-group">
    <label for="stu_class">请输入班级号</label>
    <input type="text" class="form-control" name="stuUser.stu_class" id="stu_class" placeholder="请输入班级号">
  </div>
      <div class="form-group">
    <label for="stu_major">请选择专业</label>
   
        <select class="form-control"  name="stuUser.stu_major" id="stu_major">
		  <option>NGB</option>
		  <option>NGA</option>	
		  <option>NGC</option>
		  <option>NGD</option>	
		</select>
  </div>
  
  
  
      </div>
      <div class="modal-footer">
        
        <button type="submit" class="btn btn-primary">确认注册信息</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
     </s:form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.Reg modal -->


<!--Log Modal -->
<div class="modal fade" id="LogModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <s:form action="user_login" method="POST" enctype="multipart/form-data" onsubmit="return true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h2 class="modal-title" id="myModalLabel">登陆！</h2>
      </div>
      <div class="modal-body">
      
  <div class="form-group">
    <label for="exampleInputEmail1">请输入用户名</label>
    <input type="text" class="form-control" name="stuUser.stu_loginName" id="stu_loginName" placeholder="请输入用户名">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">请输入密码</label>
    <input type="password" class="form-control" name="stuUser.stu_password" id="stu_password" placeholder="请输入密码">
  </div>
      </div>
      <div class="modal-footer">
        
        <button type="submit" class="btn btn-primary">登陆</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
     </s:form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.Log modal -->