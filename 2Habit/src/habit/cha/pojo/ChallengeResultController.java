package habit.cha.pojo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.mem.pojo.InterController;
import habit.model.ChallengeResultDAO;
import habit.model.ChallengeResultVO;
import habit.model.Member2DAO;
import habit.model.Member2VO;

public class ChallengeResultController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String m_id = request.getParameter("m_id");
		ChallengeResultDAO dao = new ChallengeResultDAO();
		ArrayList<ChallengeResultVO> vo = dao.challengeResult(m_id);
		
		request.setAttribute("vo", vo);
		
		return "/member/memberContent.jsp";
	}

}
