package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.essary;
import model.stuInfo;

public class essaryService {
	private Connection conn;
	private PreparedStatement pstmt;

	public essaryService() {
		conn = new conn.conn().getCon();
	}
	public  List queryessary() {
		List essarys = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from essary");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				essary ess = new essary();
				ess.setEssary(rs.getString(3));
				ess.setEssaryName(rs.getString(1));
				ess.setEssaryDate(rs.getDate(2).toString());
				ess.setID(rs.getInt(4));
				ess.setEssaryContent(rs.getString(5));
				essarys.add(ess);

			}
			return essarys;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}
	public boolean updateessary(essary ess) {

		try {
			pstmt = conn
					.prepareStatement("update essary set essaryName=? , essaryDate=? , essary=? ,essaryContent=?   where ID=?");
			pstmt.setString(1, ess.getEssaryName());
			pstmt.setString(2, ess.getEssaryDate());
			pstmt.setString(3, ess.getEssary());
			pstmt.setString(4,ess.getEssaryContent());
			pstmt.setInt(5, ess.getID());
			
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	public boolean addessary(essary ess) {
		try {
			pstmt = conn.prepareStatement("insert into essary"
					+ "(essaryName,essaryDate,essary,essaryContent) "
					+ "values(?,?,?,?)");
			pstmt.setString(1, ess.getEssaryName());
			pstmt.setString(2, ess.getEssaryDate());
			pstmt.setString(3, ess.getEssary());
			pstmt.setString(4, ess.getEssaryContent());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}
	public essary queryEssarybyID(int id) {
		// List stus = new ArrayList();
		try {
			pstmt = conn
					.prepareStatement("select * from essary where ID=?");
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				essary ess = new essary();
				ess.setEssaryName(rs.getString(1));
				ess.setEssaryDate(rs.getDate(2).toString());
				ess.setEssary(rs.getString(3));
				ess.setID(rs.getInt(4));
				ess.setEssaryContent(rs.getString(5));
				// stus.add(stu);
				return ess;

			}
			return null;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}
	public Boolean deleteessary(int id) {

		try {
			pstmt = conn.prepareStatement("delete from essary where ID=?");
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			e.getStackTrace();
			return false;
		}

	}
	public essary queryStubyNicheng(String essary) {
		// List stus = new ArrayList();
		try {
			pstmt = conn
					.prepareStatement("select * from essary where essary=?");
			pstmt.setString(1, essary);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				essary ess = new essary();
				ess.setEssaryName(rs.getString(1));
				ess.setEssaryDate(rs.getDate(2).toString());
				ess.setEssary(rs.getString(3));
				ess.setID(rs.getInt(4));
				return ess;

			}
			return null;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

}
