<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${param.msgId == 11}">
		<c:set var="msg">사용자 등록 성공.</c:set>
	</c:when>
	<c:when test="${param.msgId == 10}">
		<c:set var="msg">사용자 등록 실패:사용자 이름을 입력하세요.</c:set>
	</c:when>
	<c:when test="${param.msgId == 21}">
		<c:set var="msg">사용자 수정 성공.</c:set>
	</c:when>
	<c:when test="${param.msgId == 31}">
		<c:set var="msg">사용자 등록 탈퇴.</c:set>
	</c:when>
	<c:when test="${param.msgId == 30}">
		<c:set var="msg">사용자 탈퇴 실패:탈퇴할 사용자를 선택하세요.</c:set>
	</c:when>
	<c:otherwise>
		<c:set var="msg">등록할 사용자명을 입력하세요.</c:set>
	</c:otherwise>
</c:choose>