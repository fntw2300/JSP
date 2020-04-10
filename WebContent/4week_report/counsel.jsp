<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	table, th, td{
		border: 1px solid black;
		border-style:dotted;
		border-collapse: collapse;
	}
	.title{
		background-color:Purple;
		color:yellow;
		text-align:center;
	}
	.content{
		width:500px;
	}
	div.button{
   	margin: auto;
		width: 50%;
		text-align: center;
	}


</style>
<meta charset="UTF-8">
<title>Join</title>
</head>
<body>
	<form action="check.jsp" method="post">
	<h2>개인면담 카드</h2>
	<hr>
	<table>
		<tr>
			<td class="title">소속</td>
			<td class="content"><input type="text" name="dept" size="20" autofocus></td>
		</tr>
		<tr>
			<td class="title">성명</td>
			<td class="content"><input type="text" name="name" size="20"></td>
		</tr>
		<tr>
			<td class="title">현주소</td>
			<td class="content"><input type="text" name="addr" size="20"></td>
		</tr>
		<tr>
			<td class="title">입사년월일</td>
			<td class="content"><input type="date" name="startDate" size="20"></td>
		</tr>
		<tr>
			<td class="title">최종학력</td>
			<td class="content">
				<input type="radio" value="남" name="education" size="20">중졸
				<input type="radio" value="여" name="education" size="20">고졸
				<input type="radio" value="여" name="education" size="20">전문대졸
				<input type="radio" value="여" name="education" size="20">대졸
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<fieldset>
					<legend>자격증</legend>
					<input type="checkbox" name="certificate" value="자동차2종">자동차2종 &nbsp;
					<input type="checkbox" name="certificate" value="정보처리산업기사">정보처리산업기사 &nbsp;
					<input type="checkbox" name="certificate" value="컴퓨터활용">컴퓨터활용 &nbsp;
					<input type="checkbox" name="certificate" value="기타">기타
				</fieldset>
			</td>
		</tr>
		<tr>
			<td class="title">상담내용</td>
			<td><textarea name="content" rows="10" cols="60" placeholder="상담내역 입력하기"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="button">
					<input type="submit" value="입력완료"> &nbsp;
					<input type="reset" value="다시입력">
				</div>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>