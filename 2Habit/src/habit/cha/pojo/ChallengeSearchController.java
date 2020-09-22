package habit.cha.pojo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.model.ChallengeDAO;
import habit.model.ChallengeVO;

public class ChallengeSearchController implements ChallengeController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String search = request.getParameter("search");
		
		ChallengeDAO dao = new ChallengeDAO();
		ArrayList<ChallengeVO> list = dao.challengeSeach(search);
			
			request.setAttribute("list", list);
			return "member/memberList.jsp";
	}

}
