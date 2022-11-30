package com.korea.ttrs;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ProductDAO;
import util.MyCommon;
import vo.ProductVO;

@Controller
public class PayController {

	@Autowired
	ProductDAO product_dao;

	// 상품 화면

	@RequestMapping("/pay1.do")
	public String pay1_form(Model model) {
		// dao로부터 목록 조회
		List<ProductVO> list = product_dao.selectList();

		model.addAttribute("list", list);

		return MyCommon.USER_VIEW_PATH + "home1.jsp";
	}

	// 일정 선택 화면

	@RequestMapping("/pay2.do")
	public String pay2_form(Model model, int pidx) {
		System.out.println(pidx);
		List<ProductVO> list = product_dao.selectList();
		model.addAttribute("list", list);

		ProductVO vo = product_dao.selectOne(pidx);
		model.addAttribute("vo", vo);

		return MyCommon.USER_VIEW_PATH + "home2.jsp";
	}

	@RequestMapping("/pay2_ps.do")
	
	public String pay2_ps( String date, Model model) {
	/* public String pay2_ps(Model model) { */
	System.out.println(date); 

	List<ProductVO> list3 = product_dao.selectList3(date);

	 model.addAttribute("list3",list3);
	 model.addAttribute("date",date);

	return MyCommon.USER_VIEW_PATH+"schedule.jsp";
	}

	// 안내 및 인원 지정 화면

	@RequestMapping("/pay3.do")
	public String pay3_form(Model model,int pidx,String pmainimg) {
		System.out.println(pidx);
		List<ProductVO> list = product_dao.selectList();

		model.addAttribute("list", list);

		ProductVO vo = product_dao.selectOne(pidx);
		model.addAttribute("vo", vo);
		
		return MyCommon.USER_VIEW_PATH + "home3.jsp";
	}

	// 결제 관련 입력 화면

	@RequestMapping("/pay4.do")
	public String pay4_form(Model model) {
		// dao로부터 목록 조회
		List<ProductVO> list = product_dao.selectList();

		model.addAttribute("list", list);
		
		return MyCommon.USER_VIEW_PATH + "home4.jsp";
	}

	@RequestMapping("/pay5.do")
	public String pay5_form() {
		return MyCommon.USER_VIEW_PATH + "home5.jsp";
	}

	@RequestMapping("/pay6.do")
	public String pay7_form() {
		return MyCommon.USER_VIEW_PATH + "home6.jsp";
	}

}
