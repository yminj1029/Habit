package habit.mh.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import habit.mem.pojo.InterController;
import habit.model.MyResultDAO;

public class MyResultInsertController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		HttpSession session = request.getSession();
		
		String m_id = (String) session.getAttribute("userID");
		int h_id = Integer.parseInt(request.getParameter("h_id"));
		
		MyResultDAO dao = new MyResultDAO();
		
		int cnt= dao.myResult(h_id, m_id);
		String page=null;
		if(cnt>0) {
			System.out.println("성공!!");
			page="redirect:"+cpath+"/myhabit.do";
		}else {
			System.out.println("실패");
			page="redirect:"+cpath+"/myhabit.do";
		}
		return page;
	}

}
