<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	table, th, td{
		border: 1px solid gray;
		border-collapse: collapse;
	}
	.title{
		padding:15px;
		background-color:Purple;
		color:yellow;
		align="left";
	}
	.content{
		width:500px;
	}
	.center{
		text-align:center;
		width:60%;
		padding:10px 0px 0px 0px;
	}

</style>
<meta charset="UTF-8">
<title>Join</title>
</head>
<body>
	<form action="check.jsp" method="post">
	<h2>회원가입</h2>
	<hr>
	<table>
		<tr>
			<td class="title">아이디</td>
			<td class="content"><input type="text" name="id" size="20" autofocus></td>
		</tr>
		<tr>
			<td class="title">비밀번호</td>
			<td class="content"><input type="text" name="pwd" size="20"></td>
		</tr>
		<tr>
			<td class="title">이름</td>
			<td class="content"><input type="text" name="name" size="20"></td>
		</tr>
		<tr>
			<td class="title">성별</td>
			<td class="content">
				<input type="radio" value="남" name="gender" size="20">남
				<input type="radio" value="여" name="gender" size="20">여
			</td>
		</tr>
		<tr>
			<td class="title">생년월일</td>
			<td class="content"><input type="date" name="birth" size="20"></td>
		</tr>
		<tr>
			<td class="title">연락처</td>
			<td class="content">
				<select name="tel_1">
					<option value="010">010</option>
					<option value="010">011</option>
					<option value="010">016</option>
				</select>
				<input type="text" name="tel_2" size="20">-<input type="text" name="tel_3" size="20">
			</td>
		</tr>
	</table>
	<div class="center">
		<input type="submit" value="보내기" style="vertical-align:center">
	</div>
	</form>
</body>
</html>