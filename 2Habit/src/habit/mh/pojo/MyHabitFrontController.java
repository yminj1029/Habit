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
		
		// ���� ����Ʈ�� �߻̾ƺ���
		String m_id = (String) session.getAttribute("userID");
		MyHabitDAO dao = new MyHabitDAO();
		ArrayList<MyHabitVO> list = dao.myhabitList(m_id);
		request.setAttribute("list1", list);
	
		// ������ġ�� ���� �׷����� �̾ƺ���
		 int[] percent = new int[7];
	        MyResultDAO dao2 = new MyResultDAO();
        int num = 0;
	     
	        int bunmo = dao2.Bunmo(m_id);
	          for(int i=20200920; i <= 20200926; i++) {
	               String mr_date = Integer.toString(i);
	               int bunja = dao2.Bunja(m_id, mr_date);
	              percent[num] = bunja/bunmo*100;
	               num++;
	               System.out.println(num);
	            }
	         request.setAttribute("list2", percent);
	         	         
	        //�Ѵ�ġ ����Ʈ�� ��� �����ϸ鼭 ������ �׷����� �׷�����.
	          int[] point = new int[30];
	          int count=0;
	          for(int i =20200901; i <= 20200930; i++) {
	                   String mr_date = Integer.toString(i);
	                   point[count] = dao2.Point(m_id, mr_date);
	                   count++;
	                }
	         for (int i = 0; i < point.length; i++) {
				System.out.println(i+1 +"����"+point[i]);
			}
	         request.setAttribute("list3", point);    
	         
			return "/member/myhabit.jsp";
	}

}
