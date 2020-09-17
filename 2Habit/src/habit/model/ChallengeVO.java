package habit.model;

public class ChallengeVO {
	//속성을 만들자!!!!
	
	private int ch_id; 
	private String m_id; 
	private String ch_name; 
	private String ch_category; 
	private int num; 
	private String startdate;
	private String enddate;
	private String ch_title;
	private String ch_content;
	private String ch_file;
	private String ch_result;
	private String nickname;
	private String alarm;
	private String status;
	
	public ChallengeVO(int ch_id, String m_id , String ch_name, String ch_category, int num, String startdate,
			String enddate, String ch_title, String ch_content, String ch_file, String ch_result, String nickname,
			String alarm, String status) {
		super();
		this.ch_id = ch_id;
		this.m_id = m_id;
		this.ch_name = ch_name;
		this.ch_category = ch_category;
		this.num = num;
		this.startdate = startdate;
		this.enddate = enddate;
		this.ch_title = ch_title;
		this.ch_content = ch_content;
		this.ch_file = ch_file;
		this.ch_result = ch_result;
		this.nickname = nickname;
		this.alarm = alarm;
		this.status = status;
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
	public String getCh_name() {
		return ch_name;
	}
	public void setCh_name(String ch_name) {
		this.ch_name = ch_name;
	}
	public String getCh_category() {
		return ch_category;
	}
	public void setCh_category(String ch_category) {
		this.ch_category = ch_category;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getCh_title() {
		return ch_title;
	}
	public void setCh_title(String ch_title) {
		this.ch_title = ch_title;
	}
	public String getCh_content() {
		return ch_content;
	}
	public void setCh_content(String ch_content) {
		this.ch_content = ch_content;
	}
	public String getCh_file() {
		return ch_file;
	}
	public void setCh_file(String ch_file) {
		this.ch_file = ch_file;
	}
	public String getCh_result() {
		return ch_result;
	}
	public void setCh_result(String ch_result) {
		this.ch_result = ch_result;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getAlarm() {
		return alarm;
	}
	public void setAlarm(String alarm) {
		this.alarm = alarm;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
