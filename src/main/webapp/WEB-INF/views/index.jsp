<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 -->
<!-- 부트스트랩 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
<!--
////////
-->
table {
	border-collapse: collapse;
}

table tr th {
	font-weight: 700;
}

table tr td, table tr th {
	border: 1.5px solid #818181;
	width: 1px;
	text-align: center;
}

ul.button {
	width: 400px;
	height: 50px;
	margin: 10px auto;
}

li.button {
	list-style: none;
	width: 50px;
	line-height: 50px;
	border: 1px solid #ededed;
	float: left;
	text-align: center;
	margin: 0 5px;
	border-radius: 5px;
}

</style>
<body role="document">
	<!-- 상단메뉴 -->
	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">

		<a class="navbar-brand" href="/">BEOM SHOP</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>

				<li class="dropdown"><a href="/" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">의류 <span
						class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">


						<c:forEach var="itemList" items="${itemList }">
							<c:set var="Idx" value="${fn:length(itemList.i_idx) }" />
							<c:choose>
								<c:when test="${Idx == '2' }">
									<li class="divider"></li>
									<li class="dropdown-header"><hr></li>

									<li><a href="/productList?i_idx=${itemList.i_idx}">${itemList.i_name }
									</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">------${itemList.i_name}------</li>
								</c:when>
								<c:when test="${Idx != '2' }">
									<li><a href="/productList?i_idx=${itemList.i_idx}">${itemList.i_name }</a></li>
								</c:when>
							</c:choose>


							<p>
						</c:forEach>
					</ul></li>
				<li class="nav-item"><a class="nav-link" href="/boardList">후기게시판</a></li>

				<li class="nav-item"><a class="nav-link disabled" href="#"
					tabindex="-1" aria-disabled="true">문의</a></li>
			</ul>

		</div>
	</nav>
	<!-- 상단메뉴 -->
	<div class="jumbotron">
		<h1>Beom Shop</h1>
		<p>메인페이지</p>
	</div>		
	<!--  --> 	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="width: 400px; margin: 0 auto">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img class="d-block w-100" src="/image/thumb/캡처.JPG" alt="First slide" width="100"
						height="200">
						<img class="d-block w-100" src="/image/thumb/thumb1120457854644700티셔츠.JPG" alt="Second slide" width="100"
						height="200">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="/image/thumb/thumb1120812205940600청바지.JPG" alt="Second slide" width="100"
						height="200">
				<img class="d-block w-100" src="/image/thumb/캡처.JPG" alt="Second slide" width="100"
						height="200">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="/image/thumb/thumb1121435274865699슬랙스.JPG" alt="Third slide" width="100"
						height="200">
					<img class="d-block w-100" src="/image/thumb/캡처.JPG" alt="Second slide" width="100"
						height="200">
						
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
		 

<ul class="carousel-indicators">
	<li data-target="#demo" data-slide-to="0" class="active"></li>
	<li data-target="#demo" data-slide-to="1"></li>
	<li data-target="#demo" data-slide-to="2"></li>
	<li data-target="#demo" data-slide-to="3"></li>	
</ul>

<!-- <img src="/image/thumb/thumb1120457854644700티셔츠.JPG" width="200"
						height="300">		
<img src="/image/thumb/thumb1120812205940600청바지.JPG" width="200"
						height="300">
<img src="/image/thumb/thumb1121435274865699슬랙스.JPG" width="200"
						height="300">
 -->


	<table class="table table-hover">
		<hr>
		<div>
			<form method="GET">
				<fieldset>
					<legend>후기 게시판</legend>
					<label>검색분류</label> <select name="type">
						<option value="b_title">제목</option>
						<option value="b_writer">작성자</option>
					</select> <label>검색어</label> <input type="text" name="keyword" value="" />
					<input type="submit" value="검색">
					<%--f(제목,작성자)=title&q=(검색내용) --%>
				</fieldset>
			</form>
		</div>

		<tr>
			<td>자유게시판 번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성 날짜</td>

		</tr>
		<c:forEach var="board" items="${list}">
			<tr>
				<td>${board.ROWNUM }</td>
				<td>${board.bTitle }</td>
				<td><a href="/boarddetail?bId=${board.bId}">${board.bWriter }</td>
				<td>${board.bDateTime }</td>

			</tr>
		</c:forEach>
	</table>
	<div>
		<ul class="button">
			<c:choose>
				<c:when test="${ page.prevPage  >=1 }">
					<li class="button" style=""><a
						href="/?nowpage=${page.prevPage}">◀</a></li>
				</c:when>
			</c:choose>

			<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}"
				step="1">
				<c:choose>
					<c:when test="${ page.nowpage == i }">

						<li class="button" style="background-color: #ededed;"><span>${i}</span></li>

					</c:when>
					<c:when test="${ page.nowpage != i }">
						<li class="button"><a href="/?nowpage=${i}">${i}</a></li>
					</c:when>
				</c:choose>
			</c:forEach>

			<c:choose>
				<c:when test="${ page.nextPage <= page.lastPage }">
					<li class="button" style=""><a
						href="/?nowpage=${page.nextPage}">▶</a></li>
				</c:when>
			</c:choose>
		</ul>
	</div>



	<hr>
	<div>
		<sec:authorize access="isAnonymous()">
			<a href="/login">로그인</a>
			<a href="/beforeSignUp">회원가입</a>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			<a href="/boardwrite" class="btn btn-success btn-sm" role="button">게시물
				작성</a>
			<a href="/user/info" class="btn btn-info btn-sm" role="button">내
				정보</a>
			<a href="/logout" class="btn btn-danger btn-sm" role="button">로그아웃</a>

		
		<sec:authentication property="principal" var="user" />
			<c:if
				test="${user.authorities == '[ROLE_ADMIN, ROLE_USER]' }">
				<sec:authorize access="isAuthenticated()">

			<a href="/admin" class="btn btn-warning btn-sm" role="button">관리자
				메뉴</a>
				</sec:authorize>
			</c:if>
		</sec:authorize>
		<hr>
	</div>
	
<Script>
$('.carousel').carousel({
	interval: 2000,
	pause: 'hove',
	wrap: true
})
</Script>
</body>
</html>