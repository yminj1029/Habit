package habit.mem.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.model.Member2VO;
import habit.model.Member2DAO;

public class Member2UpdateController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		String tel = request.getParameter("tel");
		String job = request.getParameter("job");
		String email = request.getParameter("email");
		String habit = request.getParameter("habit");
		String m_id = request.getParameter("m_id");
		String cpath = request.getContextPath();
		
		Member2VO vo = new Member2VO();  //vo·Î ¹­´Â´Ù!!
		
		vo.setPw(pw);
		vo.setName(name);
		vo.setNickname(nickname);
		vo.setTel(tel);
		vo.setGender(habit);
		vo.setJob(job);
		vo.setEmail(email);
		vo.setM_id(m_id);
		
		Member2DAO dao = new Member2DAO();
		int cnt = dao.member2Update(vo);
		String page = null;
		if(cnt>0) {
			page="redirect:"+cpath+"/list.do";
		}else {
			throw new ServletException("error");}
		return page;
	}

	
}
