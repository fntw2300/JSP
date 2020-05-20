<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 500error코드는 서버 사용량의 폭주로 인해 서비스가 일시적으로 중단된 것 또는 서버의 이상에 의한 문제나 서버 스크립트의 오류로 인해 발생하는데
	본 과제에서는 스크립트 오류로 인해 발생하게 하였다.
	이하 10을 0으로 나누지 못하니 스크립트 오류로 나타내게 된다. -->
	<%int num=10/0;%>
</body>
</html>