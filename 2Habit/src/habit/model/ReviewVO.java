package habit.model;

public class ReviewVO {
	//속성을 만들자!!!!
	
	private int r_id; 
	private int ch_id;
	private String m_id;
	private String r_title;
	private String r_content;
	private String r_date;
	private int r_point;
	private String r_file;




	public ReviewVO(int r_id, String m_id, String r_title, String r_content, String r_date, int r_point,
			String r_file) {
		super();
		this.r_id = r_id;
		this.m_id = m_id;
		this.r_title = r_title;
		this.r_content = r_content;
		this.r_date = r_date;
		this.r_point = r_point;
		this.r_file = r_file;
	}





	public ReviewVO(int r_id, String m_id, String r_title, String r_content, String r_date) {
		super();
		this.r_id = r_id;
		this.m_id = m_id;
		this.r_title = r_title;
		this.r_content = r_content;
		this.r_date = r_date;
	}





	public ReviewVO(int r_id, int ch_id, String m_id, String r_title, String r_content, String r_date, int r_point,
			String r_file) {
		super();
		this.r_id = r_id;
		this.ch_id = ch_id;
		this.m_id = m_id;
		this.r_title = r_title;
		this.r_content = r_content;
		this.r_date = r_date;
		this.r_point = r_point;
		this.r_file = r_file;
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





	public ReviewVO() {
	}

	
	
}
