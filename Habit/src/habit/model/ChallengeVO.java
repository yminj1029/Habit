package habit.model;

public class ChallengeVO {
	//속성을 만들자!!!!
	
	private String c_id; 
	private String c_name; 
	private String u_id; 
	private String c_date; 
	private String c_contents; 
	private String c_category;
	private String c_result;
	
	
	public ChallengeVO(String c_id, String c_name, String u_id, String c_date, String c_contents, String c_category,
			String c_result) {
		super();
		this.c_id = c_id;
		this.c_name = c_name;
		this.u_id = u_id;
		this.c_date = c_date;
		this.c_contents = c_contents;
		this.c_category = c_category;
		this.c_result = c_result;
	}


	public String getC_id() {
		return c_id;
	}


	public void setC_id(String c_id) {
		this.c_id = c_id;
	}


	public String getC_name() {
		return c_name;
	}


	public void setC_name(String c_name) {
		this.c_name = c_name;
	}


	public String getU_id() {
		return u_id;
	}


	public void setU_id(String u_id) {
		this.u_id = u_id;
	}


	public String getC_date() {
		return c_date;
	}


	public void setC_date(String c_date) {
		this.c_date = c_date;
	}


	public String getC_contents() {
		return c_contents;
	}


	public void setC_contents(String c_contents) {
		this.c_contents = c_contents;
	}


	public String getC_category() {
		return c_category;
	}


	public void setC_category(String c_category) {
		this.c_category = c_category;
	}


	public String getC_result() {
		return c_result;
	}


	public void setC_result(String c_result) {
		this.c_result = c_result;
	}
	

	
}
