package habit.cha.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.mem.pojo.InterController;
import habit.model.ChallengeDAO;
import habit.model.ChallengeVO;



public class ChallengeInsertController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		String m_id = request.getParameter("m_id");
		String ch_name = request.getParameter("ch_name");
		int num = Integer.parseInt(request.getParameter("num"));
		String startdate = request.getParameter("startdate");
		String enddate = request.getParameter("enddate");
		String ch_content = request.getParameter("ch_content");
		String ch_file = request.getParameter("ch_file");
		String h_day = request.getParameter("h_day");
		String alarm = request.getParameter("alarm");
		
		ChallengeVO vo = new ChallengeVO();
		vo.setM_id(m_id);
		vo.setCh_name(ch_name);
		vo.setNum(num);
		vo.setStartdate(startdate);
		vo.setStartdate(startdate);
		vo.setEnddate(enddate);
		vo.setCh_content(ch_content);
		vo.setCh_file(ch_file);
		vo.setCh_day(h_day);
		vo.setAlarm(alarm);
		
		ChallengeDAO dao = new ChallengeDAO();
		int cnt= dao.challengeInsert(vo);
		String page=null;
		if(cnt>0) {
			page="redirect:"+cpath+"/list.do";
		}else {
			throw new ServletException("error");
		}
		return page;
	}

}
