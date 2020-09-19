package habit.model;

public class Member2VO {
	//속성을 만들자!!!!
	
	private String m_id; 
	private String pw; 
	private String name; 
	private String nickname; 
	private String tel; 
	private String gender;
	private String job; 
	private String email;
	private int point;
	
	
	public Member2VO() {
		super();
	}

	public Member2VO(String m_id, String name, String nickname, String tel, String gender, String job, String email,
			int point) {
		super();
		this.m_id = m_id;
		this.name = name;
		this.nickname = nickname;
		this.tel = tel;
		this.gender = gender;
		this.job = job;
		this.email = email;
		this.point = point;
	}

	public Member2VO(String m_id, String pw, String name, String nickname, String tel, String gender, String job,
			String email, int point) {
		super();
		this.m_id = m_id;
		this.pw = pw;
		this.name = name;
		this.nickname = nickname;
		this.tel = tel;
		this.gender = gender;
		this.job = job;
		this.email = email;
		this.point = point;
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
	
}
