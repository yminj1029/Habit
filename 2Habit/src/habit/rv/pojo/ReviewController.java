package habit.rv.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ReviewController {
	// FC가 해야할 일을 POJO들이 대신해주는 메서드
	public String requestHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException;
}
