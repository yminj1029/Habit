package habit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class ChallengeResultDAO {

		private Connection conn;
		private PreparedStatement ps;
		private ResultSet rs;

		// 초기화 블럭
		public Connection getConnect() {
			String url = "jdbc:oracle:thin:@112.187.117.251:1521:XE";
			String user = "hv";
			String password = "hv";
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
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

		public ArrayList<ChallengeResultVO> challengeResult(Member2VO vocm) {
			vocm = new Member2VO();
			ArrayList<ChallengeResultVO> list = new ArrayList<ChallengeResultVO>();
			String sql = "select c.ch_name, c.startdate, c.enddate, cr.chr_result"
					+ "from challenge c, challenge_result cr where c.m_id=?";
			try {
				getConnect();
				ps = conn.prepareStatement(sql);
				ps.setString(1, vocm.getM_id());
				rs = ps.executeQuery();
				while (rs.next()) {
					String ch_name = rs.getString(1);
					String startdate = rs.getString(2);
					String enddate = rs.getString(3);
					String chr_result = rs.getString(4);

					ChallengeResultVO Vot = new ChallengeResultVO(ch_name, startdate, enddate, chr_result);
					list.add(Vot);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;

		}

}
