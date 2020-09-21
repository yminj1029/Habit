package habit.model;

public class MyResultVO {
	//속성을 만들자!!!!
	
	private int r_id; 
	private int ch_id; 
	private String m_id; 
	private int r_title; 
	private String r_date;
	private String r_file;
	private int r_point;
	private String nickname;
	private String r_content;
	
	
	public MyResultVO() {
	}

	public MyResultVO(int r_id, int ch_id, String m_id, int r_title, String r_date, String r_file, int r_point) {
		this.r_id = r_id;
		this.ch_id = ch_id;
		this.m_id = m_id;
		this.r_title = r_title;
		this.r_date = r_date;
		this.r_file = r_file;
		this.r_point = r_point;
	}

	public int getR_id() {
		return r_id;
	}

	public void setR_id(int r_id) {
		this.r_id = r_id;
	}

	public int getCh_id() {
		return ch_id;
	}

	public void setCh_id(int ch_id) {
		this.ch_id = ch_id;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getR_title() {
		return r_title;
	}

	public void setR_title(int r_title) {
		this.r_title = r_title;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

	public String getR_file() {
		return r_file;
	}

	public void setR_file(String r_file) {
		this.r_file = r_file;
	}

	public int getR_point() {
		return r_point;
	}

	public void setR_point(int r_point) {
		this.r_point = r_point;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	

	
	
	
}
