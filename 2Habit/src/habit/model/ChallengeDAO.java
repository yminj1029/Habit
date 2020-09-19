package habit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class ChallengeDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	// �ʱ�ȭ ��
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

	//ç���� �Խ��ǿ� ������ �Է��� �� �ִ�. 
	public int challengeInsert(ChallengeVO vo) {
		conn = getConnect();
		// MyBatis
		String SQL = "insert into challenge values(seq_num.nextval,?,?,?,?,?,?,?,?,?)";
		int cnt = -1;// -1=�������ǹ�
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, vo.getM_id());
			ps.setString(2, vo.getCh_name());
			ps.setInt(3, vo.getNum());
			ps.setString(4, vo.getStartdate());
			ps.setString(5, vo.getEnddate());
			ps.setString(6, vo.getCh_content());
			ps.setString(7, vo.getCh_file());
			ps.setString(8, vo.getH_day());
			ps.setString(9, vo.getAlarm());
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}

	//ç���� �Խ����� ������ ���� �� �� �ִ�!! : ç���� ���̵�� ȸ�����̵� �� ��ġ�ϸ� ������ ��!!
	
	public int ChallengeDelete(int ch_id, String m_id) {
		conn=getConnect();
		String SQL="delete from challenge where ch_id=?, m_id=?";
		int cnt=-1;
		try {
			ps=conn.prepareStatement(SQL);
			ps.setInt(1, ch_id);
			ps.setString(2, m_id);
			cnt=ps.executeUpdate();
		} catch (Exception e) {
		} finally {
			dbClose();
		}
		return cnt;
	}

	//ç���� �Խ��� ������ �����غ���!!!
	public int ChallengeUpdate(ChallengeVO vo) {
		conn=getConnect();
		String SQL = "update challenge set ch_name=?, num=?, startdate=?, enddate=?, ch_content=?, ch_file=? h_day=?, alarm=?, where ch_id=?, m_id=?";
		int cnt=-1;
		try {
			ps.setString(1, vo.getCh_name());
			ps.setInt(2, vo.getNum());
			ps.setString(3, vo.getStartdate());
			ps.setString(4, vo.getEnddate());
			ps.setString(5, vo.getCh_content());
			ps.setString(6, vo.getCh_file());
			ps.setString(7, vo.getH_day());
			ps.setString(8, vo.getAlarm());
			ps.setInt(9, vo.getCh_id());
			ps.setNString(10, vo.getM_id());
			
			
			cnt=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
	
	// ç���� �Խ����� ����Ʈ�� �̾Ƽ� �� �� �ְ� ����!!
	public ArrayList<ChallengeVO> ChallengeAllList() {
		ArrayList<ChallengeVO> list = new ArrayList<ChallengeVO>();
		conn = getConnect();
		String SQL="select * from challenge order by ch_id desc";
		try {
			ps=conn.prepareStatement(SQL);
			rs = ps.executeQuery();  //rs�� Ŀ��. Ŀ���� �ڷ� ��ĭ�� �̵��ذ��鼭 ������ ����, ������ ��������.
			while(rs.next()) {
				int ch_id = rs.getInt("ch_id");
				String ch_name = rs.getString("ch_name");
				int num = rs.getInt("num");
				String startdate = rs.getString("startdate");
				String enddate = rs.getString("enddate");
				String ch_content = rs.getString("ch_content");
				String ch_file = rs.getString("ch_file");
				String h_day = rs.getString("h_day");
				String alarm = rs.getString("alarm");
				ChallengeVO vo = new ChallengeVO(ch_id,ch_name,num,startdate,enddate,ch_content,ch_file, h_day, alarm); //vo�� ����!!!
				list.add(vo); //��̸���Ʈ�� ���!!!
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return list;
	}
	
	
	
}
