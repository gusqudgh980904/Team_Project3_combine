package kr.co.ss.member.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PopupController {
	
	
	/**
	 * ���� �˾�â
	 * @return
	 */
	@RequestMapping(value = "/login/fail.do", method = GET)
	public String loginFailPopup() {
		
		return "prj3/login/process/fail";
	}
	
	/**
	 * ��й�ȣ ������� �˾�â
	 * @return
	 */
	@RequestMapping(value = "/login/password_fail.do", method = GET)
	public String pwFailPopup() {
		
		return "prj3/login/process/member_fail";
	}
	
	/**
	 * ��й�ȣ ���漺�� �˾�â
	 * @return
	 */
	@RequestMapping(value = "/login/password_success.do", method = GET)
	public String pwSuccessPopup() {
		
		return "prj3/login/process/member_update";
	}
	
	/**
	 * ȸ��Ż�� �˾�â
	 * @return
	 */
	@RequestMapping(value = "/login/withdrawal_success.do", method = GET)
	public String withdrawalPopup() {
		
		return "prj3/login/process/member_secession";
	}
	
	/**
	 * ȭ������ �ߺ�Ȯ��
	 * @return
	 */
	@RequestMapping(value = "/login/idCheck.do", method = GET)
	public String idCheckPopup() {
		
		return "prj3/login/process/id_check";
	}
	
	/**
	 * ���̵� ã�� ����
	 * @return
	 */
	@RequestMapping(value = "/login/idFindSuccess.do", method = GET)
	public String idFindSuccessPopup() {

		return "prj3/login/process/id_find";
	}
	
	/**
	 * ��й�ȣ ã�� ����
	 * @return
	 */
	@RequestMapping(value = "/login/pwFindSuccess.do", method = GET)
	public String pwFindSuccessPopup() {

		return "prj3/login/process/pw_find";
	}
	
	

}
