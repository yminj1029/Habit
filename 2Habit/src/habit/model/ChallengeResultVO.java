package habit.model;

public class ChallengeResultVO {
	//속성을 만들자!!!!
	
	private int ch_id; 
	private int chm_id; 
	private int prf_id;
	private String ch_name;
	private String startdate;
	private String enddate;
	private String chr_result;
	
	
	public ChallengeResultVO(int ch_id, int chm_id, int prf_id, String ch_name, String startdate, String enddate,
			String chr_result) {
		super();
		this.ch_id = ch_id;
		this.chm_id = chm_id;
		this.prf_id = prf_id;
		this.ch_name = ch_name;
		this.startdate = startdate;
		this.enddate = enddate;
		this.chr_result = chr_result;
	}
	public ChallengeResultVO(String ch_name, String startdate, String enddate, String chr_result) {
		super();
		this.ch_name = ch_name;
		this.startdate = startdate;
		this.enddate = enddate;
		this.chr_result = chr_result;
	}
	public String getCh_name() {
		return ch_name;
	}
	public void setCh_name(String ch_name) {
		this.ch_name = ch_name;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getChr_result() {
		return chr_result;
	}
	public void setChr_result(String chr_result) {
		this.chr_result = chr_result;
	}
	
	
	
	
}
