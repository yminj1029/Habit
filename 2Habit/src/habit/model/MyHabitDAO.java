package habit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MyHabitDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	// 초기화 블럭
	public Connection getConnect() {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
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
			System.out.println("dao까지 접근?");
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
				System.out.println("sql이상");
				e.printStackTrace();
			} finally {
				dbClose();
			}
			return cnt;
		}
		
		//myhabit페이지의 습관내용. 
		public ArrayList<Member2VO> member2Mypage(String m_id) {

			ArrayList<Member2VO> list = new ArrayList<Member2VO>();
			String sql = "select mh.h_name, c.ch_name, mr.mr_result, cr.chr_result from my_habit mh, challenge c, my_result mr, challenge_result cr where  mh.m_id= ?";
			try {
				getConnect();
				ps = conn.prepareStatement(sql);
				ps.setString(1, m_id);
				rs = ps.executeQuery();
				while (rs.next()) {
					String h_name = rs.getString(1);
					String ch_name = rs.getString(2);
					String mr_result = rs.getString(3);
					String chr_result = rs.getString(4);

					Member2VO Vot = new Member2VO(h_name, ch_name, mr_result, chr_result);
					list.add(Vot);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
}
