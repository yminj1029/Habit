package habit.controller;

import java.util.HashMap;

import habit.mem.pojo.Member2MyPageController;
import habit.mem.pojo.InterController;
import habit.mem.pojo.Member2InsertController;
import habit.mem.pojo.Member2UpdateController;
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
		mappings.put("/join.do", new Member2InsertFormController());
		mappings.put("/login.do", new Member2UpdateController());
		mappings.put("/mypage.do", new Member2MyPageController());
		mappings.put("/challengeboard.do", new ChallengeListController());
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public InterController getController(String key) {
		return mappings.get(key);
	}
}
