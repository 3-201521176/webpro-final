
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title> 목록 </title>
	
<style>

	div
	{
		height:300px;
		width:300px;
		background-image:url('../images/pinnjake.png');
		background-position:20% bottom;
		background-repeat:no-repeat;
	}
	li
	{
		list-style:none;	
		font-style:bold;
		font-size:18px;
	}
	a
	{
		font-color:red;
		font-style:bold;
		font-size:18px;
		border:1px solid black;
	}
	a:link
	{
		text-decoration:none;
	}
	a:visited
	{
		font-color:red;
	}

</style>

</head>
	<body>
		<div>
			<c:forEach var="result" items="${resultList}" varStatus="status">
				 <li>
					 <c:out value="${result.number}"/>
					 <c:out value="${result.name}"/>
				 </li>
			</c:forEach>
			<br />
			<a href="/CRUDComExam/student/addStudentView.do">만들기</a>
		</div>
	</body>
</html>
