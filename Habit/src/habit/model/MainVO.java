package habit.model;

public class MainVO {
	//속성을 만들자!!!!
	
	private String m_id; 
	private String m_name; 
	private String u_id; 
	private String m_date; 
	private String m_contents; 
	private String m_category;
	private String m_result;
	
	
	public MainVO(String m_id, String m_name, String u_id, String m_date, String m_contents, String m_category,
			String m_result) {
		super();
		this.m_id = m_id;
		this.m_name = m_name;
		this.u_id = u_id;
		this.m_date = m_date;
		this.m_contents = m_contents;
		this.m_category = m_category;
		this.m_result = m_result;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getM_date() {
		return m_date;
	}
	public void setM_date(String m_date) {
		this.m_date = m_date;
	}
	public String getM_contents() {
		return m_contents;
	}
	public void setM_contents(String m_contents) {
		this.m_contents = m_contents;
	}
	public String getM_category() {
		return m_category;
	}
	public void setM_category(String m_category) {
		this.m_category = m_category;
	}
	public String getM_result() {
		return m_result;
	}
	public void setM_result(String m_result) {
		this.m_result = m_result;
	} 
	
	
	
}
