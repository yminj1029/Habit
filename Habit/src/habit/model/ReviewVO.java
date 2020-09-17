package habit.model;

public class ReviewVO {
	//속성을 만들자!!!!
	
	private int r_id; 
	private int ch_id;
	private String m_id; 
	private String r_date;
	private String r_title;
	private String r_content;
	private String r_file;
	private String r_comment;
	private String nickname;
	private String ch_name;
	private int point;
	private int status;
	
	public ReviewVO(int r_id, int ch_id, String m_id, String r_date, String r_title, String r_content, String r_file,
			String r_comment, String nickname, String ch_name, int point, int status) {
		super();
		this.r_id = r_id;
		this.ch_id = ch_id;
		this.m_id = m_id;
		this.r_date = r_date;
		this.r_title = r_title;
		this.r_content = r_content;
		this.r_file = r_file;
		this.r_comment = r_comment;
		this.nickname = nickname;
		this.ch_name = ch_name;
		this.point = point;
		this.status = status;
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
	public String getR_date() {
		return r_date;
	}
	public void setR_date(String r_date) {
		this.r_date = r_date;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_file() {
		return r_file;
	}
	public void setR_file(String r_file) {
		this.r_file = r_file;
	}
	public String getR_comment() {
		return r_comment;
	}
	public void setR_comment(String r_comment) {
		this.r_comment = r_comment;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getCh_name() {
		return ch_name;
	}
	public void setCh_name(String ch_name) {
		this.ch_name = ch_name;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
	
}
