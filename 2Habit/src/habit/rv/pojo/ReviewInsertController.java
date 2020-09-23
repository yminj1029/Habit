package habit.rv.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String reviewtitle = request.getParameter("reviewtitle");
		String reviewcontent = request.getParameter("reviewcontent");
		String reviewfile = request.getParameter("reviewfile");

		System.out.println(reviewtitle);
		ReviewVO vo = new ReviewVO();
		vo.setR_title(reviewtitle);
		vo.setR_content(reviewcontent);
		vo.setR_file(reviewfile);
		
		ReviewDAO dao = new ReviewDAO();
		int cnt= dao.reviewInsert(reviewtitle, reviewcontent, reviewfile);
				
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
