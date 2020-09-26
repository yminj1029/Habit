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

	//챌린지 게시판에 내용을 입력할 수 있다. 
	public int challengeInsert(ChallengeVO vo) {
		conn = getConnect();
		// MyBatis
		System.out.println("안녕!" +vo.getStartdate());
		String SQL = "insert into challenge values(challenge_seq.nextval,?,?,?,?,?,?,?,?,?)";
		int cnt = -1;// -1=실패의의미
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

	//챌린지 게시판의 내용을 삭제 할 수 있다!! : 챌린지 아이디와 회원아이디가 다 일치하면 삭제가 됨!!
	
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

	//챌린지 게시판 내용을 수정해보자!!!
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
	
	// challenge 검색기능
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
	
	
	// 챌린지 게시판의 리스트를 뽑아서 볼 수 있게 하자!!
	public ArrayList<ChallengeVO> ChallengeAllList() {
		ArrayList<ChallengeVO> list = new ArrayList<ChallengeVO>();
		conn = getConnect();
		String SQL="select * from challenge order by ch_id desc";
		try {
			ps=conn.prepareStatement(SQL);
			rs = ps.executeQuery();  //rs는 커서. 커서는 뒤로 한칸씩 이동해가면서 있으면 오고, 없으면 빠져나옴.
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
				ChallengeVO vo = new ChallengeVO(ch_id,m_id,ch_name,num, ch_day, startdate,enddate,ch_content,alarm, ch_file); //vo로 묶고!!!
				list.add(vo); //어레이리스트에 담고!!!
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("이상이 있어요");
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
