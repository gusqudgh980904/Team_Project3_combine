package kr.co.ss.product.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.ss.connection.MyBatisHandler;
import kr.co.ss.product.domain.ProductDetailUserDomain;
import kr.co.ss.product.domain.ProductListUserDomain;

public class ProductDAO {

	public ProductDAO() {
		org.apache.ibatis.logging.LogFactory.useLog4JLogging();
	}//ProductDAO
	
	
	/**
	 * ���� ���
	 * @return
	 */
	public List<ProductListUserDomain> selectProductListTopUser(){
		List<ProductListUserDomain> list=null;
		//1. MyBatis Handler ���
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		//2. id�� �ش��ϴ� ������ ã�Ƽ� ������ �� ��� ���
		list = ss.selectList("kr.co.ss.product.productListUserMapper.productListTopUser");
		//3. �������
		if(ss!=null) {ss.close();}//end if
		
		return list;
	}//selectProductListTopUser
	
	/**
	 * ���� ���
	 * @return
	 */
	public List<ProductListUserDomain> selectProductListBotUser(){
		List<ProductListUserDomain> list=null;
		//1. MyBatis Handler ���
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		//2. id�� �ش��ϴ� ������ ã�Ƽ� ������ �� ��� ���
		list = ss.selectList("kr.co.ss.product.productListUserMapper.productListBotUser");
		//3. �������
		if(ss!=null) {ss.close();}//end if
		
		return list;
	}//selectProductListBotUser
	
	/**
	 * ��ǰ ��
	 * @return
	 */
	public ProductDetailUserDomain selectProductDetailUser(int prod_num){
		ProductDetailUserDomain pduDomain = null;
		//1. MyBatis Handler ���
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		//2. id�� �ش��ϴ� ������ ã�Ƽ� ������ �� ��� ���
		pduDomain = ss.selectOne("kr.co.ss.product.productDetailUserMapper.productDetailUser", prod_num);
		//3. �������
		if(ss!=null) {ss.close();}//end if	
		
		return pduDomain;
	}//selectProductDetailUser
	
	
}//class
