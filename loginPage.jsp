<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./style.css">
</head>
<title>로그인페이지</title>
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

<body style="background: linear-gradient(to top, #F8E0F1, white)";>
	<form action="./dbprocess/loginPro.jsp" method="post" class="loginForm">
		<h2 style="font-family: 'Nanum Brush Script', cursive;">Sign-in</h2>
		<div class="idForm">
			<input style="font-family: 'Nanum Brush Script', cursive;"
				type="text" class="id" name="id" placeholder="ID">
		</div>
		<div class="passForm">
			<input style="font-family: 'Nanum Brush Script', cursive;"
				type="password" class="pw" name="pw" placeholder="PW">
		</div>
		<button style="font-family: 'Nanum Brush Script', cursive;"
			type="submit" class="btn">LOG IN</button>
		<script>
              let button = () => {
                alert('login Button !')
            }
          </script>
		<div class="bottomText">
			<p style="font-family: 'Nanum Brush Script', cursive;">
				Don't you have ID? <a
					style="font-family: 'Nanum Brush Script', cursive;"
					href="sign-upPage.jsp">sign up</a>
			</p>
		</div>
	</form>
</body>
</html>