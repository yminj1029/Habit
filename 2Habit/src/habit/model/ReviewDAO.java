package habit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReviewDAO {

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
	//후기 검색기능
	public ArrayList<ChallengeVO> challengeSeach(String search) {

		ArrayList<ChallengeVO> list = new ArrayList<ChallengeVO>();
		String sql = "select r.r_name, m.nickname, r.r_date, r.content from review r, member2 m where r_name=?";
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + search + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				String r_name = rs.getString(1);
				String nickname = rs.getString(2);
				String r_date = rs.getString(3);
				String r_content = rs.getString(4);

				ChallengeVO voc = new ChallengeVO();
				list.add(voc);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	// 후기작성
	public int reviewInsert(String m_id, int r_point, String r_file) {
		ReviewVO vor = new ReviewVO();
		conn = getConnect();
		// MyBatis
		String SQL = "insert into re values(REVIEW_SEQ.nextval,CHALLENGE_SEQ,?,?,?,?)";
		int cnt = -1;// -1=실패의의미
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, vor.getM_id());
			ps.setString(2, vor.getR_date());
			ps.setInt(3, vor.getR_point());
			ps.setString(4, vor.getR_file());
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}


}
