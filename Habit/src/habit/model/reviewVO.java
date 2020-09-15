package habit.model;

public class reviewVO {
	//속성을 만들자!!!!
	
	private String r_id; 
	private String m_id; 
	private String c_id; 
	private String u_id;
	public reviewVO(String r_id, String m_id, String c_id, String u_id) {
		super();
		this.r_id = r_id;
		this.m_id = m_id;
		this.c_id = c_id;
		this.u_id = u_id;
	}
	public String getR_id() {
		return r_id;
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	} 
	
	
}
