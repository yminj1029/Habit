package habit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ChallengeDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	// 초기화 블럭
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Connection getConnect() {
		String url = "jdbc:oracle:thin:@112.187.117.251:1521:XE";
		String user = "hv";
		String password = "hv";
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public void dbClose() {
		try {
			if (rs != null)
				rs.close();
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int challengeInsert(ChallengeVO vo) {
		conn = getConnect();
		// MyBatis
		String SQL = "insert into challenge values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		int cnt = -1;// -1=실패의의미
		try {
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, vo.getCh_id());
			ps.setString(2, vo.getM_id());
			ps.setString(3, vo.getCh_name());
			ps.setString(4, vo.getCh_category());
			ps.setInt(5, vo.getNum());
			ps.setString(6, vo.getStartdate());
			ps.setString(7, vo.getEnddate());
			ps.setString(8, vo.getCh_title());
			ps.setString(9, vo.getCh_content());
			ps.setString(10, vo.getCh_file());
			ps.setString(11, vo.getCh_result());
			ps.setString(12, vo.getNickname());
			ps.setString(13, vo.getAlarm());
			ps.setString(14, vo.getStatus());
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}

}
