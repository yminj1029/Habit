package habit.mem.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.model.Member2VO;
import habit.model.member2DAO;


public class Member2InsertController implements Member2Controller{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		String m_id = request.getParameter("m_id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		String tel = request.getParameter("tel");
		String gender = request.getParameter("gender");
		String job = request.getParameter("job");
		String email = request.getParameter("email");
		
		
		Member2VO vo= new Member2VO();
		vo.setM_id(m_id);
		vo.setPw(pw);
		vo.setName(name);
		vo.setNickname(nickname);
		vo.setTel(tel);
		vo.setGender(gender);
		vo.setJob(job);
		vo.setEmail(email);
		
		member2DAO dao = new member2DAO();
		int cnt= dao.member2Insert(vo);
		String page=null;
		if(cnt>0) {
			page="redirect:"+cpath+"/list.do";
		}else {
			throw new ServletException("error");
		}
		return page;
	}

}
