package com.spring.view;

import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.biz.ShopService;
import com.spring.biz.vo.CartListVO;
import com.spring.biz.vo.CartVO;
import com.spring.biz.vo.ImageVO;
import com.spring.biz.vo.MemberVO;
import com.spring.biz.vo.ShopVO;

@Controller
public class ShopController {
	@Resource(name = "ShopService")
	ShopService shopService;

	// 첫 쇼핑몰 페이지
	@GetMapping("/shopMain.do")
	public String shopMain(Model model) {
		
	
		
		
		return "shop/shopMain";
	}

	// shop now 누르면 쇼핑몰 리스트
	@GetMapping("/shopList.do")
	public String shopList(Model model) {

		model.addAttribute("goods", shopService.selectShopGoodsList());
		
		
		return "shop/shopList";
	}

	// 리스트에서 하나하나 상품클릭시
	@GetMapping("/shopPage.do")
	public String shopPage(Model model, ShopVO shopVO, ImageVO imageVO,CartListVO cartListVO) {
		ShopVO vo = shopService.selectShopGoods(shopVO);
		model.addAttribute("goods", vo);
		model.addAttribute("selectShopImages", shopService.selectShopImages(imageVO));
		//색상 정보를 리스트로 변환
		String[] colors = vo.getGoodsColor().split(",");
		model.addAttribute("colors", Arrays.asList(colors));
			
		return "shop/shopPage";
	}


	// 장바구니 페이지
	@GetMapping("/shopCart.do")
	public String shopCart(Model model, ShopVO shopVO, CartListVO cartListVO, HttpSession session, CartVO cartVO) {
		String memberId = ((MemberVO) session.getAttribute("loginInfo")).getMemberId();
		cartListVO.setMemberId(memberId);
		model.addAttribute("cartList", shopService.selectCartList(cartListVO));
		model.addAttribute("total", shopService.selectTotalPrice(cartListVO));

		return "shop/shopCart";
	}

	// 구매하기가기
	@GetMapping("/shopBuy.do")
	public String shopBuy(Model model, CartListVO cartListVO, HttpSession session,String[] cartIdes ) {
		
		
		List<String> cartIdList = Arrays.asList(cartIdes);

		cartListVO.setCartIdList(cartIdList);
		
		
		model.addAttribute("goods", shopService.selectGotoBuy(cartListVO));
		
		String memberId = ((MemberVO) session.getAttribute("loginInfo")).getMemberId();

		cartListVO.setMemberId(memberId);
		model.addAttribute("total", shopService.selectTotalPrice(cartListVO));

		return "shop/shopBuy";
	}

	// 상품업로드
	@GetMapping("/shopBoard.do")
	public String shopBoard() {
		return "shop/shopBoard";
	}
	
	// 상품바로구매하기 not list
	@GetMapping("/shopOneBuy.do")
	public String shopOneBuy(Model model,ShopVO shopVO) {
		
		model.addAttribute("goodsCnt",shopVO.getGoodsCnt());
		model.addAttribute("goodsColor",shopVO.getGoodsColor());
		model.addAttribute("goods",shopService.shopOneBuy(shopVO));
		return "shop/shopOneBuy";
	}

//	// 상품업로드 등록 insert
	@RequestMapping(value = "/shopBoardInsert.do")
	public String shopBoardInsert(ShopVO shopVO) {
		shopService.insertShopGoods(shopVO);

		return "redirect:shopList.do";
	}

	// (관리자페이지에서)상품업로드 등록 insert
	@RequestMapping(value = "/shopBoardInsert2.do")
	public String shopBoardInsert2(ShopVO shopVO, ImageVO imageVO, Model model, HttpSession session, MultipartHttpServletRequest multi) throws Exception {
		
		//파일 첨부 후 첨부된 파일명의 List를 전달
		List<String> attachedFileNames = attachFile(multi);
		//goodsId값 지정
		int goodsId = shopService.getMaxId();
		shopVO.setGoodsId(goodsId);
		
		//memderId 값 지정
		String memberId = ((MemberVO)session.getAttribute("loginInfo")).getMemberId();
		shopVO.setMemberId(memberId);

		//--SHOPPING_IMAGE 테이블에 INSERT를 하기 위한 파라메터 설정--//
		List<ImageVO> imageList = new ArrayList<>();
		for(int i = 0 ; i < attachedFileNames.size() ; i++) {
			ImageVO vo = new ImageVO();
			String imageId = "IMG" + getNowDateTime() +(i + 1);
			vo.setImageId(imageId);
			vo.setGoodsId(goodsId);
			vo.setFileName(attachedFileNames.get(i));
			vo.setMemberId(memberId);
			imageList.add(vo);
		}
		
		imageVO.setImageList(imageList);
		shopService.insertShopGoods(shopVO, imageVO);
		//shopService.insertImage(imageVO);
		return "redirect:admin.do";
	}
	
	// 장바구니등록
	@ResponseBody
	@RequestMapping(value = "/insertCart.do")
	public void insertCart(CartVO cartVO, HttpSession session, Model model) {

		String memberId = ((MemberVO) session.getAttribute("loginInfo")).getMemberId();

		cartVO.setMemberId(memberId);

		shopService.insertCart(cartVO);

	}

	// 장바구니 선택상품 지우기
	@RequestMapping(value = "/deleteCart.do")
	public String deleteCart(CartListVO cartListVO, String[] cartIds) {

		List<String> cartIdList = Arrays.asList(cartIds);

		cartListVO.setCartIdList(cartIdList);

		shopService.deleteCart(cartListVO);

		return "redirect:shopCart.do";
	}

