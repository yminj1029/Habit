package habit.rv.pojo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import habit.mem.pojo.InterController;
import habit.model.ReviewDAO;
import habit.model.ReviewVO;

public class MyReviewController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ReviewDAO dao = new ReviewDAO();
		String cpath = request.getContextPath();
		HttpSession session = request.getSession();
		
		String m_id = (String) session.getAttribute("userID");
		System.out.println(m_id);
		
		ArrayList<ReviewVO> list = dao.myReview(m_id);
		request.setAttribute("list", list);
		System.out.println("list·Î¹­¿´½¿´ç!");
		return "/member/myinfo.jsp";
	}

}
