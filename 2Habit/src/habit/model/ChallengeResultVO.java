package habit.model;

public class ChallengeResultVO {
	//속성을 만들자!!!!
	
	private int ch_id; 
	private int chm_id; 
	private int prf_id;
	private String chr_date;
	private int chr_point;
	private String chr_result;
	
	public ChallengeResultVO() {
		super();
	}

	public ChallengeResultVO(int ch_id, int chm_id, int prf_id, String chr_date, int chr_point, String chr_result) {
		super();
		this.ch_id = ch_id;
		this.chm_id = chm_id;
		this.prf_id = prf_id;
		this.chr_date = chr_date;
		this.chr_point = chr_point;
		this.chr_result = chr_result;
	}

	public int getCh_id() {
		return ch_id;
	}

	public void setCh_id(int ch_id) {
		this.ch_id = ch_id;
	}

	public int getChm_id() {
		return chm_id;
	}

	public void setChm_id(int chm_id) {
		this.chm_id = chm_id;
	}

	public int getPrf_id() {
		return prf_id;
	}

	public void setPrf_id(int prf_id) {
		this.prf_id = prf_id;
	}

	public String getChr_date() {
		return chr_date;
	}

	public void setChr_date(String chr_date) {
		this.chr_date = chr_date;
	}

	public int getChr_point() {
		return chr_point;
	}

	public void setChr_point(int chr_point) {
		this.chr_point = chr_point;
	}

	public String getChr_result() {
		return chr_result;
	}

	public void setChr_result(String chr_result) {
		this.chr_result = chr_result;
	}
		
	
	
}
