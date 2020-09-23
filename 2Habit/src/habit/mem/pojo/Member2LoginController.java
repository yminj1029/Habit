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
		
		String page=null;
		String cpath = request.getContextPath();
		
		request.setCharacterEncoding("euc-kr");
		String userID = request.getParameter("login_id");
		String userPassword = request.getParameter("login_pw");
		
		Member2VO vo = new Member2VO();
		vo.setM_id(userID);
		vo.setPw(userPassword);
		
		
		System.out.println(userID);
		System.out.println(userPassword);

		Member2DAO dao = new Member2DAO();
		int result= dao.member2Login(vo);
		if(result==1) {
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("userID", userID); 
			page="redirect:"+cpath+"/membermain.do";
		}else {
			System.out.println("좀망한듯....");
			page="redirect:"+cpath+"/main.do";
		}
		return page;
	}

}
