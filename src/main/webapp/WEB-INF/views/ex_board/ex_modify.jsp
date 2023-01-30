<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<!-- ckeditor CDN -->
<script src="//cdn.ckeditor.com/4.20.1/standard/ckeditor.js"></script>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
 integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
 integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="http://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="${path}/resources/css/free_styles.css">
<link rel="stylesheet" href="${path}/resources/css/index.css">
<link rel="stylesheet" href="${path}/resources/css/free_content.css">
<link rel="shortcut icon" href="${path}/resources/img/파비콘.png" type="image/x-icon">

<title>운동지식공유 게시판</title>

</head>

<body>
<%@ include file="../include/header.jsp" %>
	<c:if test="${loginUser == null }">
		<script>
			alert("로그인 후 이용하세요!");
			location.replace('${cp}/user/login');
		</script>
	</c:if>
	<article>
		<div class="container" role="main">

			<h2>운동지식공유 게시판 수정하기</h2>
			<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/ex_board/ex_modify">

				<div class="mb-3">
					<input type="hidden" class="form-control" name="ex_num" value="${ex_view.ex_num }">
				</div>

				<div class="mb-3">
					<label for="title">제목</label>
					<input type="text" class="form-control" name="ex_title" value="${ex_view.ex_title }">
				</div>

				<input type="hidden" class="form-control" name="ex_writer" value="${loginUser.userid }" >

				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="form-control" rows="5" name="ex_content">${ex_view.ex_content }</textarea>
				</div>

			</form>
			<div >
				<button type="button" class="btn btn-sm btn-primary" id="btnSave"
				 onclick="document.getElementById('form').submit();">수정완료</button>
				<!-- <button type="button" class="btn btn-sm btn-primary" id="btnList" >목록</button> -->
			</div>
		</div>

	</article>
	
<%@ include file = "../include/footer.jsp" %>	
	
<script>
	//ckeditor setting
    window.onload = function(){
       ck = CKEDITOR.replace("ex_content");
    };
   
</script>

</body>

</html>

