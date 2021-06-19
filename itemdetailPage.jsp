<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>

<% request.setCharacterEncoding("utf-8");%>

<% 
   String pname = request.getParameter("pname");
%>
<html>
<script src="https://cdn.bootpay.co.kr/js/bootpay-3.3.2.min.js" type="application/javascript"></script>
<head>
<meta charset="UTF-8">
<title>제품상세페이지</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<style>
a{
	color:black;
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

.btn {
	font-family: 'Nanum Brush Script', cursive;
	transform: translateX(-50%);
	margin-bottom: 40px;
	width: 40%;
	min-width: fit-content;
	height: 40px;
	background: linear-gradient(125deg, #F8E0F1, white, #F8E0F1);
	background-position: left;
	background-size: 200%;
	margin-right: 5%;
	margin-left: 2%;
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
		<div id="header" style="margin-bottom: 5%; margin-top: 5%;">
			<a href="mainPage.jsp">
				<h1
					style="font-family: 'Dancing Script', cursive; font-size: 240%; text-align: center;">Ppoyami</h1>
			</a>
		</div>

		<div id="menubar" style>
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
				href="basketPage.jsp">장바구니가기</a> <a id="menuitem"
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
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%;font-family: 'Nanum Brush Script', cursive;"><%=session.getAttribute("memberid")%>님
					환영합니다:)</a> <a id="menuitem"
					onclick="location.href='./dbprocess/logout.jsp'"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;">로그아웃하기</a>
				<%
				}
				%>
		</div>

		<div id="item" style="margin-top: 5%; margin-bottom: 5;"></div>

		<div class="container">
			<%
   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
   ResultSet rs = null;
   try{
 	 String jdbcUrl="jdbc:mysql://localhost:3306/db_test";
     String dbId="test";
     String dbPass="Bee0361189!";
 	 
 	 Class.forName("com.mysql.jdbc.Driver");
 	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
 	
 	 //String sql= "SELECT * FROM `basket` WHERE mid = "+session.getAttribute("memberid");
 	 String sql= "SELECT * FROM `product` where pname = ?";
 	 pstmt=conn.prepareStatement(sql);
 	 pstmt.setString(1,pname);	
	 rs = pstmt.executeQuery();
			if(rs.next()){
								%>
							
						<div class="row">
              <div class="col" style="margin-right: 10%;">
                <img style="width: 100%; height: 100%; object-fit:cover;"
                src="<%=rs.getString("pimage1") %>">
              </div>
              <div class="col">
                <h2 style="text-align: left; font-family: 'Nanum Brush Script', cursive;"><%=rs.getString("pname") %></p>
                <h3 style="margin-top:10%; text-align: left; font-family: 'Nanum Brush Script', cursive;"><%=rs.getString("pdetail") %></h3>
                <h2 style="margin-top:10%; text-align: left; font-family: 'Nanum Brush Script', cursive;">가격 : <%=rs.getString("price") %> 원</h3>
                    <p style="margin-top: 30%; ">
                    <button type="button" class="btn btn-primary btn-lg" onclick="location.href='./dbprocess/basketpro.jsp?pname=<%=rs.getString("pname")%>&mid=<%=session.getAttribute("memberid")%>&totalprice=<%=rs.getString("price")%>&pamount=1&ppicture=<%=rs.getString("pimage1")%>'">장바구니담기</button>
                    <button type="button" class="btn btn-primary btn-lg" onclick="pay()">구매하기</button>
                </p>
              </div>
            </div>
          </div>
	<script>
    function pay() {
        BootPay.request({
				price: '<%=rs.getString("price") %>', 
				//실제 결제되는 가격
				application_id: "60ccb30e5b2948001fdc4d7d",
				name: '<%=rs.getString("pname") %>', 
				//결제창에서 보여질 이름
				pg: 'kcp',
				method: '', //결제수단, 입력하지 않으면 결제수단 선택부터 화면이 시작합니다.
				show_agree_window: 1, // 부트페이 정보 동의 창 보이기 여부
				items: [
			{
			item_name: 'asd', //상품명
			qty: 1, //수량
			unique: '123', //해당 상품을 구분짓는 primary key
			price: 1000, //상품 단가
			cat1: 'TOP', // 대표 상품의 카테고리 상, 50글자 이내
			cat2: '티셔츠', // 대표 상품의 카테고리 중, 50글자 이내
			cat3: '라운드 티', // 대표상품의 카테고리 하, 50글자 이내
		}
	],
	user_info: {
		username: 'dd',
		email: 'dd',
		addr: 'dd',
		phone: '010-1234-4567'
	},
	order_id: 'order_id_1234', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
	account_expire_at: '2020-10-25', // 가상계좌 입금기간 제한 ( yyyy-mm-dd 포멧으로 입력해주세요. 가상계좌만 적용됩니다. )
}).error(function (data) {
	//결제 진행시 에러가 발생하면 수행됩니다.
	console.log(data);
}).cancel(function (data) {
	//결제가 취소되면 수행됩니다.
	console.log(data);
}).ready(function (data) {
	// 가상계좌 입금 계좌번호가 발급되면 호출되는 함수입니다.
	console.log(data);
}).confirm(function (data) {
	//결제가 실행되기 전에 수행되며, 주로 재고를 확인하는 로직이 들어갑니다.
	//주의 - 카드 수기결제일 경우 이 부분이 실행되지 않습니다.
	console.log(data);
	var enable = true; // 재고 수량 관리 로직 혹은 다른 처리
	if (enable) {
		BootPay.transactionConfirm(data); // 조건이 맞으면 승인 처리를 한다.
	} else {
		BootPay.removePaymentWindow(); // 조건이 맞지 않으면 결제 창을 닫고 결제를 승인하지 않는다.
	}
}).close(function (data) {
    // 결제창이 닫힐때 수행됩니다. (성공,실패,취소에 상관없이 모두 수행됨)
    console.log(data);
}).done(function (data) {
	//결제가 정상적으로 완료되면 수행됩니다
	//비즈니스 로직을 수행하기 전에 결제 유효성 검증을 하시길 추천합니다.
	console.log(data);
});
    }
</script>
		<% 
			}
 	 
 	}catch(Exception e){ 
 		e.printStackTrace();
 		out.println("db오류!");
 	}finally{
 		if(pstmt != null) 
 			try{pstmt.close();}catch(SQLException sqle){}
 		if(conn != null) 
 			try{conn.close();}catch(SQLException sqle){}
 	}
      
%>
</body>


</html>