<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보</title>
</head>
<body>
	<h2>학번, 이름, 학년, 선택과목을 입력하는 폼</h2>
	<hr>
	<form action="report1_EL.jsp" method="post">
	<!-- <form action="report1_Pro.jsp" method="post"> -->
		학번 : <input type="text" name="num"><br>
		이름 : <input type="text" name="name"><br>
		학년 : <input type="radio" value="1" name="year" size="20">1학년
			 	 <input type="radio" value="2" name="year" size="20">2학년<br>
		선택과목 : <select name="subject">
							<option value="JSP">JSP</option>
							<option value="Android">Android</option>
							<option value="System">System</option>
						</select><br>
		<input type="submit" name="id" value="확인"><br>
	</form>
</body>
</html>