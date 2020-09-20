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
			if(rs!=null) rs.close();
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
}
	
	public ArrayList<ChallengeResultVO> challengeResult() {

		ArrayList<ChallengeResultVO> list = new ArrayList<ChallengeResultVO>();
		try {
			getConnect();

			String sql = "select mid,mname,gender,tel,lv from member";

			ps = conn.prepareStatement(sql);

			rs = ps.executeQuery();
			while (rs.next()) {
				String mid = rs.getString(1);
				String mname = rs.getString(2);
				String gender = rs.getString(3);
				String tel = rs.getString(4);
				String lv = rs.getString(5);
				ChallengeResultVO vo = new ChallengeResultVO(ch_id, chm_id, prf_id, chr_date, chr_point, chr_result);
				list.add(vo);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;

	}

}
