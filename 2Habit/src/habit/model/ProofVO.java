package habit.model;

public class ProofVO {
private int prf_id;
private int ch_id;
private String m_id;
private String prf_date;
private String prf_file;
private String ch_point;

public ProofVO() {
	super();
}

public ProofVO(int prf_id, int ch_id, String m_id, String prf_date, String prf_file, String ch_point) {
	super();
	this.prf_id = prf_id;
	this.ch_id = ch_id;
	this.m_id = m_id;
	this.prf_date = prf_date;
	this.prf_file = prf_file;
	this.ch_point = ch_point;
}

public int getPrf_id() {
	return prf_id;
}

public void setPrf_id(int prf_id) {
	this.prf_id = prf_id;
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

public String getPrf_date() {
	return prf_date;
}

public void setPrf_date(String prf_date) {
	this.prf_date = prf_date;
}

public String getPrf_file() {
	return prf_file;
}

public void setPrf_file(String prf_file) {
	this.prf_file = prf_file;
}

public String getCh_point() {
	return ch_point;
}

public void setCh_point(String ch_point) {
	this.ch_point = ch_point;
}




}
