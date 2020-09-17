package habit.mem.pojo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.model.Member2VO;
import habit.model.member2DAO;


public class Member2ContentController implements Member2Controller {

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String m_id = request.getParameter("m_id");
		member2DAO dao = new member2DAO();
		Member2VO vo = dao.member2Content(m_id);
		//memberContent.jsp·Î º¸³»±ë
		request.setAttribute("vo", vo);
		
		return "/member/memberContent.jsp";
	}
	
}
