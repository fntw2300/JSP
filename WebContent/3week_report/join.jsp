<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style>
		table, th, td{
			border: 1px solid gray;
			border-collapse: collapse;
			padding:15px;
		}
		th, td{
			padding:15px;
			align="left";
		}
	.title{
			width:150px;
		}
	.content{
			width:400px;"
		}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");
		String tel_1 = request.getParameter("tel_1");
		String tel_2 = request.getParameter("tel_2");
		String tel_3 = request.getParameter("tel_3");
	%>
	<h2>사용자 입력 확인</h2>
	<hr>
	<table>
		<tr>
			<th class="title">컨트롤 요소</th>
			<th class="content">입력값</th>
		</tr>
		<tr>
			<td>아이디</td>
			<td><%=id %></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><%=pwd %></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%=gender %></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><%=birth %></td>
		</tr>
		<tr>
			<td>연락처</td>
			<td><%=tel_1 %>-<%=tel_2 %>-<%=tel_3 %></td>
		</tr>
		
	</table>
		
</body>
</html>