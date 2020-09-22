package habit.cha.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.model.Member2VO;
import habit.mem.pojo.InterController;
import habit.model.ChallengeDAO;
import habit.model.ChallengeVO;
import habit.model.Member2DAO;

public class ChallengeUpdateController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String ch_name = request.getParameter("ch_name");
		int num = Integer.parseInt(request.getParameter("num"));
		String startdate = request.getParameter("startdate");
		String enddate = request.getParameter("enddate");
		String ch_content = request.getParameter("ch_content");
		String ch_file = request.getParameter("ch_file");
		String h_day = request.getParameter("h_day");
		String alarm = request.getParameter("alarm");
		int ch_id = Integer.parseInt(request.getParameter("ch_id"));
		String m_id = request.getParameter("m_id");
		
		ChallengeVO vo = new ChallengeVO();//vo·Î ¹­´Â´Ù!!
		
		vo.setCh_name(ch_name);
		vo.setNum(num);
		vo.setStartdate(startdate);
		vo.setEnddate(enddate);
		vo.setCh_content(ch_content);
		vo.setCh_file(ch_file);
		vo.setH_day(h_day);
		vo.setAlarm(alarm);
		vo.setCh_id(ch_id);
		vo.setM_id(m_id);
		
		ChallengeDAO dao = new ChallengeDAO();
		
		int cnt = dao.ChallengeUpdate(vo);
		String page = null;
		if(cnt>0) {
			page="redirect:/list.do";
		}else {
			throw new ServletException("error");}
		return page;
	}

	
}
