package habit.mh.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import habit.mem.pojo.InterController;
import habit.model.MyHabitDAO;
import habit.model.MyHabitVO;

public class MyHabitProduceController implements InterController{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpath = request.getContextPath();
		String m_id = request.getParameter("m_id");
		String h_name = request.getParameter("h_name");
		String h_day = request.getParameter("h_day");
		String h_startdate = request.getParameter("h_startdate");
		String h_enddate = request.getParameter("h_enddate");
		String h_alarm = request.getParameter("h_alarm");
		
		
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
			page="redirect:"+cpath+"/list.do";
		}else {
			throw new ServletException("error");
		}
		return null;
	}

}
