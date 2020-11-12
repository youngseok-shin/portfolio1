package com.spring.biz;

import java.util.List;

import com.spring.biz.vo.CartListVO;
import com.spring.biz.vo.CartVO;
import com.spring.biz.vo.ImageVO;
import com.spring.biz.vo.ShopVO;

public interface ShopService {

	int insertShopGoods(ShopVO shopVO);

	List<ShopVO> selectShopGoodsList();

	ShopVO selectShopGoods(ShopVO shopVO);

	int insertCart(CartVO cartVO);

	List<CartListVO> selectCartList(CartListVO cartListVO);
	
	
	CartListVO selectTotalPrice(CartListVO cartListVO);
	
	void deleteCart(CartListVO cartListVO);
	
	void deleteEach(CartListVO cartListVO);
	
	List<CartListVO> selectGotoBuy(CartListVO cartListVO);
	
	ShopVO shopOneBuy(ShopVO shopVO);
	
	int updateProduct(ShopVO shopVO);
	
	int deleteProduct(ShopVO shopVO);
	
	//상품ID 조회(순번매기기)
	int getMaxId();
	//이미지 삽입
	void insertImage(ImageVO imageVO);
	//상세이미지 조회
	List<ImageVO> selectShopImages(ImageVO imageVO);
	int insertShopGoods(ShopVO shopVO, ImageVO imageVO);
}
