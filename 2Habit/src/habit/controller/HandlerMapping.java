package habit.controller;

import java.util.HashMap;

import habit.mem.pojo.Member2MyPageController;
import habit.mem.pojo.Member2Controller;
import habit.mem.pojo.Member2InsertController;
import habit.mem.pojo.Member2UpdateController;
import habit.mem.pojo.*;

public class HandlerMapping {
	private HashMap<String, Member2Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String, Member2Controller>();
		initMap();
	}

	private void initMap() {

		try {
		mappings.put("/join.do", new Member2InsertController());
		mappings.put("/login.do", new Member2UpdateController());
		mappings.put("/mypage.do", new Member2MyPageController());
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public Member2Controller getController(String key) {
		return mappings.get(key);
	}
}
