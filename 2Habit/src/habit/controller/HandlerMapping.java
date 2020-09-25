package habit.controller;

import java.util.HashMap;

import habit.rv.pojo.ReviewListController;
import habit.rv.pojo.MyReviewController;
import habit.rv.pojo.ReviewContenetController;
import habit.rv.pojo.ReviewInsertController;
import habit.cha.pojo.ChallengeInsertController;
import habit.cha.pojo.ChallengeListController;
import habit.mem.pojo.*;
import habit.mh.pojo.MyHabitFrontController;
import habit.mh.pojo.MyHabitProduceController;

public class HandlerMapping {
	private HashMap<String, InterController> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String, InterController>();
		initMap();
	}

	private void initMap() {

		try {
		mappings.put("/main.do", new MainController());
		mappings.put("/register.do", new Member2InsertController());
		mappings.put("/login.do", new Member2LoginController());
		mappings.put("/myinfo.do", new Member2MyInfoController());
		mappings.put("/challengeboard.do", new ChallengeListController());
		mappings.put("/challengewrite.do", new ChallengeInsertController());
		mappings.put("/reviewboard.do", new ReviewListController());
		mappings.put("/reviewwrite.do", new ReviewInsertController());
		mappings.put("/membermain.do", new MemberMainController());
		mappings.put("/myhabit.do", new MyHabitFrontController());
		mappings.put("/myhabitwrite.do", new MyHabitProduceController());
		mappings.put("/infoupdate.do", new Member2UpdateController());
		mappings.put("/reviewcontent.do", new ReviewContenetController());
		mappings.put("/myreview.do", new MyReviewController());
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public InterController getController(String key) {
		return mappings.get(key);
	}
}
