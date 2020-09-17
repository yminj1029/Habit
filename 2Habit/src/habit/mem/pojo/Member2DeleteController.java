package habit.mem.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.model.member2DAO;


public class Member2DeleteController implements Member2Controller {

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String cpath = request.getContextPath();
		String m_id =request.getParameter("m_id");
		String pw =request.getParameter("pw");
		
		member2DAO dao = new member2DAO();
		int cnt = dao.member2Delete(m_id, pw);
		String page = null;
		if(cnt>0) {
			page = "redirect:"+cpath+"/list.do";
		}else {
			throw new ServletException("error");
		}
		
		return page;
	}

}
