package habit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MyResultDAO {

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
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
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

	//나의 습관 보기
	public ArrayList<MyResultVO> myHabitFront(String m_id) {

		ArrayList<MyResultVO> list = new ArrayList<MyResultVO>();
		String sql = "select mr_date, mr_result from my_result where m_id= ?";
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, m_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				String mr_date = rs.getString(1);
				String mr_result = rs.getString(2);

				MyResultVO vomr = new MyResultVO(mr_date, mr_result);
				list.add(vomr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		
	}
		   public int myResult(int h_id, String m_id) {
				int cnt = 0;
				try {
					System.out.println("여기 ~ ~");
					conn = getConnect();
					String sql1 = "insert into my_result values(?,my_result_seq.nextval,?,sysdate,?,?)";
					ps = conn.prepareStatement(sql1);
					 
					ps.setInt(1, h_id); // pw
					ps.setString(2, m_id); // 핸드폰
					ps.setString(3, "달성");
					ps.setInt(4, 10);
					cnt = ps.executeUpdate();
				} catch (SQLException e) {
					e.printStackTrace();
				}

				return cnt;
			}
		

	
	
	
	
	
}
