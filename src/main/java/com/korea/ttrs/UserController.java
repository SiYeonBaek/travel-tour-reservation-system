package com.korea.ttrs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.UserDAO;
import util.MyCommon;
import vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	UserDAO user_dao;

	// Login 입력 페이지로 이동
	@RequestMapping("/userLoing_form.do")
	public String userLogin_form() {
		return MyCommon.USER_VIEW_PATH + "userLoing_form.jsp";
	}
	
	// 회원가입 선택 페이지로 이동 -> 사이트&카카오&네이버 로그인 선택
	@RequestMapping("/userSignUpSelect.do")
	public String userSignUpSelect() {
		return MyCommon.USER_VIEW_PATH + "userSignUpSelect.jsp";
	}
	
	// 회원가입 페이지로 이동
	@RequestMapping("/UserSignUp_form.do")
	public String userSignUp_form() {
		return MyCommon.USER_VIEW_PATH + "userSignUp_form.jsp";
	}
	
	// 아이디 중복체크하기 위한 메서드
	@RequestMapping("/check_id.do")
	@ResponseBody
	public String check_id(String uId) {
		UserVO vo = user_dao.id_check_selectOne(uId);
		
		String res = "no"; // 중복이 있을 경우 회원가입 안됨
		
		if(vo == null) res = "yes"; // 회원가입이 가능한 경우
		String result = String.format("[{'res':'%s'}]", res);
		
		return result;
	}
	
	// 회원가입을 위한 메서드(insert)
	@RequestMapping("/userInsert.do")
	public String userInsert(UserVO vo) {
		int res = user_dao.user_insert(vo);
		
		if(res > 1) {
			return "userLoing_form.do";
			
		}
		return "";
	}
	
//	@RequestMapping("/userLogin.do")
//	public String userLogin(UserVO vo) {
//		return MyCommon.USER_VIEW_PATH + "userLogin_form.jsp";
//	}
}
