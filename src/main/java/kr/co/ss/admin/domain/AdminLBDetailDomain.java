package kr.co.ss.admin.domain;

import java.sql.Clob;

/**
 * �������� ��� �Խñ� ����ȸ Ŭ����
 * @author sist
 */
public class AdminLBDetailDomain {
	private int lb_posts_num;
	private String lb_title;
	private String member_id;
	private Clob lb_contents;
	public int getLb_posts_num() {
		return lb_posts_num;
	}
	public void setLb_posts_num(int lb_posts_num) {
		this.lb_posts_num = lb_posts_num;
	}
	public String getLb_title() {
		return lb_title;
	}
	public void setLb_title(String lb_title) {
		this.lb_title = lb_title;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public Clob getLb_contents() {
		return lb_contents;
	}
	public void setLb_contents(Clob lb_contents) {
		this.lb_contents = lb_contents;
	}
	
	


	
}//class
