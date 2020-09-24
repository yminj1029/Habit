package habit.model;

public class Member2VO {
	//속성을 만들자!!!!
	
	private String m_id; 
	private String nickname; 
	private String pw; 
	private String name; 
	private String tel; 
	private String gender;
	private String job; 
	private String email;
	private String habit;
	private int point;
	
	private String h_name;
	private String ch_name;
	private String mr_result;
	private String chr_result;
	
	
	
	public Member2VO(String m_id, String nickname, String name, String tel, String gender, String job, String email,
			String habit, int point) {
		super();
		this.m_id = m_id;
		this.nickname = nickname;
		this.name = name;
		this.tel = tel;
		this.gender = gender;
		this.job = job;
		this.email = email;
		this.habit = habit;
		this.point = point;
	}


	public Member2VO(String m_id, String nickname, String pw, String name, String tel, String gender, String job,
			String email, String habit, int point) {
		super();
		this.m_id = m_id;
		this.nickname = nickname;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.gender = gender;
		this.job = job;
		this.email = email;
		this.habit = habit;
		this.point = point;
	}


	public Member2VO(String m_id, String nickname, String name, String tel, String gender, String job, String email,
			int point) {
		super();
		this.m_id = m_id;
		this.nickname = nickname;
		this.name = name;
		this.tel = tel;
		this.gender = gender;
		this.job = job;
		this.email = email;
		this.point = point;
	}

	public Member2VO(String m_id, String pw) {
		super();
		this.m_id = m_id;
		this.pw = pw;
	}

	public Member2VO(String m_id, String name, String nickname, String tel, String gender, String email) {
		this.m_id = m_id;
		this.name = name;
		this.nickname = nickname;
		this.tel = tel;
		this.gender = gender;
		this.email = email;
	}

	

	public Member2VO(String h_name, String ch_name, String mr_result, String chr_result) {
		super();
		this.h_name = h_name;
		this.ch_name = ch_name;
		this.mr_result = mr_result;
		this.chr_result = chr_result;
	}

	public Member2VO() {
	}

	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getHabit() {
		return habit;
	}
	public void setHabit(String habit) {
		this.habit = habit;
	}

	public String getMr_result() {
		return mr_result;
	}

	public void setMr_result(String mr_result) {
		this.mr_result = mr_result;
	}

	public String getChr_result() {
		return chr_result;
	}

	public void setChr_result(String chr_result) {
		this.chr_result = chr_result;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public String getCh_name() {
		return ch_name;
	}

	public void setCh_name(String ch_name) {
		this.ch_name = ch_name;
	}
	
	
	
	
	
}
