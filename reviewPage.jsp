<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
li {
	list-style-type: none;
	float: left;
	border: 1px solid white;
}

a {
	text-align: center;
	color: black;
}

a:link {
	color: black;
	text-decoration: none;
}

a:hover {
	color: black;
	background: #F8E0F1;
}

menuitem {
	text-decoration-line: none;
	margin-left: 7%;
	font-size: 140%;
	font-family: 'Nanum Brush Script', cursive;
}

.page-link {
	color: #F8E0F1;
}

th {
	font-family: 'Nanum Brush Script', cursive;
	font-size: 150%;
	text-align: center;
}

td {
	font-family: 'Nanum Brush Script', cursive;
	font-size: 150%;
	text-align: center;
}

.btn {
	font-family: 'Nanum Brush Script', cursive;
	position: relative;
	left: 40%;
	transform: translateX(-50%);
	margin-bottom: 40px;
	width: 18%;
	height: 40px;
	background: linear-gradient(125deg, #F8E0F1, white, #F8E0F1);
	background-position: left;
	background-size: 200%;
	color: black;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
}
</style>
</head>

<body style="background: linear-gradient(to top, #F8E0F1, white)";>
	<div>
		<div id="container">
			<div id="header" style="margin-bottom: 4%; margin-top: 4%;">
				<h1
					style="font-family: 'Dancing Script', cursive; font-size: 240%; text-align: center;">Ppoyami</h1>
			</div>
			<div id="menubar">
				<hr style="border: solid 1px; color: gray;";>
				<br> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 36%; font-size: 160%; font-family: 'Nanum Brush Script', cursive;"
					href="mainPage.jsp">메인페이지</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 160%; font-family: 'Nanum Brush Script', cursive;"
					href="boardPage.jsp">자유게시판</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 160%; font-family: 'Nanum Brush Script', cursive;"
					href="boardPage.jsp">오픈채팅</a>
			</div>
			<div style="margin-top: 7%;"></div>
			<div
				style="background-color: white; width: 90%; border-radius: 10px; margin: 0 auto;">
				<table class="table" style="paddding-left: 10%; padding-right: 10%;">
					<thead class="thead-light">
						<tr>
							<th scope="col">번호</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
							<th scope="col">글 등록일</th>
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
						<tr>
							<th scope="row">4</th>
							<td>Larry</td>
							<td>the Bird</td>
							<td>@twitter</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Larry</td>
							<td>the Bird</td>
							<td>@twitter</td>
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
			<div style="padding-bottom: 5%"></div>
			<div class="col text-center" style="padding-bottom: 2%;"></div>
			<p>
				<button style="margin-left: 10%" type="button"
					class="btn btn-primary btn-lg"
					onclick="location.href='viewwritePage.jsp'">글쓰기</button>
			</p>
		</div>
	</div>
	</div>
</body>

</html>