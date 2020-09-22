package habit.cha.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.mem.pojo.InterController;
import habit.model.ChallengeDAO;
import habit.model.Member2DAO;


public class ChallengeDeleteController implements InterController {

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String cpath = request.getContextPath();
		int ch_id =Integer.parseInt(request.getParameter("ch_id"));
		String m_id =request.getParameter("m_id");
		
		ChallengeDAO dao = new ChallengeDAO();
		int cnt = dao.ChallengeDelete(ch_id, m_id);
		String page = null;
		if(cnt>0) {
			page = "redirect:"+cpath+"/list.do";
		}else {
			throw new ServletException("error");
		}
		
		return page;
	}

}
