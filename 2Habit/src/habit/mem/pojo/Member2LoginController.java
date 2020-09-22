package habit.mem.pojo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import habit.model.Member2VO;
import habit.model.Member2DAO;


public class Member2LoginController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String cpath = request.getContextPath();
		Enumeration<String> em= request.getHeaderNames();
		PrintWriter out = response.getWriter();
		while(em.hasMoreElements()) {
			String name= em.nextElement();
			String value = request.getHeader(name);
			System.out.println(name+":"+value);
		}
		
		request.setCharacterEncoding("euc-kr");
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		Member2VO vo= new Member2VO();
		vo.setM_id(mid);
		vo.setPw(mpw);
		
		
		Member2DAO dao = new Member2DAO();
		int result= dao.member2Login(mid, mpw);
		String page=null;
		if(result==0) {
			HttpSession session = request.getSession();
			session.setAttribute("mid", mid); 
			page="redirect:"+cpath+"/membermain.do";
			System.out.println("로그인 성공");
		}else {
			page="redirect:"+cpath+"login.do";
			System.out.println("좀망한듯....");
		}
		return page;
	}

}
