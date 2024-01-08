<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
	
<script
	src="https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.2.0/main.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@fullcalendar/daygrid@4.2.0/main.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@fullcalendar/interaction@4.2.0/main.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://d3js.org/d3.v6.min.js"></script>
<script src="https://d3js.org/topojson.v3.min.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.2.0/main.min.css"
	rel="stylesheet" />

<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" />

<link rel="stylesheet"
	href="<c:url value="/resources/css/fontawesome.css" />" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/templatemo-villa-agency.css" />" />
<link rel="stylesheet" href="<c:url value="/resources/css/owl.css" />" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/animate.css" />" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<style>
	/* styles.css */
	/* .flex { */
	/* 	display: flex; */
	/* } */
	/* #calendar { */
	/* 	width: 30%; */
	/* 	height: 300px; */
	/* } */
	.content {
		width: 100%;
		height: 100%;
		text-align: center;
		position: relative;
		z-index: 1;
	}
	
	.content::after {
		width: 100%;
		height: 100%;
		content: "";
		background:
			url(https://cdn.pixabay.com/photo/2017/12/18/18/37/christmas-3026685_1280.jpg);
		position: absolute;
		top: 0;
		left: 0;
		z-index: -1;
		opacity: 0.3;
	}
	
	.highlight {
		background-color: red;
		opacity: 0.5;
		position: relative;
		z-index: 2
	}
	
	.tooltip {
		position: absolute;
		text-align: center;
		width: 100px;
		height: 80px;
		padding: 2px;
		font: 13px sans-serif;
		background: lightsteelblue;
		border: 0px;
		border-radius: 8px;
		pointer-events: none;
	}
	/* Flexbox를 사용하여 열 배치 */
	.container {
		display: flex;
	}
	
	/* 각각의 열 요소 */
	#calendar, #calendarList {
		width: 50%; /* 2개의 열을 반씩 차지하도록 설정 */
		padding: 20px;
		box-sizing: border-box;
		/* 	border: 1px solid #ccc; */
		padding: 20px;
	}
	
	.fc-left h2 {
		font-size: 15px;
	}
	
	#calendar {
		width: 400px;
		font-size: 10pxs
	}
	
	#mapClick, #hideList {
		width: 50%; /* 2개의 열을 반씩 차지하도록 설정 */
		padding: 20px;
		box-sizing: border-box;
		border: 1px solid #ccc;
		padding: 20px;
	}
	
	.fc-button {
		font-size: 13px;
		margin-left: 10px
	}
	
	.fc table {
		font-size: 13px;
	}
</style>


<title>board list</title>
</head>

<!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <nav class="main-nav">
              <!-- ***** Logo Start ***** -->
 
              <a href="http://localhost:8080/seoul/main" class="logo" style="margin-left:10px">			             
                <h1>Seoul</h1>
              </a>
              <div style='position: relative;  size:50%'>
			            <img src='/resources/images/003.png'>
			        </div>

              <!-- ***** Menu Start ***** -->
              <ul class="nav" style="margin-left:500px">
         			<li><a href="/seoul/main"  >메인</a></li>
					<li><a href="/seoul/event">행사/맛집</a></li>
					<li><a href="/seoul/recommend" >추천일정</a></li>
					<li><a href="/board/list" class="active">게시판</a></li>
					<c:choose>
					    <c:when test="${not empty user}">
					        <li><a href="/seoul/login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.name_}&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
					    </c:when>
					    <c:otherwise>
					        <li><a href="/seoul/login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로그인&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
					    </c:otherwise>
					</c:choose>
			</ul>

						
              <a class="menu-trigger">
                <span>Menu</span>
              </a>
              <!-- ***** Menu End ***** -->
            </nav>
          </div>
        </div>
      </div>
    </header>
    <!-- ***** Header Area End ***** -->
<hr/><br/><br/>
<body>
	<h4 style="margin-left:800px;">게시글 목록</h4><br/>
	<div class="container" >
		<!-- 게시글 목록을 표시하는 컨테이너 -->
		
		<table class="table">
			<!-- 테이블의 열 너비를 설정하는 colgroup -->
			<colgroup>
				<col width="15%" />
				<col width="15%" />
				<col width="15%" />
				<col width="20%" />
			</colgroup>
			<thead class='table table-dark'>
				<!-- 게시글 목록의 테이블 헤더 -->
				<tr>
					<th scope="col">글번호</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
				</tr>
			</thead>
			<tbody>
				<!-- 각각의 게시물을 나타내는 테이블 본문 -->
				<c:forEach var="board" items="${list}">
					<tr data-post-id="${board.bno}" class="post-row">
						<!-- 게시글의 정보를 표시 -->
						<td><a href="/board/postDetails?bno=${board.bno}">${board.bno}</a></td>
						<td>${board.title}</td>
						<td>${board.writer}</td>
						<!-- 여기에 조회수 데이터가 들어갈 자리 -->
						<td>${board.reg_date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><br/>
	<!-- 새 글을 작성할 수 있는 링크 -->
	<a href="/seoul/board" class="btn btn-dark" role="button" style="margin-left:1500px;">글 쓰기</a>

	<!-- Optional JavaScript -->
	<!-- jQuery, Popper.js, Bootstrap JS -->
	<!-- JavaScript 라이브러리를 로드 -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>


</body>
</html>
