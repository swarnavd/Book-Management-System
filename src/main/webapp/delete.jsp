<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id1=request.getParameter("id");
int id=Integer.parseInt(id1);
String url="jdbc:mysql://localhost:3306/swarnav";
String user="swarnav";
String pass="swarnav";
String sql="delete from book_registration where id=?";

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,user,pass);
PreparedStatement st=con.prepareStatement(sql);
st.setInt(1,id);
int i=st.executeUpdate();
response.sendRedirect("viewbook.jsp");
%>
<%=id %>

</body>
</html>