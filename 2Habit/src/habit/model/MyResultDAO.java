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
		} finally {
			dbClose();
		}
		return list;
		
	}
//나의 결과가 들어옴
	public int myResult(int h_id, String m_id) {
				int cnt = 0;
				try {
					System.out.println("여기 ~ ~");
					conn = getConnect();
					String sql1= "select * from my_result where h_id=? and m_id=? and to_char(mr_date,'YYYYMMDD')=to_char(sysdate,'YYYYMMDD')";
					ps = conn.prepareStatement(sql1);
					ps.setInt(1, h_id);
					ps.setString(2, m_id);
					rs = ps.executeQuery();
					if(!rs.next()) {
						sql1 = "insert into my_result values(?,my_result_seq.nextval,?,sysdate,?,?)";
						ps = conn.prepareStatement(sql1);
						 
						ps.setInt(1, h_id); // pw
						ps.setString(2, m_id); // 핸드폰
						ps.setString(3, "달성");
						ps.setInt(4, 500);
						cnt = ps.executeUpdate();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					dbClose();
				}

				return cnt;
			}
		
   
		   //현재까지 축척된 포인트
		   public int Point(String m_id, String mr_date) {
			   int point = 0;
			   String sql = "select * from my_result where m_id=? and to_char(mr_date, 'YYYYMMDD')<=?";
			   try {
				   conn= getConnect();
					ps = conn.prepareStatement(sql);
					ps.setString(1, m_id);
					ps.setString(2, mr_date);
					rs = ps.executeQuery();
					
					while (rs.next()) {
						point += 5;
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					dbClose();
				}
			   
			return point;
		   }
		   
		 
		   
	
		   public int Bunmo(String m_id) {
			   int bunmo =0;
			   String sql = "select distinct h_id from my_result where m_id=?";
			   try {
				   conn= getConnect();
					ps = conn.prepareStatement(sql);
					ps.setString(1, m_id);
					rs = ps.executeQuery();
					
					while (rs.next()) {
						bunmo++;
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					dbClose();
				}
			   
			return bunmo;
		   }
		   
		   public int Bunja(String m_id, String mr_date) {
			   int bunja =0;
			   String sql = "select * from my_result where m_id=? and to_char(mr_date, 'YYYYMMDD')=?";
			   try {
				   conn= getConnect();
					ps = conn.prepareStatement(sql);
					ps.setString(1, m_id);
					ps.setString(2, mr_date);
					rs = ps.executeQuery();
					
					while (rs.next()) {
						bunja++;
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					dbClose();
				}
			   
			return bunja;
		   }
	
		  public int percent(int bunja, int bunmo) {
			int percent = bunja/bunmo*100;
			  
			  return percent;
			  
		  }
		  
		 
}
