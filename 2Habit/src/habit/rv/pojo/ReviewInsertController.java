package habit.rv.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.model.Member2DAO;
import habit.model.Member2VO;
import habit.model.ReviewDAO;
import habit.model.ReviewVO;

public class ReviewInsertController implements ReviewController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		String m_id = request.getParameter("m_id");
		String r_date = request.getParameter("r_date");
		int r_point = Integer.parseInt(request.getParameter("r_point"));
		String r_file = request.getParameter("r_file");
		
		ReviewVO vo = new ReviewVO();
		vo.setM_id(m_id);
		vo.setR_date(r_date);
		vo.setR_point(r_point);
		vo.setR_file(r_file);
		
		ReviewDAO dao = new ReviewDAO();
		int cnt= dao.reviewInsert(m_id, r_point, r_file);
		String page=null;
		if(cnt>0) {
			page="redirect:"+cpath+"/list.do";
		}else {
			throw new ServletException("error");
		}
		return page;

	}

}
