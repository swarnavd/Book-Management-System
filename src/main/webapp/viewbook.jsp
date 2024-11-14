<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Book</title>
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
	<table class="view-table">
		
	<%
	String url="jdbc:mysql://localhost:3306/swarnav";
	String user="swarnav";
	String pass="swarnav";
	String sql="select * from book_registration";
	String message="";
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,user,pass);
	PreparedStatement st=con.prepareStatement(sql);
	ResultSet rs=st.executeQuery();
	%>
	
	<%
	if(rs.next()){
		%>
		<tr>
			<th>Book Id</th>
		
			<th>Book name</th>
		
			<th>Book edition</th>
		
			<th>Book price</th>
		</tr>
		<%
		 do {

             // successfully in. do the right things.
			 int id=rs.getInt("id");
				String name=rs.getString("bookname");
				String edition = rs.getString("bookedition");
		        int price = rs.getInt("price");
		        %>
		        <tr>
	 	<td><%= id %></td>
        <td><%= name %></td>
        <td><%= edition %></td>
        <td><%= price %></td>
        <td><a href="delete.jsp?id=<%=id%>">Delete</a></td>
        <td><a href="editform.jsp?id=<%=id%>">Edit</a></td>
     </tr>
     <%

         } while (rs.next());
		 %>
		  
     <%
	}
	else{
		message="Sorry no book found!!!!";
		%>
		<p class="message"><%=message %></p>
		<%
	}
	%>	
	
	</table>
</body>
</html>