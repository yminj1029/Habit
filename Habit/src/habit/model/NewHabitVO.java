package habit.model;

public class NewHabitVO {
	//속성을 만들자!!!!
	
	private int h_id; 
	private String m_id; 
	private String category; 
	private String h_name; 
	private String h_content; 
	private String h_file;
	private String h_result;
	private String h_repeat;
	private String h_startdate;
	private String h_enddate;
	private String h_timeofday;
	private String h_timegoal;
	private String h_alarm;

	public NewHabitVO(int h_id, String m_id, String category, String h_name, String h_content, String h_file,
			String h_result, String h_repeat, String h_startdate, String h_enddate, String h_timeofday,
			String h_timegoal, String h_alarm) {
		super();
		this.h_id = h_id;
		this.m_id = m_id;
		this.category = category;
		this.h_name = h_name;
		this.h_content = h_content;
		this.h_file = h_file;
		this.h_result = h_result;
		this.h_repeat = h_repeat;
		this.h_startdate = h_startdate;
		this.h_enddate = h_enddate;
		this.h_timeofday = h_timeofday;
		this.h_timegoal = h_timegoal;
		this.h_alarm = h_alarm;
	}
	public int getH_id() {
		return h_id;
	}
	public void setH_id(int h_id) {
		this.h_id = h_id;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getH_content() {
		return h_content;
	}
	public void setH_content(String h_content) {
		this.h_content = h_content;
	}
	public String getH_file() {
		return h_file;
	}
	public void setH_file(String h_file) {
		this.h_file = h_file;
	}
	public String getH_result() {
		return h_result;
	}
	public void setH_result(String h_result) {
		this.h_result = h_result;
	}
	public String getH_repeat() {
		return h_repeat;
	}
	public void setH_repeat(String h_repeat) {
		this.h_repeat = h_repeat;
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
	public String getH_timeofday() {
		return h_timeofday;
	}
	public void setH_timeofday(String h_timeofday) {
		this.h_timeofday = h_timeofday;
	}
	public String getH_timegoal() {
		return h_timegoal;
	}
	public void setH_timegoal(String h_timegoal) {
		this.h_timegoal = h_timegoal;
	}
	public String getH_alarm() {
		return h_alarm;
	}
	public void setH_alarm(String h_alarm) {
		this.h_alarm = h_alarm;
	}
	
	
}
