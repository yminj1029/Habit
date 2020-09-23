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

public class ReviewListController implements InterController {

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ReviewDAO dao = new ReviewDAO();
		ArrayList<ReviewVO> list = dao.reviewboard();
		//memberContent.jsp·Î º¸³»±ë
		request.setAttribute("list", list);
		System.out.println("list·Î¹­¿´½¿´ç!");
		return "/member/review.jsp";
		
	}

}
