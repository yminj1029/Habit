package habit.mem.pojo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import habit.model.Member2VO;
import habit.model.ReviewDAO;
import habit.model.ReviewVO;
import habit.model.Member2DAO;


public class Member2MyInfoController implements InterController {

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String m_id = (String) session.getAttribute("userID");
		Member2DAO dao = new Member2DAO();
		Member2VO vo = dao.member2Content(m_id);
		request.setAttribute("vo", vo);
		
		ReviewDAO daoR = new ReviewDAO();
		ArrayList<ReviewVO> list2 = daoR.myReview(m_id);
		System.out.println(list2);
		return "/member/myinfo.jsp";
	}
	
}
