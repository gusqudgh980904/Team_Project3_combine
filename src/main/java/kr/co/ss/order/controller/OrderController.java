package kr.co.ss.order.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.ss.order.domain.OrderDetailDomain;
import kr.co.ss.order.domain.OrderInfoDomain;
import kr.co.ss.order.service.OrderService;
import kr.co.ss.order.vo.OrderInsertVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

@Controller
@SessionAttributes("id")
public class OrderController {
	/**
	 * ����ȭ�鿡�� ȸ���� ���������� �� �� �ִ� �ֹ�����â
	 * @param member_id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/order/orderDetail.do",method=GET)
	public String detailOrder(Model model, HttpSession ss) {
		 
		String url ="";
		 List<OrderDetailDomain> list = new ArrayList<OrderDetailDomain>();
		 OrderService es=new OrderService();
		 
		 String member_id = (String) ss.getAttribute("id"); 
		 
		 if(member_id == null) { 
			 url = "prj3/login/login"; 
			 }else {
				 list = es.searchOrder(member_id);
				 model.addAttribute("selectOrder", list);
				 url = "prj3/order/orderDetail"; 
				 
			 }
		return url;
	}
	
	/**
	 * �ֹ��ϱ⸦ ������ �� �� �ִ� ���ų��� â 
	 * @param member_id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/order/orderInfo.do",method=POST)
public String simpleOrder(OrderInsertVO oiVO, Model model, HttpSession ss) {
	     int rowCnt = 0 ;
	     String url = "";
		 String member_id = (String) ss.getAttribute("id");
		 oiVO.setMember_id(member_id);
		 List<OrderInfoDomain> list = new ArrayList<OrderInfoDomain>();
		 
		 OrderService es=new OrderService(); 
		 //select
		 rowCnt = es.addOrder(oiVO);
		 //insert
		 if(rowCnt == 1) {
			list = es.searchOrderInfo(member_id); 
			model.addAttribute("InfoList",list);
			url = "prj3/order/orderInfo";
		 }
		 
		return "prj3/order/orderInfo";
	}
}
