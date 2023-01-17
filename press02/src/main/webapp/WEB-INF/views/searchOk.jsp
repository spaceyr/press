<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<script src="https://unpkg.com/d3-milestones/build/d3-milestones.min.js"></script>
</head>
<body>
	<h2>searchOk.jsp</h2>

	<div class="card">
		<div class="card-header">기자회견 조회하기</div>
		<div class="card-body">
			<table class="table table-striped">

				<!-- 전체조회 -->
				<%-- <tr>
					<th>id</th>
					<th>date</th>
					<th>time</th>
					<th>title</th>
				</tr>
				<c:forEach var="dto" items="${list }">
					<tr>
						<td>${dto.id }</td>
						<td>${dto.press_date }</td>
						<td>${dto.press_time}</td>
						<td>${dto.title}</td>
					</tr>
				</c:forEach> --%>
			</table>
		</div>
	</div>
	<div id="title"	style="text-align: center; font-size: 16px; font-weight: bold; margin: 12px 0px;">
		<span>${dto.name }기자회견 타임라인</span>
	</div>
	<div id="wrapper"	style="overflow: auto; position: relative; height: 600px;">
		<div id="timeline">
			<!-- 특정기간 이후 조회 -->
			<c:forEach var="dto" items="${list }">
				<h2>${dto.date }</h2>
				<h2>${dto.title}</h2>
			</c:forEach>
		</div>
	</div>
</body>
</html>