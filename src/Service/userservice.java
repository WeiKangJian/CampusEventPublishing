package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import model.userTable;

public class userservice {
	private Connection conn;
	private PreparedStatement pstmt;
	public userservice(){
		conn = new conn.conn().getCon();
	}
	public boolean regestor(userTable user){
		try {
			pstmt = conn.prepareStatement("insert into usertable(username,password) values(?,?)");
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
	       if(pstmt.execute())
				return true;
	       else
	    	   return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print(e);
			return false;
		}
	}
	public boolean valiuser(userTable user){
		try {
			pstmt = conn.prepareStatement("select * from usertable where username=? and password=?");
			pstmt.setString(1,user.getUsername());
			pstmt.setString(2, user.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
				return true;
			else
				return false;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
}
