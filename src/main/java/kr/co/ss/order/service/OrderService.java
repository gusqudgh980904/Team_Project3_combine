package kr.co.ss.order.service;
import java.util.ArrayList;
import java.util.List;
import kr.co.ss.order.dao.OrderDAO;
import kr.co.ss.order.domain.OrderDetailDomain;
import kr.co.ss.order.domain.OrderInfoDomain;
import kr.co.ss.order.vo.OrderInsertVO;


public class OrderService {
	
	/**
	 * ����ȭ�鿡�� ȸ���� ���������� �� �� �ִ� �ֹ�����â
	 * @param member_id
	 * @return
	 */
	public List<OrderDetailDomain> searchOrder(String member_id){
			List<OrderDetailDomain> list = new ArrayList<OrderDetailDomain>();
			OrderDAO oDAO = new OrderDAO();
			list = oDAO.selectOrder(member_id);
		return list;
	}
	
	public List<OrderInfoDomain> searchOrderInfo(String member_id){
		
		List<OrderInfoDomain> list = new ArrayList<OrderInfoDomain>();
		OrderDAO oDAO = new OrderDAO();
		list = oDAO.selectOrderInfo(member_id);
		
		return list;
	}
	
	/**
	 * �ֹ����� Insert
	 * @param oiVO
	 * @return
	 */
	public int addOrder(OrderInsertVO oiVO) { 
		int rowCnt = 0;
		OrderDAO od = new OrderDAO(); 
		rowCnt = od.insertOrder(oiVO);
		return rowCnt; 
	}//selectOrder
	
	
	
}//class
