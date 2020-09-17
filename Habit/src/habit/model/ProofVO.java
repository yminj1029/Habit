package habit.model;

public class ProofVO {
private int prf_id;
private int ch_id;
private int m_id;
private String prf_title;
private String prf_content;
private String prf_file;
private String prf_comment;
private String nickname;
private String ch_category;
private String ch_name;
private String prf_date;
private String point;
private String status;
public ProofVO(int prf_id, int ch_id, int m_id, String prf_title, String prf_content, String prf_file,
		String prf_comment, String nickname, String ch_category, String ch_name, String prf_date, String point,
		String status) {
	super();
	this.prf_id = prf_id;
	this.ch_id = ch_id;
	this.m_id = m_id;
	this.prf_title = prf_title;
	this.prf_content = prf_content;
	this.prf_file = prf_file;
	this.prf_comment = prf_comment;
	this.nickname = nickname;
	this.ch_category = ch_category;
	this.ch_name = ch_name;
	this.prf_date = prf_date;
	this.point = point;
	this.status = status;
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
public int getM_id() {
	return m_id;
}
public void setM_id(int m_id) {
	this.m_id = m_id;
}
public String getPrf_title() {
	return prf_title;
}
public void setPrf_title(String prf_title) {
	this.prf_title = prf_title;
}
public String getPrf_content() {
	return prf_content;
}
public void setPrf_content(String prf_content) {
	this.prf_content = prf_content;
}
public String getPrf_file() {
	return prf_file;
}
public void setPrf_file(String prf_file) {
	this.prf_file = prf_file;
}
public String getPrf_comment() {
	return prf_comment;
}
public void setPrf_comment(String prf_comment) {
	this.prf_comment = prf_comment;
}
public String getNickname() {
	return nickname;
}
public void setNickname(String nickname) {
	this.nickname = nickname;
}
public String getCh_category() {
	return ch_category;
}
public void setCh_category(String ch_category) {
	this.ch_category = ch_category;
}
public String getCh_name() {
	return ch_name;
}
public void setCh_name(String ch_name) {
	this.ch_name = ch_name;
}
public String getPrf_date() {
	return prf_date;
}
public void setPrf_date(String prf_date) {
	this.prf_date = prf_date;
}
public String getPoint() {
	return point;
}
public void setPoint(String point) {
	this.point = point;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}

}
