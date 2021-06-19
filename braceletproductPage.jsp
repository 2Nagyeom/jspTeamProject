<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팔찌</title>
</head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">
<style>
a {
	color: black;
}

a:link {
	color: black;
	text-decoration: none;
}

menuitem {
	text-decoration-line: none;
	margin-left: 7%;
	font-size: 140%;
	font-family: 'Nanum Brush Script', cursive;
}
</style>
</head>

<body style="background: linear-gradient(to top, #F8E0F1, white)";>
	<div>
		<div id="container">
			<div id="header" style="margin-bottom: 5%;">
				<h1
					style="font-family: 'Dancing Script', cursive; font-size: 100%; text-align: left;">Ppoyami</h1>
			</div>
			<div id="neck" style="margin-bottom: 5%; margin-top: 5%;">
				<h1
					style="font-family: 'Dancing Script', cursive; font-size: 240%; text-align: center;">Braceletproduct</h1>
			</div>

			<div id="menubar" style>
				<hr>
				<br> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 17%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"
					href="mainPage.jsp">메인페이지</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"
					href="neckproductPage.jsp">목걸이</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"
					href="ringproductPage.jsp">반지</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"
					href="hairbandproductPage.jsp">헤어밴드</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"
					href="basketPage.jsp">장바구니</a> <a id="menuitem"
					style="text-decoration-line: none; margin-left: 7%; font-size: 140%; font-family: 'Nanum Brush Script', cursive;"
					href="boardPage.jsp">자유게시판</a>
			</div>

			<div id="item" style="margin-top: 5%; margin-bottom: 8%;">
				<h2
					style="font-size: 200%; font-family: 'Dancing Script', cursive; text-align: center;">
					items
					</h3>
			</div>

			<div id="jb-footermother"
				style="flex-wrap: wrap; width: 100%; display: flex; flex-wrap: wrap;">
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
 	 String sql= "SELECT * FROM `product` WHERE cid = 1";
 	 pstmt=conn.prepareStatement(sql);
	 rs = pstmt.executeQuery();
			while(rs.next()){
								%>

				<div id="jb-footer"
					style="clear: both; width: 300px; height: 300px; overflow: hidden; margin-bottom: 50px; margin-left: 24px; margin-right: 24px;">
					<a stlye="font-family: 'Nanum Brush Script', cursive;"
						; href="itemdetailPage.jsp?pname=<%=rs.getString("pname")%>">
						<img style="width: 100%; height: 85%; object-fit: cover;"
						src="<%=rs.getString("pimage1") %>">
					</a>
					<p style="font-family: 'Nanum Brush Script', cursive;"><%=rs.getString("pname") %>
						&nbsp&nbsp&nbsp 가격:
						<%=rs.getString("price") %></p>
				</div>
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
			</div>
		</div>
	</div>
	</div>
</body>
</html>