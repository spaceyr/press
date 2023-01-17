<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://unpkg.com/d3-milestones/build/d3-milestones.min.js"></script>
</head>
<body>
<h2>search.jsp</h2>

<div class="card">
		<div class="card-header">기자회견 조회하기</div>
		<div class="card-body">
			<form action="searchOk" method="get">
			
				<div class="form-group">
					<div class="row">
						<div class="col">
							<input type="text" name="from_date" id="from_date" class="form-control" placeholder="YYYY-mm-dd"/>
						</div>
						<div class="col">
							<input type="text" name="to_date" id="to_date" class="form-control" placeholder="YYYY-mm-dd"/>
						</div> 
						<div class="col">
							<input type="text" name="name" id="name" class="form-control" placeholder="이름"/>
						</div>
						<div class="col">
							<input type="text" name="party" id="party" class="form-control" placeholder="정당명"/>
						</div>
					</div>
				</div> 
						<div class="col">
							<button type="submit" class="btn btn-primary">조회</button>
						</div>
			</form>
		</div>
	</div>
	<div id="title" style="text-align: center; font-size: 16px; font-weight: bold; margin: 12px 0px;">
		<span>기자회견 타임라인</span>
	</div>
	<div id="wrapper" style="overflow: auto; position: relative; height: 600px;">
		<div id="timeline"></div>
	</div>
</body>
</html>