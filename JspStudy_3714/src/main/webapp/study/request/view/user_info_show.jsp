<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	/*String username = request.getParameter("username");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	*/
	String[] select = request.getParameterValues("select");
	System.out.println(select.length);	
	
	for(String str: select){
		System.out.println(str);
	}
<<<<<<< HEAD
	int data = (Integer)request.getAttribute("data"); // 가지고올려면 업케스팅을  다운캐스팅으로 한후 가져와야한다.
=======
	int data = (Integer)request.getAttribute("data"); // 업케스팅을 했으면 무조건 다운캐스팅을 해야한다.
>>>>>>> 29f6c3c6d590b0a1e6f54cf249af8237b8ce0d35
	System.out.println(data);
	
	User user = (User)request.getAttribute("user");
%>
<body>
	사용자 아이디: <%=user.getUsername() %> <br>
	연락처: <%= user.getPhone() %> <br>
	이메일: <%= user.getEmail() %> <br>
	주소: <%= user.getAddress() %> 

</body>
</html>