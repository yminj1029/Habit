package habit.mem.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Member2InsertFormController implements Member2Controller{

	@Override
	public String requestHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		return "member/membership.jsp";
	}

}
