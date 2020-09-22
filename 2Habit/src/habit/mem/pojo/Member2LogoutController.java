package habit.mem.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Member2LogoutController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String cpath = request.getContextPath();
		HttpSession session = request.getSession();
		session.invalidate();
		response.sendRedirect("login.html");
		String page="redirect:"+cpath+"/list.do";
		return page;
	}
	
}
