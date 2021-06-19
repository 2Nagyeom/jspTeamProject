<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%@ page import="java.io.PrintWriter"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>장바구니</title>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap"
	rel="stylesheet">
</head>


<style>
a {
	color: black;
}

a:link {
	color: black;
	text-decoration: none;
}

.menuitem {
	text-decoration-line: none;
	margin-left: 7%;
	font-size: 140%;
	font-family: 'Nanum Brush Script', cursive;
}

tr {
	text-align: center;
}

th {
	font-family: 'Nanum Brush Script', cursive;
}

td {
	font-family: 'Nanum Brush Script', cursive;
}
</style>
</head>

<body style="background: linear-gradient(to top, #F8E0F1, white)";>
	<div>
		<div id="container">
			<div id="header" style="margin-bottom: 5%; margin-top: 5%;">
				<h1
					style="font-family: 'Dancing Script', cursive; font-size: 240%; text-align: center;">Ppoyami</h1>
			</div>

			<div id="menubar">
				<hr>
				<br> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"
					href="neckproductPage.jsp">목걸이</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"
					href="ringproductPage.jsp">반지</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"
					href="braceletproductPage.jsp">팔찌</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"
					href="hairbandproductPage.jsp">헤어밴드</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"
					href="boardPage.jsp">자유게시판</a>
				<%
				if (session.getAttribute("memberid") == null) {
				%>
				<a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Dancing Script', cursive;"
					href="loginPage.jsp">Sign-in</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Dancing Script', cursive;"
					href="sign-upPage.jsp">Sign-up</a>
				<%
				} else {
				%>
				<a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"><%=session.getAttribute("memberid")%>님
					환영합니다:)</a> <a id="menuitem"
					onclick="location.href='./dbprocess/logout.jsp'"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;">로그아웃하기</a>
				<%
				}
				%>
			</div>

			<div id="item" style="margin-top: 5%; margin-bottom: 8%;">
				<h2
					style="font-family: 'Dancing Script', cursive; text-align: center; font-family: 'Nanum Brush Script', cursive;">
					장바구니
					</h3>
			</div>

			<div class='mainTable'
				style="background-color: white; width: 80%; border-radius: 10px; margin: 0 auto;">
				<div>
					<table class="table" style="width: 100%;">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">상품명</th>
								<th scope="col">가격</th>
								<th scope="col">수량</th>
							</tr>
						</thead>
						<tbody>
							<%
							Connection conn = null;
							PreparedStatement pstmt = null;
							String str = "";
							ResultSet rs = null;
							try {
								String jdbcUrl = "jdbc:mysql://localhost:3306/db_test";
								String dbId = "test";
								String dbPass = "Bee0361189!";

								Class.forName("com.mysql.jdbc.Driver");
								conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

								//String sql= "SELECT * FROM `basket` WHERE mid = "+session.getAttribute("memberid");
								String sql = "SELECT * FROM `basket` WHERE mid = ?";
								pstmt = conn.prepareStatement(sql);
								pstmt.setString(1, (String) session.getAttribute("memberid"));
								rs = pstmt.executeQuery();
								while (rs.next()) {
							%>
							<tr>
								<th scope="row"><img src=<%=rs.getString("ppicture")%>
									style="width: 60px; height: 60px;" /></th>
								<td><%=rs.getString("pname")%></td>
								<td><%=rs.getString("totalprice")%>원</td>
								<td><%=rs.getString("pamount")%></td>
							</tr>
							<%
							}

							} catch (Exception e) {
							e.printStackTrace();
							out.println("db오류!");
							} finally {
							if (pstmt != null)
							try {
								pstmt.close();
							} catch (SQLException sqle) {
							}
							if (conn != null)
							try {
								conn.close();
							} catch (SQLException sqle) {
							}
							}
							%>
						</tbody>
					</table>
				</div>
			</div>
			<div
				style="margin: 0 auto; width: fit-content; margin-top: 5%; margin-bottom: 5%;">
				<button type="button" class="btn btn-success"
					onclick="location.href='payPage.jsp'"
					style="font-family: 'Nanum Brush Script', cursive; background-color: rgb(252, 185, 237); border-color: rgb(252, 185, 237);">결제</button>
				<button style="font-family: 'Nanum Brush Script', cursive;"
					type="button" class="btn btn-secondary">취소</button>
				<button type="button" class="btn btn-danger"
					style="font-family: 'Nanum Brush Script', cursive; background-color: rgb(252, 185, 237); border-color: rgb(252, 185, 237);">장바구니
					비우기</button>
			</div>
		</div>
	</div>
	</div>
</body>

</html>