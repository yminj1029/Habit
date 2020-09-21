package habit.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.mem.pojo.Member2Controller;
import habit.model.Member2VO;
import habit.mem.pojo.Member2Controller;



public class Member2FrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String reqUrl= request.getRequestURI();
		String ctxPath = request.getContextPath();
		String command = reqUrl.substring(ctxPath.length());
		System.out.println(command);
		
		//�� ��û�� ���� ó���ϱ�
		
		Member2Controller member2controller = null;
		String nextView = null;
		HandlerMapping mapping = new HandlerMapping();
		member2controller = mapping.getController(command);
		nextView = member2controller.requestHandle(request, response);

		//view �������� �����ϴ� �κ� 
		if(nextView !=null) {
			if(nextView.indexOf("redirect:") != -1) {
				//�����̷�Ʈ��� ���ڰ� ������ �����̷�Ʈ��!! ->�ݷ��� �������� �����̷�Ʈ �κ� �߶������
				String[] sp = nextView.split(":");
				response.sendRedirect(sp[1]); //�и��ؼ� 1��° �ε����� �ø���!
			}else {
				//�����̷�Ʈ�� ������ �������!!!
				RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/"+nextView);
				rd.forward(request, response);
			}
		}
	}

}
