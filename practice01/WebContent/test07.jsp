<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp - scope</title>
</head>
<body>
<%
	//문자로 가기 때문에 형변환 해줘야함
	ArrayList<String> lst = (ArrayList<String>) request.getAttribute("lst");
	HashSet<String> set = (HashSet<String>) request.getAttribute("set");
	HashMap map = (HashMap) request.getAttribute("map");	
	
	//test06.jsp이라고 표시되는데 test07데이터가 나옴
	out.println("<hr>");
	out.println("<h2>List</h2>");
	out.println("<ul class='list'>");
	//list 접근
	for(int i=0;i<lst.size();i++){
		out.println("<li>" +lst.get(i)+ "</li>");	
	}
	out.println("</ul>");	
	out.println("<hr>");
	
	out.println("<h2>Set</h2>");
	out.println("<ul class='set'>");
	//set접근
	Iterator iter = set.iterator();
	while(iter.hasNext()){
		out.println("<li>"+iter.next()+"</li>");
	}
	out.println("</ul>");	
	out.println("<hr>");
	
	out.println("<h2>Map</h2>");
	out.println("<ul class='map'>");
	//map 접근
	
	//Collections : List, set, map . .
	/*
	Set<String> keys= map.keyset();
	for(String key : keys){ //test1, test2 ...
		out.println(key);
	}
	*/
	
	Collection<String> val = map.values();
	for(String name : val){ //김지훈, 김연정.. string 값
		out.println("<li>"+name+"</li>"); //val은 값의 뭉치임
	}
	out.println("</ul>");
	
	//Scope page, request, session, application 객체의 값 설정
	//pageContext - 현재 페이지에서만 유효
	//request - 폼 전송의 목적지 또는 a 요소의 목적지 , forward 의 목적지까지 유효
	//session - 로그인 하는 동안만 유효
	//application - 웹 브라우저 또는 현재 애플리케이션이 실행되고 있는 동안 유효(전역객체)
	//전역객체는 web.xml에 등록 가능함
	
	//입력
	pageContext.setAttribute("pagedata", "pageContext");
	request.setAttribute("requestdata", "request");
	session.setAttribute("sessiondata", "session");
	application.setAttribute("applicationdata", "application");
	application.setAttribute("msg", "감사합니다.");
	//application.setInitParameter("memberId", "kbs"); //데이터 두개라서 안됨
	out.println("uest id: "+application.getInitParameter("userId"));
	//out.println("member id : "+application.getInitParameter("memberId"));
	//InitParameter 전역 변수는 web.xml 또는 application 객체로 한 곳에만 지정이 가능함
	out.println("msg: "+application.getAttribute("msg"));

	
	//출력
	out.println("<h3>페이지</h3>"+"<h5>※현재 페이지까지 유효</h5>"+pageContext.getAttribute("pagedata"));
	out.println("<h3>리퀘스트</h3>"+"<h5>※forward 목적지까지만 유효</h5>"+request.getAttribute("requestdata"));
	out.println("<h3>세션</h3>"+"<h5>※로그아웃 전까지 유효</h5>"+session.getAttribute("sessiondata"));
	out.println("<h3>어플리케이션</h3>"+"<h5>※현재 어플리케이션 실행될때까지 유효</h5>"+application.getAttribute("applicationdata"));
	out.println("<h3>어플리케이션 메세지</h3>"+application.getAttribute("msg"));
	out.println("<h3>init 어플리케이션</h3>"+application.getInitParameter("userId"));
	out.println("<a href='test08.jsp?msg=테스트08로갑니다'>테스트08</a>");
%>
</body>
</html>