<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="response.jsp" method="post">
	<h2>JSP 환경 설정을 위한 다운로드 페이지</h2>
	<hr>
	
	<select name="homePage">
		<option value="1">JDK</option>
		<option value="2">Tomcat</option>
		<option value="3">Eclipse</option>
	</select>
	<input type="submit" value="이동" >
	</form>
</body>
</html>