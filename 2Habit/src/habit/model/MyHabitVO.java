package habit.model;

public class MyHabitVO {
	//속성을 만들자!!!!
	
	private int h_id; 
	private String m_id; 
	private String h_name; 
	private String h_day;
	private String h_startdate;
	private String h_enddate;
	private String h_alarm;
	
	
	public MyHabitVO(int h_id, String h_name, String h_day, String h_startdate, String h_enddate, String h_alarm) {
		super();
		this.h_id = h_id;
		this.h_name = h_name;
		this.h_day = h_day;
		this.h_startdate = h_startdate;
		this.h_enddate = h_enddate;
		this.h_alarm = h_alarm;
	}
	public MyHabitVO(int h_id, String m_id, String h_name, String h_day, String h_startdate, String h_enddate,
			String h_alarm) {
		super();
		this.h_id = h_id;
		this.m_id = m_id;
		this.h_name = h_name;
		this.h_day = h_day;
		this.h_startdate = h_startdate;
		this.h_enddate = h_enddate;
		this.h_alarm = h_alarm;
	}
	public MyHabitVO(String m_id, String h_name, String h_day, String h_startdate, String h_enddate, String h_alarm) {
		super();
		this.m_id = m_id;
		this.h_name = h_name;
		this.h_day = h_day;
		this.h_startdate = h_startdate;
		this.h_enddate = h_enddate;
		this.h_alarm = h_alarm;
	}
	public MyHabitVO() {
	}
	public MyHabitVO(String h_name, String h_day, String h_startdate, String h_enddate, String h_alarm) {
		super();
		this.h_name = h_name;
		this.h_day = h_day;
		this.h_startdate = h_startdate;
		this.h_enddate = h_enddate;
		this.h_alarm = h_alarm;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getH_day() {
		return h_day;
	}
	public void setH_day(String h_day) {
		this.h_day = h_day;
	}
	public String getH_startdate() {
		return h_startdate;
	}
	public void setH_startdate(String h_startdate) {
		this.h_startdate = h_startdate;
	}
	public String getH_enddate() {
		return h_enddate;
	}
	public void setH_enddate(String h_enddate) {
		this.h_enddate = h_enddate;
	}
	public String getH_alarm() {
		return h_alarm;
	}
	public void setH_alarm(String h_alarm) {
		this.h_alarm = h_alarm;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	
}
