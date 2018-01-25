<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>UMS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
#section1 {
	border:solid black 1px;
	text-align: center;
}
#section2{
	padding-top:30px;
}
table,th{
	text-align:center;
}
</style>
</head>
<body>
	<div id="section1">
		<h3>U M S</h3>
	</div>
	
	<div id="section2" class="container">
		<form>
			<div class="form-group">
				<%@ include file="user/msg.jsp" %>
				<input type="text" class="form-control" name="userName"
					placeholder="${msg}"/>
			</div>
			
			<div class="btn-group btn-group-justified">
				<div class="btn-group">
					<button type="submit" formaction="main.jsp" class="btn btn-default">
						<span class="glyphicon glyphicon-list"></span> 목록
					</button>
			</div>
				<div class="btn-group">
					<button type="submit" formaction="user/join.jsp" class="btn btn-default">
						<span class="glyphicon glyphicon-plus"></span> 등록
					</button>
				</div>	
				<div class="btn-group">
					<button type="submit" formaction="user/correct.jsp" class="btn btn-default">
						<span class="glyphicon glyphicon-asterisk"></span> 수정
					</button>
				</div>
				<div class="btn-group">
					<button type="submit" formaction="user/secede.jsp" class="btn btn-default">
						<span class="glyphicon glyphicon-remove"></span> 탈퇴
					</button>
				</div>
			</div>
			<br>
			<div class="container">
				<jsp:include page="user/listUser.jsp"/>
			</div>
		</form>
	</div>
</body>
</html>