<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 	//포워드 test08로 테스트할땐 set get모두 해야함~~
 	//request.setAttribute("requestdata", "request");
 	//out.println("<h3>리퀘스트</h3>"+request.getAttribute("requestdata"));
 	
 	//application.setInintParameter("userId", "도도"); 여기서도 설정 가능! but 둘 중 하나만 설정
	
	out.println("<h3>페이지</h3>"+"<h5>※현재 페이지까지 유효</h5>"+pageContext.getAttribute("pagedata"));
	out.println("<h3>리퀘스트</h3>"+"<h5>※forward 목적지까지만 유효</h5>"+request.getAttribute("requestdata"));
	out.println("<h3>세션</h3>"+"<h5>※로그아웃 전까지 유효</h5>"+session.getAttribute("sessiondata"));
	out.println("<h3>어플리케이션</h3>"+"<h5>※현재 어플리케이션 실행될때까지 유효</h5>"+application.getAttribute("applicationdata"));
	out.println("<h3>어플리케이션 메세지</h3>"+application.getAttribute("msg"));
	
	out.println("<h3>init 어플리케이션</h3>"+application.getInitParameter("userId"));
	
	 %>
</body>
</html>