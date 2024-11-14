package com.reistrationdao;
import java.sql.*;
public class RegistrationDao {
	String url="jdbc:mysql://localhost:3306/swarnav";
	String user="swarnav";
	String pass="swarnav";
	String sql="insert into book_registration(bookname,bookedition,price) values(?,?,?)";
	public boolean insertBook(String name, String edition, int price) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,user,pass);
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, name);
		st.setString(2, edition);
		st.setLong(3, price);
		int i=st.executeUpdate();
		if(i>0) {
			return true;
		}
		else {
			return false;
		}
		
	}
}
