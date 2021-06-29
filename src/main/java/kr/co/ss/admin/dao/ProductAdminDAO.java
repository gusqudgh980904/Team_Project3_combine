package kr.co.ss.admin.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.ss.admin.domain.ProductDetailAdminDomain;
import kr.co.ss.admin.domain.ProductListAdminDomain;
import kr.co.ss.admin.vo.ProductDeleteVO;
import kr.co.ss.admin.vo.ProductInsertVO;
import kr.co.ss.admin.vo.ProductModifyVO;

/**
 * ��ǰ�� ���� ������ ���������� �����ϴ� Ŭ����
 * @author sist
 */

public class ProductAdminDAO {
	
	/**
	 * ��ǰ ��ü����
	 * @return
	 */
	public List<ProductListAdminDomain> selectProductAll(){
		List<ProductListAdminDomain> list=null;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		list=ss.selectList("kr.co.ss.admin.prodMapper.prodList");
		if(ss!=null) {ss.close();}
		
		return list;
	}//selectProductAll
	
	
	/**
	 * ��ǰ �ϳ�����
	 * @return
	 */
	public ProductDetailAdminDomain selectProductInfo(int prod_num){
		ProductDetailAdminDomain plad=null;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		plad=ss.selectOne("kr.co.ss.admin.prodMapper.prodInfo",prod_num);
		if(ss!=null) {ss.close();}
		
		return plad;
	}//selectProductAll
	
	
	/**
	 * ��ǰ�߰�
	 * @param piVO
	 * @return
	 */
	public int insertProduct(ProductInsertVO piVO) {
		int cnt=0;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		
		cnt=ss.insert("kr.co.ss.admin.prodMapper.insertProd",piVO);
		if(cnt==1) {
			ss.commit();
		}//if
		
		if(ss != null ) { ss.close(); }
		return cnt;
	}//insertProduct
	
	
	/**
	 * ��ǰ����
	 * @param pmVO
	 * @return
	 */
	public int updateProduct(ProductModifyVO pmVO) {
		int cnt=0;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		
		cnt=ss.update("kr.co.ss.admin.prodMapper.modifyProd",pmVO);
		if(cnt==1) {
			ss.commit();
		}//if
		
		if(ss != null ) { ss.close(); }
		return cnt;
	}//updateProduct
	
	
	/**
	 * ��ǰ����
	 * @param pdVO
	 * @return
	 */
	public int deleteProduct(ProductDeleteVO pdVO) {
		int cnt=0;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		
		cnt=ss.update("kr.co.ss.admin.prodMapper.deleteProd",pdVO);
		if(cnt==1) {
			ss.commit();
		}//if
		
		if(ss != null ) { ss.close(); }
		return cnt;
	}//deleteProduct
	
	
}//class
