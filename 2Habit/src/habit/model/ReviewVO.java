package habit.model;

public class ReviewVO {
	//속성을 만들자!!!!
	
	private int r_id; 
	private int ch_id;
	private String m_id; 
	private String r_date;
	private String r_file;
	private int r_point;
	
	
	public ReviewVO() {
		super();
	}


	public ReviewVO(int r_id, int ch_id, String m_id, String r_date, String r_file, int r_point) {
		super();
		this.r_id = r_id;
		this.ch_id = ch_id;
		this.m_id = m_id;
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
	
	
	
	
	
}
