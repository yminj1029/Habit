package habit.model;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class Member2DAO {
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

	// ȸ������!!
	public int member2Insert(Member2VO vo) {
		conn = getConnect();
		System.out.println(vo.getGender());
		System.out.println(vo.getPw());
		// MyBatis
		String SQL = "insert into member2 values(?,?,?,?,?,?,?,?,?,0)";
		int cnt = -1;// -1=�������ǹ�
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, vo.getM_id());
			ps.setString(2, vo.getNickname());
			ps.setString(3, vo.getPw());
			ps.setNString(4, vo.getName());
			ps.setString(5, vo.getTel());
			ps.setString(6, vo.getGender());
			ps.setString(7, vo.getJob());
			ps.setString(8, vo.getEmail());
			ps.setString(9, vo.getHabit());
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	
	 // ȸ�� ���� ����!! 
	 public int member2Update(Member2VO vo) { 
	 conn=getConnect();
	 String SQL ="update member2 set nickname=?, pw=?, name=?,  tel=?, gender=?, job=?, email=?, habit=? where m_id=?"; 
	 int cnt=-1; 
	 try { 
		 ps=conn.prepareStatement(SQL);
		 ps.setString(1, vo.getNickname()); 
		 ps.setString(2, vo.getPw()); 
		 ps.setString(3, vo.getName()); 
		 ps.setString(4, vo.getTel()); 
		 ps.setNString(5, vo.getGender());
		 ps.setString(6, vo.getJob()); 
		 ps.setString(7, vo.getEmail());
		 ps.setString(8, vo.getHabit());
		 ps.setString(9, vo.getM_id()); 
		 cnt=ps.executeUpdate();
		 } 
	 catch (Exception e) { e.printStackTrace(); 
	 }
	 finally{ 
		 dbClose(); 
		 } 
	 return cnt; 
	 }
	  

	
//	  // ȸ�� Ż��!! 
//	 public int member2Delete(String m_id, String pw) {
//	  conn=getConnect(); String SQL="delete from member2 where m_id=?, pw=?"; int
//	  cnt=-1; try { ps=conn.prepareStatement(SQL); ps.setString(1, m_id);
//	  ps.setString(2, pw); cnt=ps.executeUpdate(); } catch (Exception e) { }
//	  finally { dbClose(); } return cnt; }
	  

	  //ȸ�� ���� �ڱⲨ ����!! 
	 public Member2VO member2Content(String m_id) { 
		 Member2VO vo=null; 
		 conn=getConnect(); 
		 String SQL = "select * from member2 where m_id=?";
	  
	  try { 
		  ps=conn.prepareStatement(SQL); 
		  ps.setString(1, m_id);
		  System.out.println(m_id);
	  rs=ps.executeQuery();
	  
	  if(rs.next()) {
		  m_id=rs.getString("m_id"); 
		  String nickname=rs.getString("nickname"); 
		  String name=rs.getString("name"); 
		  String tel=rs.getString("tel");
		  String gender=rs.getString("gender");
		  String job=rs.getString("job"); 
		  String email=rs.getString("email");
		  String habit = rs.getString("habit");
		  int point = rs.getInt("point");
		  vo=new Member2VO(m_id, nickname, name, tel, gender, job, email, habit, point);
		  } 
	  } catch (Exception e) { e.printStackTrace(); 
	  }finally {
	  dbClose(); 
	  } 
	  return vo; 
	  }
	 

	// �α���
	public int member2Login(Member2VO vo) {
		int result = 0;
		try {
			System.out.println("dao�� �Ѿ��"+vo.getM_id());
			conn = getConnect();
			String sql = "select * from member2 where m_id=? and pw=?";

			ps = conn.prepareStatement(sql);

			ps.setString(1, vo.getM_id());
			ps.setString(2, vo.getPw());

			rs = ps.executeQuery();
			if (rs.next()) {
				if (rs.getString(3).equals(vo.getPw())) {
					result = 1; // ���̵� �ְ�, ��й�ȣ�� ���� ��� .����
				} else {
					// ���̵� ������ ��й�ȣ�� �ٸ����. ����
					result = 0;
				}

			} else {// ���̵� ���� ���. ����
				result = 0;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return result;
	}
	
	//���� ���� ����
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
