<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>템플릿</title>
	<link rel='stylesheet' href="template.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,800" rel="stylesheet">
</head>
<body>
	<header>
		<jsp:include page='top.jsp' flush='false'/>
	</header>
	
	<section id='areaSub'>
		<jsp:include page='left.jsp' flush='false'/>
	</section>
		
	<section id='areaMain'>
		<jsp:include page='content.jsp' flush='false'/>
	</section>	

	<footer>
		<jsp:include page='bottom.jsp'  flush='false'/>
	</footer>
</body>
</html>