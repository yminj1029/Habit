package habit.model;

public class ChallengeVO {
	//속성을 만들자!!!!
	
	private int ch_id; 
	private String ch_name; 
	private String m_id;
	private int num; 
	private String startdate;
	private String enddate;
	private String ch_content;
	private String ch_file;
	private String h_day;
	private String alarm;
	
	public ChallengeVO() {
		super();
	}


	
	public ChallengeVO(int ch_id, String ch_name, int num, String startdate, String enddate, String ch_content,
			String ch_file, String h_day, String alarm) {
		super();
		this.ch_id = ch_id;
		this.ch_name = ch_name;
		this.num = num;
		this.startdate = startdate;
		this.enddate = enddate;
		this.ch_content = ch_content;
		this.ch_file = ch_file;
		this.h_day = h_day;
		this.alarm = alarm;
	}



	public ChallengeVO(int ch_id, String ch_name, String m_id, int num, String startdate, String enddate,
			String ch_content, String ch_file, String h_day, String alarm) {
		super();
		this.ch_id = ch_id;
		this.ch_name = ch_name;
		this.m_id = m_id;
		this.num = num;
		this.startdate = startdate;
		this.enddate = enddate;
		this.ch_content = ch_content;
		this.ch_file = ch_file;
		this.h_day = h_day;
		this.alarm = alarm;
	}



	public int getCh_id() {
		return ch_id;
	}

	public void setCh_id(int ch_id) {
		this.ch_id = ch_id;
	}

	public String getCh_name() {
		return ch_name;
	}

	public void setCh_name(String ch_name) {
		this.ch_name = ch_name;
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

	public String getAlarm() {
		return alarm;
	}

	public void setAlarm(String alarm) {
		this.alarm = alarm;
	}

	public String getH_day() {
		return h_day;
	}

	public void setH_day(String h_day) {
		this.h_day = h_day;
	}



	public String getM_id() {
		return m_id;
	}



	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	
	
}
