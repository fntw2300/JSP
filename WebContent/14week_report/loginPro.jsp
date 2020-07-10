<%@page import="db.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%    
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    
    LoginDAO dbPro = new LoginDAO();
    int check = dbPro.checkUser(id, pwd);
    
    if(check==1) {
    	session.setAttribute("id", id);
    	response.sendRedirect("Main.jsp");
    } else if(check==0) {
%>

<script>
  alert("비밀번호가 틀립니다.");
  location.href= "sessionLoginForm.jsp";
</script>
<%
} else {
%>
<script>
  alert("존재하지 않는 아이디 입니다.");
  location.href= "12week/insertDB.jsp";
</script>

<%}%>
    	