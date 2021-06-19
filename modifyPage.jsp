<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
</head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">
<style>
* {
	margin: 0px;
	padding: 0px;
	text-decoration: none;
	font-family: sans-serif;
}

.body {
	background-image: #E3F6CE;
}

.loginForm {
	position: absolute;
	width: 300px;
	height: 400px;
	padding: 30px, 20px;
	background-color: #FFFFFF;
	text-align: center;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border-radius: 15px;
}

.loginForm h2 {
	text-align: center;
	margin: 30px;
}

.idForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}

.passForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}

.passcheckForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}

.nameForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}

.addressForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px;
}

.numberForm {
	border-bottom: 2px solid #adadad;
	margin: 30px;
	padding: 10px 10px
}

.id {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.pw {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.pwcheck {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.name {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.addr {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.num {
	width: 100%;
	border: none;
	outline: none;
	color: #636e72;
	font-size: 16px;
	height: 25px;
	background: none;
}

.btn {
	position: relative;
	left: 40%;
	transform: translateX(-50%);
	margin-bottom: 40px;
	width: 80%;
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

.btn {
	position: relative;
	left: 40%;
	transform: translateX(-50%);
	margin-bottom: 40px;
	width: 80%;
	height: 40px;
	background: linear-gradient(125deg, #F8E0F1, #white, #F8E0F1);
	background-position: left;
	background-size: 200%;
	color: black;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
}

.btnno {
	position: relative;
	left: 40%;
	transform: translateX(-50%);
	margin-bottom: 40px;
	width: 80%;
	height: 40px;
	background-position: left;
	background-size: 200%;
	color: black;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
}

.btn:hover {
	background-position: right;
}

.bottomText {
	text-align: center;
}
</style>

<body >
<div id="header" >
		<h1
			style="font-family: 'Dancing Script', cursive; font-size: 240%; text-align: center;">Ppoyami</h1>
	</div>
	<form action="./dbprocess/modifyPro.jsp" method="post"
		class="loginForm">
		<h2 style="font-family: 'Nanum Brush Script', cursive;">Modify</h2>
		<!-- <div class="idForm">
			<input style="font-family: 'Nanum Brush Script', cursive;" type="text" class="id" name="id" placeholder="ID">
		</div> -->
		<div class="passForm">
			<input style="font-family: 'Nanum Brush Script', cursive;" type="password" class="pw" name="pw" placeholder="PW">
		</div>
		<div class="passcheckForm">
			<input style="font-family: 'Nanum Brush Script', cursive;"type="password" class="pwcheck" name="pwcc"
				placeholder="비밀번호확인">
		</div>
		<!-- <div class="nameForm">
			<input style="font-family: 'Nanum Brush Script', cursive;" type="text" class="name" name="name" placeholder="이름">
		</div> -->
		<div class="addressForm">
			<input style="font-family: 'Nanum Brush Script', cursive;" type="text" class="addr" name="addr" placeholder="ADDRESS">
		</div>
		<div class="numberForm">
			<input style="font-family: 'Nanum Brush Script', cursive;" type="text" class="num" name="num" placeholder="NUMBER">
		</div>
		<button style="font-family: 'Nanum Brush Script', cursive;" type="submit" class="btn">modify</button>
		<button style="font-family: 'Nanum Brush Script', cursive;" type="button" class="btnno"
			onclick="location.href='mainPage.jsp'">뒤로가기</button>
	</form>
</body>
</html>