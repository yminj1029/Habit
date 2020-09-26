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

	//ç���� �Խ��ǿ� ������ �Է��� �� �ִ�. 
	public int challengeInsert(ChallengeVO vo) {
		conn = getConnect();
		// MyBatis
		System.out.println("�ȳ�!" +vo.getStartdate());
		String SQL = "insert into challenge values(challenge_seq.nextval,?,?,?,?,?,?,?,?,?)";
		int cnt = -1;// -1=�������ǹ�
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, vo.getM_id());
			ps.setString(2, vo.getCh_name());
			ps.setInt(3, vo.getNum());
			ps.setString(4, vo.getCh_day());
			ps.setString(5, vo.getStartdate());
			ps.setString(6, vo.getEnddate());
			ps.setString(7, vo.getCh_content());
			ps.setString(8, vo.getAlarm());
			ps.setString(9, vo.getCh_file());
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("sql");
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
			ps.setString(7, vo.getCh_day());
			ps.setString(8, vo.getAlarm());
			ps.setInt(9, vo.getCh_id());
			ps.setString(10, vo.getM_id());
			
			
			cnt=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
	
	// challenge �˻����
	public ArrayList<ChallengeVO> challengeSeach(String search) {

		ArrayList<ChallengeVO> list = new ArrayList<ChallengeVO>();
		String sql = "select * from challenge where ch_name=?";
		try {
			getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + search + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				String ch_name = rs.getString(1);
				int num = rs.getInt(2);
				String startdate = rs.getString(3);
				String enddate = rs.getString(4);
				String ch_content = rs.getString(5);
				String alarm = rs.getString(6);

				ChallengeVO voc = new ChallengeVO();
				list.add(voc);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
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
				String m_id = rs.getString("m_id");
				String ch_name = rs.getString("ch_name");
				int num = rs.getInt("num");
				String ch_day = rs.getString("ch_day");
				String startdate = rs.getString("startdate");
				String enddate = rs.getString("enddate");
				String ch_content = rs.getString("ch_content");
				String alarm = rs.getString("alarm");
				String ch_file = rs.getString("ch_file");
				ChallengeVO vo = new ChallengeVO(ch_id,m_id,ch_name,num, ch_day, startdate,enddate,ch_content,alarm, ch_file); //vo�� ����!!!
				list.add(vo); //��̸���Ʈ�� ���!!!
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("�̻��� �־��");
		}finally {
			dbClose();
		}
		return list;
	}


	 public ChallengeVO challengeContent(int ch_id) { 
		 ChallengeVO vo=null; 
		 conn=getConnect(); 
		 String SQL = "select * from challenge where ch_id=?";
	  
	  try { 
		  ps=conn.prepareStatement(SQL); 
		  ps.setInt(1, ch_id);
	  rs=ps.executeQuery();
	  
	  if(rs.next()) {
		  ch_id = rs.getInt("ch_id");
		  String m_id=rs.getString("m_id"); 
		  String ch_name=rs.getString("ch_name"); 
		  int num=rs.getInt("num");
		  String ch_day=rs.getString("ch_day");
		  String startdate=rs.getString("startdate");
		  String enddate=rs.getString("enddate");
		  String ch_content=rs.getString("ch_content");
		  String ch_file=rs.getString("ch_file");
		  vo=new ChallengeVO(ch_id, m_id, ch_name, num, ch_day, startdate, enddate, ch_content, ch_file);
		  } 
	  } catch (Exception e) { e.printStackTrace(); 
	  }finally {
	  dbClose(); 
	  } 
	  return vo; 
	  }
	
	
}
