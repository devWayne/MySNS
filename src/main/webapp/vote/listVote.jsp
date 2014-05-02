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

<link type="text/css" href="${pageContext.request.contextPath}/css/chart/chart.css" rel="stylesheet">
<div class="row">
<div class="chart-legend col-md-8">
		<canvas id="canvas" height="450" width="450"></canvas>
		</div>
		<div class="chart-legend col-md-4">
        <ul>
            <li class="ship">Shipping &amp; Receiving</li>
            <li class="rework">Rework</li>
            <li class="admin">Administrative</li>
            <li class="prod">Production</li>
        </ul>
   		 </div>
	</div>	

<script src="${pageContext.request.contextPath}/js/chart/Chart.js"></script>
	<script>

		var doughnutData = [
				{
					value: 30,
					color:"#F7464A"
				},
				{
					value : 50,
					color : "#46BFBD"
				},
				{
					value : 100,
					color : "#FDB45C"
				},
				{
					value : 40,
					color : "#949FB1"
				},
				{
					value : 120,
					color : "#4D5360"
				}
			
			];

	var myDoughnut = new Chart(document.getElementById("canvas").getContext("2d")).Doughnut(doughnutData);
	
	</script>



<jsp:include page="../includes/footer.jsp"></jsp:include>