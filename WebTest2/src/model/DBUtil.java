package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class DBUtil {
	public static ResultSet findUser(Connection con, String id) {
		String sqlSt = "SELECT password FROM parent WHERE id=";

		Statement st;
		try {
			st = con.createStatement();

			if (st.execute(sqlSt + "'" + id + "'")) {
				return st.getResultSet();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public static ResultSet findChild(Connection con, String id) {
		String sqlSt = "SELECT password FROM child WHERE id=";

		Statement st;
		try {
			st = con.createStatement();

			if (st.execute(sqlSt + "'" + id + "'")) {
				return st.getResultSet();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public static void joinUser(Connection con, String name, String id, String password, String birth, String phone)
			throws SQLException {
		PreparedStatement pstmt = null;
		try {
			con.setAutoCommit(false);

			pstmt = con.prepareStatement("INSERT INTO parent VALUES( ?, ?, ?, ?, ?)");
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, password);
			pstmt.setString(4, birth);
			pstmt.setString(5, phone);

			pstmt.executeUpdate();

			con.commit();

			con.setAutoCommit(true);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}

	public static void joinChild(Connection con, String name, String id, String parentId, String password, String birth)
			throws SQLException {
		PreparedStatement pstmt = null;
		try {
			con.setAutoCommit(false);

			pstmt = con.prepareStatement("INSERT INTO child VALUES( ?, ?, ?, ?, ?)");
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, parentId);
			pstmt.setString(4, password);
			pstmt.setString(5, birth);

			pstmt.executeUpdate();

			con.commit();

			con.setAutoCommit(true);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}

	public static void saveBoard(Connection con, String name, String parentId, String first, String second,
			String third, String fourth, String fifth, String sixth, String seventh, String eighth, String nineth,
			String firstText, String secondText, String thirdText, String fourthText, String fifthText,
			String sixthText, String seventhText, String eighthText, String ninethText) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			con.setAutoCommit(false);

			pstmt = con.prepareStatement(
					"INSERT INTO board VALUES( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			pstmt.setInt(1, 0);
			pstmt.setString(2, name);
			pstmt.setString(3, parentId);
			pstmt.setString(4, first);
			pstmt.setString(5, second);
			pstmt.setString(6, third);
			pstmt.setString(7, fourth);
			pstmt.setString(8, fifth);
			pstmt.setString(9, sixth);
			pstmt.setString(10, seventh);
			pstmt.setString(11, eighth);
			pstmt.setString(12, nineth);
			pstmt.setString(13, firstText);
			pstmt.setString(14, secondText);
			pstmt.setString(15, thirdText);
			pstmt.setString(16, fourthText);
			pstmt.setString(17, fifthText);
			pstmt.setString(18, sixthText);
			pstmt.setString(19, seventhText);
			pstmt.setString(20, eighthText);
			pstmt.setString(21, ninethText);

			pstmt.executeUpdate();

			con.commit();

			con.setAutoCommit(true);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}

	public static ResultSet correctUser(Connection conn, String id) {
		// TODO Auto-generated method stub
		String sqlSt = "SELECT password, name, birth, phone FROM parent WHERE id=";
		Statement st;
		try {
			st = conn.createStatement();

			if (st.execute(sqlSt + "'" + id + "'")) {
				return st.getResultSet();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public static ResultSet findText(Connection conn, String text) {
		String sqlSt = "select * from symbol where symbol_name=";
		Statement st;
		try {
			st = conn.createStatement();

			if (st.execute(sqlSt + "'" + text + "'")) {
				return st.getResultSet();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;

	}

	public static void insertResult(Connection con, String childId, int boardId, int one, int two, int three,
			int four, int five, int six, int seven, int eight, int nine) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			con.setAutoCommit(false);

			pstmt = con.prepareStatement("INSERT INTO result VALUES( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			pstmt.setInt(1, 0);
			pstmt.setString(2, childId);
			pstmt.setInt(3, boardId);
			pstmt.setInt(4, one);
			pstmt.setInt(5, two);
			pstmt.setInt(6, three);
			pstmt.setInt(7, four);
			pstmt.setInt(8, five);
			pstmt.setInt(9, six);
			pstmt.setInt(10, seven);
			pstmt.setInt(11, eight);
			pstmt.setInt(12, nine);

			pstmt.executeUpdate();

			con.commit();

			con.setAutoCommit(true);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}

}