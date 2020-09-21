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

	// 회원가입!!
	public int member2Insert(Member2VO vo) {
		conn = getConnect();
		// MyBatis
		String SQL = "insert into member2 values(?,?,?,?,?,?,?,?,?,?)";
		int cnt = -1;// -1=실패의의미
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, vo.getM_id());
			ps.setString(4, vo.getNickname());
			ps.setString(2, vo.getPw());
			ps.setString(3, vo.getName());
			ps.setString(5, vo.getTel());
			ps.setString(6, vo.getGender());
			ps.setString(7, vo.getJob());
			ps.setString(8, vo.getEmail());
			ps.setString(9, vo.getHabit());
			ps.setInt(10, vo.getPoint());
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	
	 // 회원 정보 수정!! 
	 public int member2Update(Member2VO vo) { conn=getConnect();
	 String SQL ="update member2 set pw=?, name=?, nickname=?, tel=?, job=?, email=?, habit=? where m_id=?, pw=?"; 
	 int cnt=-1; 
	 try { 
		 ps.setString(1, vo.getPw()); 
		 ps.setString(2, vo.getName()); 
		 ps.setString(3, vo.getNickname()); 
		 ps.setString(4, vo.getTel()); 
		 ps.setString(5, vo.getJob()); 
		 ps.setString(6, vo.getEmail());
		 ps.setString(6, vo.getHabit());
		 ps.setString(7, vo.getM_id()); 
		 ps.setString(8, vo.getPw());
		 cnt=ps.executeUpdate();
		 } 
	 catch (Exception e) { e.printStackTrace(); 
	 }
	 finally{ 
		 dbClose(); 
		 } 
	 return cnt; 
	 }
	  

	/*
	 * // 회원 탈퇴!! public int member2Delete(String m_id, String pw) {
	 * conn=getConnect(); String SQL="delete from member2 where m_id=?, pw=?"; int
	 * cnt=-1; try { ps=conn.prepareStatement(SQL); ps.setString(1, m_id);
	 * ps.setString(2, pw); cnt=ps.executeUpdate(); } catch (Exception e) { }
	 * finally { dbClose(); } return cnt; }
	 * 

	 * //회원 정보 자기꺼 보기!! public Member2VO member2Content(String m_id) { Member2VO
	 * vo=null; conn=getConnect(); String SQL = "select * from tblMem where m_id=?";
	 * 
	 * try { ps=conn.prepareStatement(SQL); ps.setString(1, m_id);
	 * rs=ps.executeQuery(); if(rs.next()) { m_id=rs.getString("m_id"); String
	 * name=rs.getString("name"); String nickname=rs.getString("nickname"); String
	 * tel=rs.getString("tel"); String gender=rs.getString("gender"); String
	 * job=rs.getString("job"); String email=rs.getString("email"); int
	 * point=rs.getInt("point"); vo=new Member2VO(m_id, name, nickname, tel, gender,
	 * job, email, point); } } catch (Exception e) { e.printStackTrace(); }finally {
	 * dbClose(); } return vo; }
	 */

	// 로그인
	public Member2VO member2Login(String mid, String mpw) {
		Member2VO user = null;
		try {
			getConnect();
			String sql = "select m_id, pw, name, nickname, tel, gender, job, email, point, habit from member2 where mid=? and pw=?";

			ps = conn.prepareStatement(sql);

			ps.setString(1, mid);
			ps.setString(2, mpw);

			rs = ps.executeQuery();
			if (rs.next()) {
				String m_id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String nickname = rs.getString(4);
				String tel = rs.getString(5);
				String gender = rs.getString(6);
				String job = rs.getString(7);
				String email = rs.getString(8);
				int point = rs.getInt(9);
				String habit = rs.getString(10);
				user = new Member2VO(m_id, pw, name, nickname, tel, gender, job, email, point, habit);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return user;
	}
	
	//나의 습관 보기
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
