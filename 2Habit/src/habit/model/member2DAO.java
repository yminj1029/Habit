package habit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class member2DAO {
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
	
	public int member2Insert(Member2VO vo) {
		conn = getConnect();
		// MyBatis
		String SQL = "insert into member2 values(?,?,?,?,?,?,?,?,0,?)";
		int cnt = -1;// -1=실패의의미
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, vo.getM_id());
			ps.setString(2, vo.getPw());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getNickname());
			ps.setString(5, vo.getTel());
			ps.setString(6, vo.getGender());
			ps.setString(7, vo.getJob());
			ps.setString(8, vo.getEmail());
			ps.setString(9, vo.getCategory());
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
	
	public int member2Delete(String M_id, String pw) {
		conn=getConnect();
		String SQL="delete from member2 where num=?, pw=?";
		int cnt=-1;
		try {
			ps=conn.prepareStatement(SQL);
			ps.setString(1, M_id);
			ps.setString(2, pw);
			cnt=ps.executeUpdate();
		} catch (Exception e) {
		} finally {
			dbClose();
		}
		return cnt;
	}
	
	public int member2Update(Member2VO vo) {
		conn=getConnect();
		String SQL = "update member2 set pw=?, name=?, nickname=?, tel=?, job=?, email=?, category=? where m_id=?, pw=?";
		int cnt=-1;
		try {
			ps.setString(1, vo.getM_id());
			ps.setString(2, vo.getPw());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getNickname());
			ps.setString(5, vo.getTel());
			ps.setString(6, vo.getGender());
			ps.setString(7, vo.getJob());
			ps.setString(8, vo.getEmail());
			ps.setInt(9, vo.getPoint());
			ps.setString(10, vo.getCategory());
			cnt=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
	
	public Member2VO member2Content(String m_id) {
		Member2VO vo=null;
		conn=getConnect();
		String SQL = "select * from tblMem where m_id=?";
		
		try {
			ps=conn.prepareStatement(SQL);
			ps.setString(1, m_id);
			rs=ps.executeQuery();
			if(rs.next()) {
				 m_id=rs.getString("m_id");
		         String name=rs.getString("name");
		         String nickname=rs.getString("nickname");
		         String tel=rs.getString("tel");
		         String gender=rs.getString("gender");
		         String job=rs.getString("job");
		         String email=rs.getString("email");
		         int point=rs.getInt("point");
		         String category=rs.getString("category");
		         vo=new Member2VO(m_id, name, nickname, tel, gender, job, email, point, category);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return vo;
	}
	
	}
