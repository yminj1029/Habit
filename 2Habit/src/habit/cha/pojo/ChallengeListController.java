package habit.cha.pojo;

import java.io.IOException;
import java.sql.Array;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.model.ChallengeDAO;
import habit.model.ChallengeVO;

public class ChallengeListController implements ChallengeController {

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ChallengeDAO dao = new ChallengeDAO();
		ArrayList<ChallengeVO> list = dao.ChallengeAllList();
			
			request.setAttribute("list", list);
			return "member/memberList.jsp";
	}

	

	
}
