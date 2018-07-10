package conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class conn {
	public Connection getCon()
	{
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://DESKTOP-KE821RR\\QW:1433;DatabaseName = BigWork";
			String user = "sa";
			String password = "wkj6622531";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.print(conn.getMetaData().getURL());
			return conn;
		}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
	}
}
