package habit.cha.pojo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.mem.pojo.InterController;
import habit.model.ChallengeDAO;
import habit.model.ChallengeVO;
import habit.model.Member2DAO;
import habit.model.Member2VO;
import habit.model.ReviewDAO;
import habit.model.ReviewVO;

public class ChallengeContenetController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int ch_id = Integer.parseInt(request.getParameter("ch_id"));
		ChallengeDAO dao = new ChallengeDAO();
		ChallengeVO vo = dao.challengeContent(ch_id);
		request.setAttribute("vo", vo);
		
		return "/member/challenge.jsp";
	}

}
