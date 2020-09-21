package habit.mem.pojo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.model.Member2VO;
import habit.model.Member2DAO;


public class Member2MyPageController implements Member2Controller {

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String m_id = request.getParameter("m_id");
		Member2DAO dao = new Member2DAO();
		ArrayList<Member2VO> vo = dao.member2Mypage(m_id);
		//memberContent.jsp·Î º¸³»±ë
		request.setAttribute("vo", vo);
		
		return "/member/memberContent.jsp";
	}
	
}
