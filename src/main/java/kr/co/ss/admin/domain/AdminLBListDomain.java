package kr.co.ss.admin.domain;



/**
 * �����ڰ� �Խ��ǰ����� ������ �� ������ �Խñ� ����Ʈ Ŭ����
 * @author sist
 */
public class AdminLBListDomain {
	private int lb_posts_num;
	private String lb_title;
	private String member_id;
	private String lb_write_date ;
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
	public String getLb_write_date() {
		return lb_write_date;
	}
	public void setLb_write_date(String lb_write_date) {
		this.lb_write_date = lb_write_date;
	}
	
	
	
	
}//class
