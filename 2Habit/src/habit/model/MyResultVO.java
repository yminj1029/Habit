package habit.model;

public class MyResultVO {
	//속성을 만들자!!!!
	
	private int mr_id; 
	private int h_id; 
	private String m_id; 
	private String mr_date;
	private String mr_result;
	private String mr_point;
	
	public MyResultVO() {
		super();
	}

	public MyResultVO(int mr_id, int h_id, String m_id, String mr_date, String mr_result, String mr_point) {
		super();
		this.mr_id = mr_id;
		this.h_id = h_id;
		this.m_id = m_id;
		this.mr_date = mr_date;
		this.mr_result = mr_result;
		this.mr_point = mr_point;
	}

	public int getMr_id() {
		return mr_id;
	}

	public void setMr_id(int mr_id) {
		this.mr_id = mr_id;
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

	public String getMr_date() {
		return mr_date;
	}

	public void setMr_date(String mr_date) {
		this.mr_date = mr_date;
	}

	public String getMr_result() {
		return mr_result;
	}

	public void setMr_result(String mr_result) {
		this.mr_result = mr_result;
	}

	public String getMr_point() {
		return mr_point;
	}

	public void setMr_point(String mr_point) {
		this.mr_point = mr_point;
	}
	
	
	
}
