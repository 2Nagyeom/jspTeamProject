<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gaesipan</title>
</head>
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="navbar.css" rel="stylesheet">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/navbars/">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<style>
ul {
	margin: 0;
	padding: 0;
}

li {
	list-style-type: none;
	float: left;
	border: 1px solid white;
}

a {
	display: block;
	padding: 8px 20px;
	text-transform: uppercase;
	text-decoration: none;
	font-weight: bold;
	color: #000000;
	transition: all 0.3s ease-in-out;
}

a:hover {
	color: #fff;
	background: #111;
}
</style>
<body>
	<div class="main">
		<nav class="navbar navbar-dark bg-light"
			aria-label="First navbar example">
			<div class="container-fluid">
				<a class="navbar-brand">Ppoyami</a>
				<ul class="nav justify-content-center">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="mainPage.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="loginPage.jsp">Sign-in</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="mainPage.jsp">Sign-out</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="sign-up.jsp">Sign-Up</a>
					</li>
				</ul>
			</div>
		</nav>
		<div class="blank" style="padding-top: 10%; padding-bottom: 2%;">
			<div class="side">
				<ul class="nav justify-content-center">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="boardPage.jsp" style="color: purple;">자유게시판</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="byproductPage.jsp" style="color: purple;">리뷰게시판</a></li>
					<li class="nav-item"><a class="nav-link"
						href="boardquestionPage.jsp" style="color: purple;">1:1문의</a></li>
				</ul>
			</div>

		</div>
		<div style="padding-left: 10%; padding-right: 10%">
			<table class="table" style="paddding-left: 20%; padding-right: 20%;">
				<thead class="thead-light">
					<tr>
						<th scope="col" style="color: pink;">번호</th>
						<th scope="col" style="color: pink;">제목</th>
						<th scope="col" style="color: pink;">작성자</th>
						<th scope="col" style="color: pink;">글 등록일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="numberbar"></div>
		<div class="buttonbar" style="padding-left: 40%; padding-top: 5%;">
			<button type="button" class="btn btn-light"
				onclick="location.href='boardwritePage.jsp'">글쓰기</button>
			<button type="button" class="btn btn-light">뒤로가기</button>
		</div>
	</div>
	</div>
</body>
</html>