package habit.model;

public class ChallengeMembersVO {
	//속성을 만들자!!!!
	
	private int chm_id; 
	private int ch_id; 
	private String m_id;
	private int prf_id;
	private int chm_point;
	public ChallengeMembersVO() {
		super();
	}
	public ChallengeMembersVO(int chm_id, int ch_id, String m_id, int prf_id, int chm_point) {
		super();
		this.chm_id = chm_id;
		this.ch_id = ch_id;
		this.m_id = m_id;
		this.prf_id = prf_id;
		this.chm_point = chm_point;
	}
	public int getChm_id() {
		return chm_id;
	}
	public void setChm_id(int chm_id) {
		this.chm_id = chm_id;
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
	public int getPrf_id() {
		return prf_id;
	}
	public void setPrf_id(int prf_id) {
		this.prf_id = prf_id;
	}
	public int getChm_point() {
		return chm_point;
	}
	public void setChm_point(int chm_point) {
		this.chm_point = chm_point;
	}
	

}
