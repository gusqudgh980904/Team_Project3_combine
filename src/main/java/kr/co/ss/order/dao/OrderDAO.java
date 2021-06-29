package kr.co.ss.order.dao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

import kr.co.ss.order.domain.OrderDetailDomain;
import kr.co.ss.order.domain.OrderInfoDomain;
import kr.co.ss.order.vo.OrderInsertVO;


/**
 * �ֹ��� ���� ������ ���������� �����ϴ� Ŭ����
 * @author sist
 */
public class OrderDAO {
	
		/**
		 * ����ȭ�鿡�� ȸ���� ���������� �� �� �ִ� �ֹ�����â
		 * @param member_id
		 * @return
		 */
		public List<OrderDetailDomain> selectOrder(String member_id) {
			
			List<OrderDetailDomain> list = new ArrayList<OrderDetailDomain>();
			
			SqlSession ss = kr.co.ss.connection.MyBatisHandler.getInstance().getHandler();	
			
			list =ss.selectList("kr.co.ss.order.mapper.selectOrder", member_id);
			
			if( ss != null ) { ss.close(); } //end if
			
			return list;
		}
		
		/**
		 * ���Ź�ư�� ������ �� �� �մ� ���ų���
		 * @param member_id
		 * @return
		 */
		public List<OrderInfoDomain> selectOrderInfo(String member_id) {
			
			List<OrderInfoDomain> list = new ArrayList<OrderInfoDomain>();
			
			SqlSession ss = kr.co.ss.connection.MyBatisHandler.getInstance().getHandler();	
			
			list =ss.selectList("kr.co.ss.order.mapper.selectinfoOrder", member_id);
			
			if( ss != null ) { ss.close(); } //end if
			
			return list;
		}
	
	/**
	 * �ֹ����� ����(INSERT)
	 * @param osVO
	 * @throws SQLException
	 */
		public int insertOrder(OrderInsertVO oiVO) {
			
			int rowCnt=0;
			//MyBatis Handler���
			SqlSession ss = kr.co.ss.connection.MyBatisHandler.getInstance().getHandler();
			rowCnt = ss.insert("kr.co.ss.order.mapper.insertOrder",oiVO);
			
			if(rowCnt ==1 ) {
				ss.commit();
			}//end if
			
			if(ss != null ){ss.close();} //end if
			
			return rowCnt;
		}//insertOrder
		
		
}//class
