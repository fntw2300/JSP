<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<style>
	table, td, tr{
  	border: 1px solid #EAEAEA;
  	border-collapse: collapse;
  	padding: 10px;
	}
	.header{
		text-align: right;
		color:blue;
	}
	.attribute{
		vertical-align: top;
		text-align: left;
	}
	.btn{
		text-align: center;
	}
</style>
<body>
	<h2>게시판</h2>
	<hr>
	<jsp:useBean id="m" class="report_8week.report2"/>
	<jsp:setProperty property="*" name="m"/>
	<table>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="m"/></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><jsp:getProperty property="title" name="m"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><jsp:getProperty property="email" name="m"/></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><jsp:getProperty property="content" name="m"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><jsp:getProperty property="pwd" name="m"/></td>
		</tr>
	</table>
</body>
</html>