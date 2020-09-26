package habit.mh.pojo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import habit.mem.pojo.InterController;
import habit.model.MyHabitDAO;
import habit.model.MyHabitVO;
import habit.model.MyResultDAO;
import habit.model.MyResultVO;
import habit.model.ReviewDAO;
import habit.model.ReviewVO;

public class MyHabitFrontController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		HttpSession session = request.getSession();
		
		String m_id = (String) session.getAttribute("userID");
		//System.out.println(m_id);
		MyHabitDAO dao = new MyHabitDAO();
		ArrayList<MyHabitVO> list = dao.myhabitList(m_id);
		//System.out.println(list);
		request.setAttribute("list", list);
			return "/member/myhabit.jsp";
	}

}
