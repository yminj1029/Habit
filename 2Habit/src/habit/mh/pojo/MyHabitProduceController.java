package habit.mh.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import habit.mem.pojo.InterController;
import habit.model.MyHabitDAO;
import habit.model.MyHabitVO;

public class MyHabitProduceController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		HttpSession session = request.getSession();
		
		String m_id = (String) session.getAttribute("userID");
		String h_name = request.getParameter("h_name");
		String h_startdate = request.getParameter("habitStartYear")+request.getParameter("habitStartMonth")+request.getParameter("habitStartDay");
		String h_enddate = request.getParameter("habitEndYear")+request.getParameter("habitEndMonth")+request.getParameter("habitEndDay");
		String h_day = request.getParameter("alarmDays");
		String h_alarm = request.getParameter("off");
	//	System.out.println(m_id);
	//	System.out.println(h_name);
		System.out.println(h_startdate);
		System.out.println(h_enddate);
	//	System.out.println(h_day);
	//	System.out.println(h_alarm);
		MyHabitVO vo = new MyHabitVO();
		vo.setM_id(m_id);
		vo.setH_name(h_name);
		vo.setH_day(h_day);
		vo.setH_startdate(h_startdate);
		vo.setH_enddate(h_enddate);
		vo.setH_alarm(h_alarm);
		
		MyHabitDAO dao = new MyHabitDAO();
		int cnt= dao.myhabitProduce(m_id, h_name, h_day, h_startdate, h_enddate, h_alarm);
		String page=null;
		if(cnt>0) {
			System.out.println("¼º°ø!!");
			page="redirect:"+cpath+"/myhabit.do";
		}else {
			throw new ServletException("error");
		}
		return page;
	}

}
