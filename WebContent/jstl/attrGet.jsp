<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el 테스트</title>
</head>
<body>
	<%
		// 기존 방식?
	//	List<String> list = (List<String>)request.getAttribute("list");
	//  el은 getAttribute 와 형 변환을 합니다.
	%>
	<!-- el 활용한 가독성 좋은 처리 -->
	<h3>EL 출력</h3>
	string 애트리뷰트 :
	<c:out value="${string }" />
	<br> 
	age 애트리뷰트 :
	<c:out value="${age }" />
	<br> 
	user 애트리뷰트 :
	<c:out value="${user }" />
	<br> 
	user 애트리뷰트 age 프로퍼티 :
	<c:out value="${user.age }" />
	<br> 
	user 애트리뷰트 name 프로퍼티 :
	<c:out value="${user.name }" />
	<br>
	list 애트리뷰트 : 
	<c:out value="${list }" />
	<br>
	list 애트리뷰트 : 
	<c:out value="${list[0] }" />
	<br>
	list 애트리뷰트 : 
	<c:out value="${list[1] }" />
	<br>
	list 애트리뷰트 : 
	<c:out value="${list[2] }" />
	<br>
	<!-- c:forEach는 배열 또는 리스트를 다룰 때 items 속성 지정 -->
	<c:forEach var="item" items="${list }">
		<li> <c:out value="${item }"/> </li>
	</c:forEach>

</body>
</html>