<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style>
		table, th, td{
			border: 1px solid black;
			border-style:dotted;
			border-collapse: collapse;
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
	
		String dept = request.getParameter("dept");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String startDate = request.getParameter("startDate");
		String education = request.getParameter("education");
		String[] certificate = request.getParameterValues("certificate");
		String content = request.getParameter("content");
	%>
	<h2>사용자 입력 확인</h2>
	<hr>
	<table>
		<tr>
			<th class="title">컨트롤 요소</th>
			<th class="content">입력값</th>
		</tr>
		<tr>
			<td>소속</td>
			<td><%=dept %></td>
		</tr>
		<tr>
			<td>성명</td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td>현주소</td>
			<td><%=addr %></td>
		</tr>
		<tr>
			<td>입사년월일</td>
			<td><%=startDate %></td>
		</tr>
		<tr>
			<td>학력</td>
			<td><%=education %></td>
		</tr>
		<tr>
			<td>자격증</td>
			<td>
				<%
					for(int i=0; i < certificate.length; i++){
						out.println(certificate[i] + " ");
				}
				%>
			</td>
		</tr>
		<tr>
			<td>상담내용</td>
			<td><%=content %></td>
		</tr>
		<tr>
			<td>각 폼 컨트롤의 이름들</td>
			<td>
				<%
			    Enumeration value = request.getParameterNames();	
			    while(value.hasMoreElements()) {
			        String abc = (String)value.nextElement(); %>
    			<%=abc %>
				<%
				}
				%>
			</td>
		</tr>
	</table>
</body>
</html>