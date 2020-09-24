package habit.cha.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import habit.mem.pojo.InterController;
import habit.model.ChallengeDAO;
import habit.model.ChallengeVO;



public class ChallengeInsertController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		HttpSession session = request.getSession();
		
		String m_id = (String) session.getAttribute("userID");
		String ch_name = request.getParameter("challengeName");
		String ch_startdate = request.getParameter("challengeStartYear")+request.getParameter("challengeStartMonth")+request.getParameter("challengeStartDay");
		String ch_enddate = request.getParameter("challengeEndYear")+request.getParameter("challengeEndMonth")+request.getParameter("challengeEndDay");
		int num = Integer.parseInt(request.getParameter("limitNum"));
		String ch_content = request.getParameter("evaluationContent");
		String ch_file = request.getParameter("file");
		String ch_day = request.getParameter("alarmDays");
		String alarm = request.getParameter("alarmHour");
	
		System.out.println(m_id);
		System.out.println(ch_startdate);
		System.out.println(ch_enddate);
		
		ChallengeVO vo = new ChallengeVO();
		vo.setM_id(m_id);
		vo.setCh_name(ch_name);
		vo.setNum(num);
		vo.setCh_day(ch_day);
		vo.setStartdate(ch_startdate);
		vo.setEnddate(ch_enddate);
		vo.setCh_content(ch_content);
		vo.setAlarm(alarm);
		vo.setCh_file(ch_file);
		
		
		ChallengeDAO dao = new ChallengeDAO();
		int cnt= dao.challengeInsert(vo);
		String page=null;
		if(cnt>0) {
			page="redirect:"+cpath+"/challengeboard.do";
		}else {
			System.out.println("¾ÈµÅ!!!¤Ì¤Ð");
			throw new ServletException("error");
		}
		return page;
	}

}
