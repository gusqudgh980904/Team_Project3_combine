package kr.co.ss.product.service;

import java.util.List;

import kr.co.ss.product.dao.ProductDAO;
import kr.co.ss.product.domain.ProductDetailUserDomain;
import kr.co.ss.product.domain.ProductListUserDomain;

public class ProductService {

	/**
	 * ���� ���
	 * @return
	 */
	public List<ProductListUserDomain> selectProductListTopUser(){
		ProductDAO pDAO = new ProductDAO();
		
		return pDAO.selectProductListTopUser();
	}//selectProductListTopUser
	
	/**
	 * ���� ���
	 * @return
	 */
	public List<ProductListUserDomain> selectProductListBotUser(){
		ProductDAO pDAO = new ProductDAO();
		
		return pDAO.selectProductListBotUser();
	}//selectProductListBotUser
	
	/**
	 * ��ǰ ��
	 * @return
	 */
	public ProductDetailUserDomain selectProductDetailUser(int prod_num){
		ProductDAO pDAO = new ProductDAO();
		
		return pDAO.selectProductDetailUser(prod_num);
	}//selectProductDetailUser
	
}//class
