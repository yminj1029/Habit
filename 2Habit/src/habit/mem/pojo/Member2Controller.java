package habit.mem.pojo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Member2Controller {
	// FC�� �ؾ��� ���� POJO���� ������ִ� �޼���
	public String requestHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException;
}