	// 지우기 옆에꺼 각각누르면
	@RequestMapping(value = "/deleteEach.do")
	public String deleteEach(CartVO cartVO, HttpSession session, Model model, CartListVO cartListVO) {

		shopService.deleteEach(cartListVO);

		return "redirect:shopCart.do";
	}

	

	// 주문완료 페이지
	@RequestMapping(value = "/shopOrderCompleted.do")
	public String shopOrderCompleted() {
		

		return "shop/shopOrderCompleted";
	}
	

	//상품 수정
	@RequestMapping(value = "/shopRewriteBoard.do")
	public String shopRewriteBoard(Model model,ShopVO shopVO) {
		ShopVO vo = shopService.selectShopGoods(shopVO);
		model.addAttribute("goods", shopService.selectShopGoods(shopVO));
		//색상 정보를 리스트로 변환
		String[] colors = vo.getGoodsColor().split(",");
		model.addAttribute("colors", Arrays.asList(colors));
		return "shop/shopRewriteBoard";
	}
	
	//상품 수정 업데이트
		@RequestMapping(value = "/shopRewriteBoard1.do")
		public String shopRewriteBoard1(Model model,ShopVO shopVO) {
			
			shopService.updateProduct(shopVO);
			
			return  "redirect:shopList.do";
		}
		
		//상품 삭제
		@RequestMapping(value = "/deleteProduct.do")
		public String deleteProduct(Model model,ShopVO shopVO) {
			
			shopService.deleteProduct(shopVO);
			
			return  "redirect:shopList.do";
		}

				
		//파일첨부 메소드
		public List<String> attachFile(MultipartHttpServletRequest multi) throws Exception {
			//원본 첨부파일 이름이 담길 변수
			String originFileName = "";
			//현재 시간 데이터를 담을 변수
			String nowDate = getNowDateTime();
			//리턴시킬 첨부파일명이 담긴 리스트 생성
			List<String> fileList = new ArrayList<>();
			
			//첨부파일에 대한 encoding  설정
			multi.setCharacterEncoding("UTF-8");
			
			//multipartRequest에서 첨부파일에 대한 데이터를 받아온다.
			Iterator<String> enu = multi.getFileNames();
			
			//첨부파일 데이터가 존재하면 첨부파일 개수만큼 반복한다.
			while(enu.hasNext()) {
				//첨부파일의 정보를 하나씩 차례대로 꺼낸다. 
				String fileName = enu.next();
				System.out.println(fileName);
				
				//단일 첨부파일 일때
				if(fileName.equals("file1")) {
					//실제 파일명(업로드되는 파일명)
					String realName = "";
					//하나씩 꺼낸 정보를 통해 실제 파일을 받아온다.
					MultipartFile mf = multi.getFile(fileName);
					//실제 받아온 첨부파일 정보에서 원본파일의 이름을 받아온다.
					originFileName = mf.getOriginalFilename();
					//실제파일명을 현재날짜_원본파일 형태의 이름으로 지정
					realName = nowDate + "_" + originFileName;
					
					File file = new File("D:\\uploadFile\\images");
					
					//첨부파일의 용량이 0이 아니면
					if(mf.getSize() != 0) {
						if(!file.exists()) {
							file.mkdirs();
						}
						//해당하는 경로에 첨부파일을 업로드한다.
						mf.transferTo(new File("D:\\uploadFile\\images\\" + realName));
						fileList.add(realName);
					}
				}
				//다중 첨부파일 일때
				else if(fileName.equals("file2")) {
					List<MultipartFile> mfList = multi.getFiles(fileName);
					String realName = "";
					
					for(MultipartFile mf : mfList) {
						originFileName = mf.getOriginalFilename();
						realName = nowDate + "_" + originFileName;
						File file = new File("D:\\uploadFile\\images");
						
						//첨부파일의 용량이 0이 아니면
						if(mf.getSize() != 0) {
							if(!file.exists()) {
								file.mkdirs();
							}
							//해당하는 경로에 첨부파일을 업로드한다.
							mf.transferTo(new File("D:\\uploadFile\\images\\" + realName));
							fileList.add(realName);
						}
					}
				}
			}
			return fileList;
		}
				
		//현재날짜 및 시분초 가져오는 메소드
		public String getNowDateTime() {
			//Calendar 객체 생성
			Calendar cal = Calendar.getInstance();
			
			String year = cal.get(Calendar.YEAR) + "";
			String month = cal.get(Calendar.MONTH) + 1 + "";
			String day = cal.get(Calendar.DAY_OF_MONTH) + "";
			String hour = cal.get(Calendar.HOUR) + "";
			String minute = cal.get(Calendar.MINUTE) + "";
			String second = cal.get(Calendar.SECOND) + "";
			
			return year + month + day + hour + minute + second;
		}
		//현재날짜 가져오는 메소드
		public String getNowDate() {
			//Calendar 객체 생성
			Calendar cal = Calendar.getInstance();
			DecimalFormat df = new DecimalFormat("00");
			String year = df.format(cal.get(Calendar.YEAR));
			String month = df.format(cal.get(Calendar.MONTH )+1);
			String day = df.format(cal.get(Calendar.DAY_OF_MONTH));
			
			return year + "-" + month + "-" + day;
		}
				
}
