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

public class ReviewContenetController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String r_id = request.getParameter("r_id");
		ReviewDAO dao = new ReviewDAO();
		// reviewDAO 정리되면 다시보기.
//		ArrayList<Member2VO> vo = dao.member2Mypage(r_id);
		//memberContent.jsp로 보내깅
//		request.setAttribute("vo", vo);
		
		return "/member/myinfo.jsp";
	}

}
