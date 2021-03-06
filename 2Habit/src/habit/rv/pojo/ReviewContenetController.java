package habit.rv.pojo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.mem.pojo.InterController;
import habit.model.Member2DAO;
import habit.model.Member2VO;
import habit.model.ReviewDAO;
import habit.model.ReviewVO;

public class ReviewContenetController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int r_id = Integer.parseInt(request.getParameter("r_id"));
		ReviewDAO dao = new ReviewDAO();
		ReviewVO vo = dao.reviewContent(r_id);
		request.setAttribute("vo", vo);
		
		return "/member/review.jsp";
	}

}
