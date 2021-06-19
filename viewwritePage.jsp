<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">
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
	color: black;
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
				<hr style="border: solid 1px; color: gray;">
				<br> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 30%; font-size: 160%; font-family: 'Nanum Brush Script', cursive;"
					href="mainPage.jsp">메인페이지</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 160%; font-family: 'Nanum Brush Script', cursive;"
					href="boardPage.jsp">자유게시판</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 160%; font-family: 'Nanum Brush Script', cursive;"
					href="boardPage.jsp">리뷰게시판</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 160%; font-family: 'Nanum Brush Script', cursive;"
					href="boardPage.jsp">오픈채팅</a>
			</div>
			<div style="margin-top: 7%;"></div>
			<div class="write">
				<form>
					<div class="form-group" style="margin-left: 30%; margin-right: 30%">
						<label for="exampleFormControlInput1"
							style="font-family: 'Nanum Brush Script', cursive; position: absoulte; top: 80%;">제목</label>
						<input type="text" class="form-control" id="title"
							style="font-family: 'Nanum Brush Script', cursive;"
							placeholder="제목을 입력하세요">
					</div>
					<div class="form-group" style="margin-left: 30%; margin-right: 30%">
						<label for="exampleFormControlTextarea1"
							style="font-family: 'Nanum Brush Script', cursive;">내용</label>
						<textarea class="form-control" id="content" rows="20"></textarea>
					</div>
					<div class="form-group" style="margin-left: 30%; margin-right: 30%">
						<label for="exampleFormControlFile1"
							style="font-family: 'Nanum Brush Script', cursive;">파일첨부</label>
						<input type="file" class="form-control-file" id="filename"
							style="font-family: 'Nanum Brush Script', cursive;">
					</div>


					<div class="buttonbar"
						style="padding-top: 10%; text-align: center;">
						<button type="button" class="btn btn-light"
							onclick="location.href='boardwritePage.jsp'">글 등록하기</button>
						<button type="button" class="btn btn-light"
							onclick="location.href='boardwritePage.jsp'">뒤로가기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
</body>
</html>