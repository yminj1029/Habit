package habit.controller;

import java.util.HashMap;

import habit.rv.pojo.ReivewListController;
import habit.cha.pojo.ChallengeListController;
import habit.mem.pojo.*;

public class HandlerMapping {
	private HashMap<String, InterController> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String, InterController>();
		initMap();
	}

	private void initMap() {

		try {
		mappings.put("/main.do", new MainController());
		mappings.put("/registerForm.do", new Member2InsertFormController());
		mappings.put("/register.do", new Member2InsertController());
		mappings.put("/loginForm.do",new Member2LoginFormController());
		mappings.put("/login.do", new Member2LoginController());
		mappings.put("/mypage.do", new Member2MyPageController());
		mappings.put("/challengeboard.do", new ChallengeListController());
		mappings.put("/reviewboard.do", new ReivewListController());
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public InterController getController(String key) {
		return mappings.get(key);
	}
}
