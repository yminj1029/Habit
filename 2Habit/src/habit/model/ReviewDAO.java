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
	
	//전체 리뷰보기
	public ArrayList<ReviewVO> reviewboard() {

		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		conn = getConnect();
		String sql = "select * from review order by r_id desc";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				int r_id= rs.getInt("r_id");
				String m_id = rs.getString("m_id");
				String r_title = rs.getString("r_title");
				String r_content = rs.getString("r_content");
				String r_date = rs.getString("r_date");
				ReviewVO vo = new ReviewVO(r_id, m_id, r_title, r_content, r_date);
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
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
	public int reviewInsert(ReviewVO vo) {
		conn = getConnect();
		// MyBatis
		String SQL = "insert into review values(REVIEW_SEQ.nextval,?,?,?,?,sysdate,?,?)";
		int cnt = -1;// -1=실패의의미
		try {
			ps = conn.prepareStatement(SQL);
			ps.setInt(1, vo.getCh_id());
			ps.setString(2, vo.getM_id());
			ps.setString(3, vo.getR_title());
			ps.setString(4, vo.getR_content());
			ps.setInt(5, 50);
			ps.setString(6, vo.getR_file());
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}

	//후기자세히보기
	 public ReviewVO reviewContent(int r_id) { 
		 ReviewVO vo=null; 
		 conn=getConnect(); 
		 String SQL = "select * from review where r_id=?";
	  
	  try { 
		  ps=conn.prepareStatement(SQL); 
		  ps.setInt(1, r_id);
	  rs=ps.executeQuery();
	  
	  if(rs.next()) {
		  r_id=rs.getInt("r_id"); 
		  int ch_id = rs.getInt("ch_id");
		  String m_id=rs.getString("m_id"); 
		  String r_title=rs.getString("r_title"); 
		  String r_content=rs.getString("r_content");
		  String r_date=rs.getString("r_date");
		  int r_point=rs.getInt("r_point"); 
		  String r_file=rs.getString("r_file");
		  vo=new ReviewVO(r_id, ch_id, m_id, r_title, r_content, r_date, r_point, r_file);
		  } 
	  } catch (Exception e) { e.printStackTrace(); 
	  }finally {
	  dbClose(); 
	  } 
	  return vo; 
	  }


	 //자기가 쓴 후기 목록 보기, 클릭하면 자세한 내용 나오기 : myinfo.jsp에 나와야함!
	 
	 public ArrayList<ReviewVO> myReview(String m_id) {
			ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
			conn = getConnect();
			System.out.println("sql?");
			String sql = "select * from review where m_id=? order by r_id desc";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, m_id);
				rs = ps.executeQuery();
				while (rs.next()) {
					int r_id= rs.getInt("r_id");
				    m_id = rs.getString("m_id");
					String r_title = rs.getString("r_title");
					String r_content = rs.getString("r_content");
					String r_date = rs.getString("r_date");
					int r_point=rs.getInt("r_point"); 
					String r_file=rs.getString("r_file");
					ReviewVO vo = new ReviewVO(r_id, m_id, r_title, r_content, r_date, r_point, r_file);
					list.add(vo);
				}
			} catch (SQLException e) {
				System.out.println("sql문장 살펴보기");
				e.printStackTrace();
			}
			return list;
		}
		
	 
}
