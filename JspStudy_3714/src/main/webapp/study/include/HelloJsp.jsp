<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	private String name = "김재현";
	private String phone = "010-9788-3714";
	private String email = "kjh991216@naver.com";
	
	public void show() {
		System.out.println(name);
		System.out.println(phone);
		System.out.println(email);
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=name %></title>
</head>
<body>
	<%
		for(int i = 0; i < 5; i++){
	%>
			<p><%=name %></p>
	<%
	}
	%>
	<h1>hello JSP</h1>
</body>
</html>