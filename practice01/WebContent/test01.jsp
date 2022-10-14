<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 받기</title>
</head>
<body>
<% //이거랑 전에거랑 변수명 똑가타야함 불러와야 하기 때문에
//get 방식이라서 주소에도 나와있음
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String msg = "id : "+id+", pw : "+pw+", name : "+name;
	response.sendRedirect("index.jsp?msg="+msg); 
	//request 반대 response
%>
	<ul>
		<li>id : <%=id %></li>
		<li>pw : <%=pw %></li>
		<li>name : <%=name %> </li>
	</ul>
</body>
</html>