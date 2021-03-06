package habit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.mem.pojo.InterController;



public class FrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String reqUrl= request.getRequestURI();
		String ctxPath = request.getContextPath();
		String command = reqUrl.substring(ctxPath.length());
		System.out.println(command);
		
		//각 요청에 따라 처리하기
		
		InterController controller = null;
		String nextView = null;
		HandlerMapping mapping = new HandlerMapping();
		controller = mapping.getController(command);
		nextView = controller.requestHandle(request, response);

		//view 페이지로 연동하는 부분 
		if(nextView !=null) {
			if(nextView.indexOf("redirect:") != -1) {
				//리다이렉트라는 글자가 있으면 리다이렉트로!! ->콜론을 기준으로 리다이렉트 부분 잘라버리장
				String[] sp = nextView.split(":");
				response.sendRedirect(sp[1]); //분리해서 1번째 인덱스만 올린다!
			}else {
				//리다이렉트가 없으면 포워드로!!!
				RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/"+nextView);
				rd.forward(request, response);
			}
		}
	}

}
