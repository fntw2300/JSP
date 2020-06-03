<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h2>글쓰기</h2>
	<form action="report2_Pro.jsp" method="post">
	<!-- <form action="report2_EL.jsp" method="post"> -->
		<table>
			<tr>
				<td class="header" colspan="2">글목록</td>
			</tr>
			<tr>
				<td class="attribute">이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td class="attribute">제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td class="attribute">이메일</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td class="attribute">내용</td>
				<td><textarea name="content" rows="10" cols="60"></textarea></td>
			</tr>
			<tr>
				<td class="attribute">비밀번호</td>
				<td><input type="text" name="pwd"></td>
			</tr>
			<tr>
				<td class="btn" colspan="2">
				<input type="submit" name="id" value="글쓰기">
				<input type="reset" name="clean" value="다시작성">
				<input type="submit" name="list" value="목록보기">
				</td>
			</tr>
				
		
		</table>
	</form>
</body>
</html>