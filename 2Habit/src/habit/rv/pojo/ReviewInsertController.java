package habit.rv.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import habit.mem.pojo.InterController;
import habit.model.Member2DAO;
import habit.model.Member2VO;
import habit.model.ReviewDAO;
import habit.model.ReviewVO;

public class ReviewInsertController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		HttpSession session = request.getSession();
		
		String m_id = (String) session.getAttribute("userID");
		String reviewtitle = request.getParameter("reviewtitle");
		int challengeID = Integer.parseInt(request.getParameter("challengeID"));
		String reviewcontent = request.getParameter("reviewContent");
		String reviewfile = request.getParameter("file");

		System.out.println(m_id);
		System.out.println(reviewtitle);
		
		ReviewVO vo = new ReviewVO();
		vo.setCh_id(challengeID);
		vo.setM_id(m_id);
		vo.setR_title(reviewtitle);
		vo.setR_content(reviewcontent);
		vo.setR_file(reviewfile);

		System.out.println("hi"+reviewtitle);
		ReviewDAO dao = new ReviewDAO();
		int cnt= dao.reviewInsert(vo);
				
		String page=null;
		if(cnt>0) {
			System.out.println("insert 성공!ㅃ");
			page="redirect:"+cpath+"/reviewboard.do";
		}else {
			System.out.println("실패...");
			throw new ServletException("error");
		}
		return page;

	}

}
