package habit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MyHabitDAO {

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
	
		//내습관생성하기
		public int myhabitProduce(String m_id, String h_name, String h_day, String h_startdate, String h_enddate, String h_alarm) {
			int cnt = 0;
			try {
				getConnect();
				String sql = "insert into my_habit values(MY_HABIT_SEQ.nextval,?,?,?,?,?,?)";
				ps = conn.prepareStatement(sql);
				ps.setString(1, m_id);
				ps.setString(2, h_name);
				ps.setString(3, h_day);
				ps.setString(4, h_startdate);
				ps.setString(5, h_enddate);
				ps.setString(6, h_alarm);

				cnt = ps.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				dbClose();
			}
			return cnt;
		}
}
