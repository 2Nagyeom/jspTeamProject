<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
int sum = 0;
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>결제페이지</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Nanum+Brush+Script&display=swap"
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

<script src="https://cdn.bootpay.co.kr/js/bootpay-3.3.2.min.js"
	type="application/javascript"></script>
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
	font-size: 150%;
	text-align: center;
}

td {
	font-family: 'Nanum Brush Script', cursive;
	font-size: 150%;
	text-align: center;
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
					href="hairbandproductPage.jsp">헤어밴드</a>
					<a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"
					href="basketPage.jsp">장바구니</a> <a id="menuitem"
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

			<div id="item" style="margin-top: 5%; margin-bottom: 6%;">
				<h2
					style="font-family: 'Nanum Brush Script', cursive; text-align: center;">
					결제
					</h3>
			</div>

			<div class="container">
				<div class="row">
					<div class="col">
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
											String sql = "SELECT * FROM `basket` where mid = ?";
											pstmt = conn.prepareStatement(sql);
											pstmt.setString(1, (String) session.getAttribute("memberid"));
											rs = pstmt.executeQuery();
											while (rs.next()) {
												sum += Integer.parseInt(rs.getString("totalprice"));
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
						<h2
							style="font-family: 'Nanum Brush Script', cursive; margin-top: 13%; text-align: center;">
							총 가격 :
							<%=sum%>
							원
						</h2>
					</div>
					<div class="col">
						<div
							style="text-decoration-line: none; padding-right: 30%; margin-left: 7%; font-size: 200%; font-family: 'Nanum Brush Script', cursive; margin-top: 3%;"
							class="input-group flex-nowrap">
							<span class="input-group-text" id="addon-wrapping">이름</span> <input
								type="text"class="form-control" placeholder="이름"
								aria-label="Username" aria-describedby="addon-wrapping">
						</div>
						<div
							style="text-decoration-line: none; padding-right: 30%; margin-left: 7%; font-size: 200%; font-family: 'Nanum Brush Script', cursive; margin-top: 3%;"
							class="input-group flex-nowrap">
							<span class="input-group-text" id="addon-wrapping">주소</span> <input
								type="text" class="form-control" placeholder="주소"
								aria-label="Username" aria-describedby="addon-wrapping">
						</div>
						<div
							style="text-decoration-line: none; padding-right: 30%; margin-left: 7%; font-size: 200%; font-family: 'Nanum Brush Script', cursive; margin-top: 3%;"
							class="input-group flex-nowrap">
							<span class="input-group-text" id="addon-wrapping">전화번호</span> <input
								type="text" class="form-control" placeholder="전화번호"
								aria-label="Username" aria-describedby="addon-wrapping">
						</div>
						
						<div
							style="margin: 0 auto; width: fit-content; margin-top: 15%; margin-bottom: 5%;">
							<button type="button" class="btn btn-success"
								style="font-family: 'Nanum Brush Script', cursive; width: 120px; background-color: rgb(252, 185, 237); border-color: rgb(252, 185, 237);"
								onclick="pay()">결제</button>
							<button
								style="font-family: 'Nanum Brush Script', cursive; width: 120px;"
								type="button" class="btn btn-secondary" onclick="location.href='basketPage.jsp">취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>

<script>
    function pay() {
        BootPay.request({
				price: '<%=sum%>', 
				//실제 결제되는 가격
			application_id : "60ccb30e5b2948001fdc4d7d",
			name : 'Ppoyami주식회사', //결제창에서 보여질 이름
			pg : 'kcp',
			method : '', //결제수단, 입력하지 않으면 결제수단 선택부터 화면이 시작합니다.
			show_agree_window : 1, // 부트페이 정보 동의 창 보이기 여부
			items : [ {
				item_name : 'asd', //상품명
				qty : 1, //수량
				unique : '123', //해당 상품을 구분짓는 primary key
				price : 1000, //상품 단가
				cat1 : 'TOP', // 대표 상품의 카테고리 상, 50글자 이내
				cat2 : '티셔츠', // 대표 상품의 카테고리 중, 50글자 이내
				cat3 : '라운드 티', // 대표상품의 카테고리 하, 50글자 이내
			} ],
			user_info : {
				username : 'dd',
				email : 'dd',
				addr : 'dd',
				phone : '010-1234-4567'
			},
			order_id : 'order_id_1234', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
			account_expire_at : '2020-10-25', // 가상계좌 입금기간 제한 ( yyyy-mm-dd 포멧으로 입력해주세요. 가상계좌만 적용됩니다. )
		}).error(function(data) {
			//결제 진행시 에러가 발생하면 수행됩니다.
			console.log(data);
		}).cancel(function(data) {
			//결제가 취소되면 수행됩니다.
			console.log(data);
		}).ready(function(data) {
			// 가상계좌 입금 계좌번호가 발급되면 호출되는 함수입니다.
			console.log(data);
		}).confirm(function(data) {
			//결제가 실행되기 전에 수행되며, 주로 재고를 확인하는 로직이 들어갑니다.
			//주의 - 카드 수기결제일 경우 이 부분이 실행되지 않습니다.
			console.log(data);
			var enable = true; // 재고 수량 관리 로직 혹은 다른 처리
			if (enable) {
				BootPay.transactionConfirm(data); // 조건이 맞으면 승인 처리를 한다.
			} else {
				BootPay.removePaymentWindow(); // 조건이 맞지 않으면 결제 창을 닫고 결제를 승인하지 않는다.
			}
		}).close(function(data) {
			// 결제창이 닫힐때 수행됩니다. (성공,실패,취소에 상관없이 모두 수행됨)
			console.log(data);
		}).done(function(data) {
			//결제가 정상적으로 완료되면 수행됩니다
			//비즈니스 로직을 수행하기 전에 결제 유효성 검증을 하시길 추천합니다.
			console.log(data);
		});
	}
</script>

</html>