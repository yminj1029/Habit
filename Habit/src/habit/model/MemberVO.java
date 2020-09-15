package habit.model;

public class MemberVO {
	//속성을 만들자!!!!
	
	private String u_id; 
	private String pw; 
	private String u_name; 
	private String nickname; 
	private String phone; 
	private String gender;
	private String profession; 
	
	
	public MemberVO(String u_id, String pw, String u_name, String nickname, String phone, String gender,
			String profession) {
		super();
		this.u_id = u_id;
		this.pw = pw;
		this.u_name = u_name;
		this.nickname = nickname;
		this.phone = phone;
		this.gender = gender;
		this.profession = profession;
	}


	public String getU_id() {
		return u_id;
	}


	public void setU_id(String u_id) {
		this.u_id = u_id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getU_name() {
		return u_name;
	}


	public void setU_name(String u_name) {
		this.u_name = u_name;
	}


	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getProfession() {
		return profession;
	}


	public void setProfession(String profession) {
		this.profession = profession;
	}


	
}
