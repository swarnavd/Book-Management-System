<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<head>
		<nav class="nav-bar">
			<div class="heading">
				<h1>Beauty of Book</h1>
			</div>
			<ul class="menu">
				<li><a href="register.jsp">Rgister More Book!!!</a></li>
				
			</ul>
		</nav>
	</head>
	
	<main>
		<%
			String bname="";
		String bedition="";
		int bprice=0;
			String id1=request.getParameter("id");
			int id=Integer.parseInt(id1);
			String name = request.getParameter("name");
			String edition = request.getParameter("edition");
			String url="jdbc:mysql://localhost:3306/swarnav";
			String user="swarnav";
			String pass="swarnav";
			String query="select * from book_registration where id=?";
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			PreparedStatement st2=con.prepareStatement(query);
			st2.setInt(1,id);
			ResultSet rs=st2.executeQuery();
			while(rs.next()){
				bname=rs.getString("bookname");
				bedition=rs.getString("bookedition");
				bprice=rs.getInt("price");
			}
			
		%>
		<div class="form">
		<h1>Edit</h1>
		<p class="message">${message}</p>
			<form action="Registration" method="post" class="frm">
				<table>
					<tr>
						<td>Book name:</td>
						<td><input type="text" name="name" value="<%=bname%>"></td>
					</tr>
					<tr>
						<td>Book Edition:</td>
						<td><input type="text" name="edition" value="<%=bedition%>"></td>
					</tr>
					<tr>
						<td>Book Price:</td>
						<td><input type="text" name="price" value="<%=bprice%>"></td>
					</tr>
					
				</table>
				<input type="submit" value="submit" class="btn">
				<a href="viewbook.jsp" class="btn">View Books</a>
			</form>
		</div>
	</main>
</body>
</html>