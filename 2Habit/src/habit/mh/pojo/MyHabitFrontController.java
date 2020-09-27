package habit.mh.pojo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import habit.mem.pojo.InterController;
import habit.model.MyHabitDAO;
import habit.model.MyHabitVO;
import habit.model.MyResultDAO;
import habit.model.MyResultVO;
import habit.model.ReviewDAO;
import habit.model.ReviewVO;

public class MyHabitFrontController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		HttpSession session = request.getSession();
		
		// 습관 리스트를 쭉뽑아보깅
		String m_id = (String) session.getAttribute("userID");
		MyHabitDAO dao = new MyHabitDAO();
		ArrayList<MyHabitVO> list = dao.myhabitList(m_id);
		request.setAttribute("list1", list);
	
		// 일주일치를 막대 그래프로 뽑아보깅
		// int[] percent = new int[7];
			StringBuilder sb1 = new StringBuilder();
	        MyResultDAO dao2 = new MyResultDAO();
     
	        int bunmo = dao2.Bunmo(m_id);
	          for(int i=20200924; i <= 20200930; i++) {
	               String mr_date = Integer.toString(i);
	               int bunja = dao2.Bunja(m_id, mr_date);
	               sb1.append(bunja/bunmo*100);
	               sb1.append(",");
	            }
	         request.setAttribute("list3", sb1.toString());
	         	         
	        //한달치 포인트를 계속 누적하면서 꺽은선 그래프를 그려보깅.
//	          int[] point = new int[30];
	         	StringBuilder sb2 = new StringBuilder();
	          for(int i =20200901; i <= 20200930; i++) {
	                   String mr_date = Integer.toString(i);
	                   sb2.append(dao2.Point(m_id, mr_date));
	                   sb2.append(",");
//	                   count++;
	                }
	     
//				System.out.println(sb2);
			
	         request.setAttribute("list2", sb2.toString());    
	         
			return "/member/myhabit.jsp";
	}

}
