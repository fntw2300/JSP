<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. Context객체 생성
	Context initCtx = new InitialContext();

	//2. DataSource 객체 생성
	DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/jsphh");
	
	//3. CP에서 connection 가져오기
	Connection con =  ds.getConnection();
	
	String sql = "SELECT * FROM MEMBER";
	Statement st = con.createStatement();
	
	ResultSet rs = st.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 정보</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<br>
<h1 class="text-center font-weight-bold">게시판</h1>
<br><br>
	<table class="table table-hover">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>닉네임</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>성별</th>
		</tr>
<%
	while(rs.next()){
		String id = rs.getString("ID");
		String pwd = rs.getString("PWD");
		String name = rs.getString("NAME");
		String nickname = rs.getString("NICKNAME");
		String tel = rs.getString("TEL");
		String email = rs.getString("EMAIL");
		String gender = rs.getString("GENDER");
%>
		<tr>
			<td><%=id %></td>
			<td><%=pwd %></td>
			<td><%=name %></td>
			<td><%=nickname %></td>
			<td><%=tel %></td>
			<td><%=email %></td>
			<td><%=gender %></td>
		</tr>
<% }
	con.close();
	st.close();
	rs.close();
%>
	</table></div>
</body>
</html>