package com.spring.biz;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.biz.vo.CartListVO;
import com.spring.biz.vo.CartVO;
import com.spring.biz.vo.ImageVO;
import com.spring.biz.vo.ShopVO;

@Service("ShopService") 
public class ShopServiceImpl implements ShopService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertShopGoods(ShopVO shopVO) {
	
		return sqlSession.insert("insertShopGoods",shopVO);
	}

	@Override
	public List<ShopVO> selectShopGoodsList() {
		
		return sqlSession.selectList("selectShopGoodsList");
	}

	@Override
	public ShopVO selectShopGoods(ShopVO shopVO) {
	
		return sqlSession.selectOne("selectShopGoods",shopVO);
	}

	@Override
	public int insertCart(CartVO cartVO) {
		
		return sqlSession.insert("insertCart",cartVO);
	}

	@Override
	public List<CartListVO> selectCartList(CartListVO cartListVO) {
		
		return sqlSession.selectList("selectCartList",cartListVO);
	}

	@Override
	public CartListVO selectTotalPrice(CartListVO cartListVO) {
	
		return sqlSession.selectOne("selectTotalPrice",cartListVO);
	}

	@Override
	public void deleteCart(CartListVO cartListVO) {
		
		sqlSession.delete("deleteCart",cartListVO);
		
	}

	@Override
	public void deleteEach(CartListVO cartListVO) {
		sqlSession.delete("deleteEach",cartListVO);
	}

	@Override
	public List<CartListVO> selectGotoBuy(CartListVO cartListVO) {
	
		return sqlSession.selectList("selectGotoBuy",cartListVO);
	}

	@Override
	public ShopVO shopOneBuy(ShopVO shopVO) {
			return sqlSession.selectOne("shopOneBuy",shopVO);
	}

	@Override
	public int updateProduct(ShopVO shopVO) {

		return sqlSession.update("updateProduct",shopVO);
	}
	
	@Override
	public int deleteProduct(ShopVO shopVO) {
	
		return sqlSession.delete("deleteProduct", shopVO);
	}
	
	@Override
	public int getMaxId() {
		return sqlSession.selectOne("getMaxId");
	}

	@Override
	public void insertImage(ImageVO imageVO) {
		sqlSession.insert("shopMapper.insertImage", imageVO);
	}

	@Override
	public List<ImageVO> selectShopImages(ImageVO imageVO) {
		return sqlSession.selectList("selectShopImages", imageVO);
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int insertShopGoods(ShopVO shopVO, ImageVO imageVO) {
		sqlSession.insert("insertShopGoods",shopVO);
		insertImage(imageVO);
		return 0;
	}
}












