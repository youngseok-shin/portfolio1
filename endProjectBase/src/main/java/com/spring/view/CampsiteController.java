package com.spring.view;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import com.spring.biz.BoardService;
import com.spring.biz.CampSiteService;
import com.spring.biz.vo.BoardVO2;
import com.spring.biz.vo.CampRecommendVO;
import com.spring.biz.vo.CampSelectVO;
import com.spring.biz.vo.CampSiteVO;
import com.spring.biz.vo.MemberVO;

@Controller
public class CampsiteController {
	@Resource(name = "campSiteService")
	CampSiteService campservice;
	
	@Resource(name = "BoardService")
	BoardService boardService;

	
	//일반 검색
	@RequestMapping(value = "/campSearch.do")
	public String searchPage(Model model
			, CampSiteVO campSiteVO
			, @RequestParam(defaultValue = "MODIFIEDTIME DESC") String selDetails
			, @RequestParam(defaultValue = "") String doNm
			, @RequestParam(defaultValue = "") String sigunguNm
			, @RequestParam(required = false, defaultValue = "") String facltNm
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			) {
		campSiteVO.setDoNm(doNm);
		campSiteVO.setSigunguNm(sigunguNm);
		campSiteVO.setFacltNm(facltNm);
		campSiteVO.setSelDetails(selDetails);
		
		//페이징리 코드
		int listCnt = campservice.campSiteCnt(campSiteVO);
		campSiteVO.pageInfo(page, range, listCnt);
		
		//페이징 코드
		//캠핑장 갯수 출력
		model.addAttribute("campSiteCnt", listCnt);
		
		
		//캠핑장 아이콘 뽑기
		List<CampSiteVO> campSite = campservice.campSiteList(campSiteVO);
		
		for (int i = 0; i < campSite.size(); i++) {
			campSite.get(i).setArrSbrsCl(campSite.get(i).getSbrsCl());
		}
		model.addAttribute("campList", campSite);

		//업데이트순,조회순 ...
		model.addAttribute("selDetails", campSiteVO.getSelDetails());
		
		//시, 군, 구 출력
		model.addAttribute("doNmList", campservice.selectDoNm());
		
		return "campsite/campSearch";
	}
	
	//지도로 검색
	@RequestMapping(value = "/mapSearch.do")
	public String mapSearch(Model model
			, CampSiteVO campSiteVO
			, @RequestParam(defaultValue = "MODIFIEDTIME DESC") String selDetails
			, @RequestParam(defaultValue = "") String doNm
			, @RequestParam(defaultValue = "") String sigunguNm
			, @RequestParam(required = false, defaultValue = "") String facltNm
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			) {
		campSiteVO.setDoNm(doNm);
		campSiteVO.setSigunguNm(sigunguNm);
		campSiteVO.setFacltNm(facltNm);
		campSiteVO.setSelDetails(selDetails);
		campSiteVO.setRangeSize(5);

		//페이징리 코드
		int listCnt = campservice.campSiteCnt(campSiteVO);
		campSiteVO.pageInfo(page, range, listCnt);
		
		//페이징 코드
		//캠핑장 갯수 출력
		model.addAttribute("campSiteCnt", listCnt);
		
//		//캠핑장 갯수 출력
//		model.addAttribute("campSiteCnt", campservice.campSiteCnt(campSiteVO));
		
		//업데이트순,조회순 ...
		model.addAttribute("selDetails", campSiteVO.getSelDetails());
		
		//캠핑장 리스트 뽑기
		model.addAttribute("camps", campservice.campSiteList(campSiteVO));
		
		//시, 군, 구 출력
		model.addAttribute("doNmList", campservice.selectDoNm());
		
		return "campsite/mapSearch";
	}
	
	//캠핑장 상세보기
   @RequestMapping(value = "/detailCamp.do")
   public String detailCamp(CampSiteVO campSiteVO, Model model, HttpSession session, BoardVO2 boardVO2) throws IOException, ParserConfigurationException, SAXException {
	   
	   MemberVO membervo = (MemberVO)session.getAttribute("loginInfo");
	   CampSiteVO vo = campservice.detailCampSite(campSiteVO);
	   if (vo.getSbrsCl() != null && vo.getSbrsCl().equals("")) {
		   String[] sbrsCl = vo.getSbrsCl().split(",");
		   model.addAttribute("arrsbrsCl", sbrsCl);
	   }
	   //상세설명 불러오기
	   model.addAttribute("detail", campservice.detailCampSite(campSiteVO));
	   //상세 이미지 불러오기
	   model.addAttribute("imgApi", imgApi(campSiteVO.getContentId()));
	   //여행 후기 리스트 불러오기
	   boardVO2.setFacltNm(campSiteVO.getFacltNm());
	   model.addAttribute("campSearchReview", boardService.campSearchReview(boardVO2));
	   
	   //조회수 증가
	   campservice.viewCnt(campSiteVO);
	   
      return "campsite/detailCamp";
   }

   //지도보기 에서 페이징처리
   @ResponseBody
   @RequestMapping(value = "/mapPage.do")
   public void mapPage(CampSiteVO campSiteVO
			, @RequestParam(defaultValue = "MODIFIEDTIME DESC") String selDetails
			, @RequestParam(defaultValue = "") String doNm
			, @RequestParam(defaultValue = "") String sigunguNm
			, @RequestParam(required = false, defaultValue = "") String facltNm) {

   }
   
	//캠핑장 찜하기
   	@ResponseBody
	@RequestMapping(value = "/selectCamp.do")
	public boolean mapSearchPoint(CampSelectVO campSelectVO) {
		//campSelectVO.setCampNum(campNum);
		//campSelectVO.setMemberNum(memberNum);
   		boolean result = campservice.isAlreadyExist(campSelectVO);
		if (!result) {
			campservice.insertSelect(campSelectVO);
		}
		return result;
	}
  
   	//캠핑장 추천하기
   	@ResponseBody
   	@RequestMapping(value = "/selectRecommend.do")
   	public boolean insertRecommend(CampRecommendVO campRecommendVO) {
   		boolean result = campservice.checkRecommend(campRecommendVO);
   		if (!result) {
   			campservice.insertRecommend(campRecommendVO);
		}
   		return result;
   	}
   
	//시군구 ajax
   	@ResponseBody
	@RequestMapping(value = "/campSearchAjax.do")
	public List<CampSiteVO> campSearchAjax(String doNm) {
		
		return campservice.selectSigunguNm(doNm);
	}

//   	//시군구캠핑장 ajax
   	@ResponseBody
   	@RequestMapping(value = "/campSearchAjax2.do")
   	public List<CampSiteVO> campSearchAjax2(CampSiteVO campSiteVO) {
   		
   		return campservice.selectFacltNm(campSiteVO);
   	}
   
	//찜한 캠핑장 삭제
	@RequestMapping(value = "/deleteSelect.do")
	public String mapSearchPoint(CampSelectVO campSelectVO, Model model) {
		campservice.deleteSelect(campSelectVO);
		
		return "redirect:myPage.do?subMenu=subMenu1";
	}
   	
   
	//마커찍기
	@ResponseBody
	@RequestMapping(value = "/mapSearchPoint.do")
	public String mapSearchPoint(Model model
			, CampSiteVO campSiteVO
			, @RequestParam(defaultValue = "MODIFIEDTIME DESC") String selDetails
			, @RequestParam(defaultValue = "") String doNm
			, @RequestParam(defaultValue = "") String sigunguNm
			, @RequestParam(required = false, defaultValue = "") String facltNm
//			, @RequestParam(required = false, defaultValue = "1") int page
//			, @RequestParam(required = false, defaultValue = "1") int range
			) {
		
		campSiteVO.setDoNm(doNm);
		campSiteVO.setSigunguNm(sigunguNm);
		campSiteVO.setFacltNm(facltNm);
		campSiteVO.setSelDetails(selDetails);
		model.addAttribute("camps", campservice.campSiteList(campSiteVO));
		return "campsite/mapSearch";
	}
   
	
	
	
	
	
	
   
    //api 업로드
 	@RequestMapping(value = "/api.do")
 	public String api(CampSiteVO campSiteVO)  throws IOException, ParserConfigurationException, SAXException {
 			
 		campservice.campSiteDelte();
 		
		StringBuilder urlBuilder = new StringBuilder("http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/basedList"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8") + "=rvWealciQ1K%2FE3%2BbStYunJWHjajjlRGCcVu33pKQhQVkMwXG3U4EAvLMEzQgtSosXrSTiIFkt6iP0vbFVaXYfQ%3D%3D"); /* Service Key */
		urlBuilder.append("&" + URLEncoder.encode("ServiceKey", "UTF-8") + "=" + URLEncoder.encode("rvWealciQ1K%2FE3%2BbStYunJWHjajjlRGCcVu33pKQhQVkMwXG3U4EAvLMEzQgtSosXrSTiIFkt6iP0vbFVaXYfQ%3D%3D", "UTF-8")); /* 공공데이터포털에서 받은 인증키 */
		urlBuilder.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 현재 페이지번호 */
		urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "=" + URLEncoder.encode("2600", "UTF-8")); /* 한 페이지 결과 수 */
		urlBuilder.append("&" + URLEncoder.encode("MobileOS", "UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /* IOS(아이폰),AND(안드로이드),WIN(윈도우폰),ETC */
		urlBuilder.append("&" + URLEncoder.encode("MobileApp", "UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /* 서비스명=어플명 */

		DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
		Document xml = documentBuilder.parse(urlBuilder.toString());

		Element root = xml.getDocumentElement();
//		System.out.println(urlBuilder.toString()); //주소 비교 확인
		NodeList nodeList = root.getElementsByTagName("item");

		
		for (int i = 0; i < nodeList.getLength(); i++) {
			Node nodeItem = nodeList.item(i);
			
			try {
				int contentId			 = Integer.parseInt((getTagValue("contentId", (Element) nodeItem)));
				String facltNm		 	 = getTagValue("facltNm", (Element) nodeItem);
				String lineIntro		 = getTagValue("lineIntro", (Element) nodeItem);
				String intro			 = getTagValue("intro", (Element) nodeItem);
				String trsagntNo		 = getTagValue("trsagntNo", (Element) nodeItem);
				String doNm			 	 = getTagValue("doNm", (Element) nodeItem);
				String sigunguNm		 = getTagValue("sigunguNm", (Element) nodeItem);
				String addr1			 = getTagValue("addr1", (Element) nodeItem);
				String addr2			 = getTagValue("addr2", (Element) nodeItem);
				String zipcode		 	 = getTagValue("zipcode", (Element) nodeItem);
				String tel				 = getTagValue("tel", (Element) nodeItem);
				String sbrsCl		 	 = getTagValue("sbrsCl", (Element) nodeItem);
				String posblFcltyCl		 = getTagValue("posblFcltyCl", (Element) nodeItem);
				String themaEnvrnCl		 = getTagValue("themaEnvrnCl", (Element) nodeItem);
				String manageSttus	 	 = getTagValue("manageSttus", (Element) nodeItem);
				String induty			 = getTagValue("induty", (Element) nodeItem);
				String lctCl		 	 = getTagValue("lctCl", (Element) nodeItem);
				String facltDivNm	 	 = getTagValue("facltDivNm", (Element) nodeItem);
				double mapX			 	 = Double.parseDouble(getTagValue("mapX", (Element) nodeItem));
				double mapY				 = Double.parseDouble(getTagValue("mapY", (Element) nodeItem));
				String homepage			 = getTagValue("homepage", (Element) nodeItem);
				String resveCl			 = getTagValue("resveCl", (Element) nodeItem);
				String resveUrl			 = getTagValue("resveUrl", (Element) nodeItem);
				int gnrlSiteCo			 = Integer.parseInt(getTagValue("gnrlSiteCo", (Element) nodeItem));
				int autoSiteCo			 = Integer.parseInt(getTagValue("autoSiteCo", (Element) nodeItem));
				int glampSiteCo			 = Integer.parseInt(getTagValue("glampSiteCo", (Element) nodeItem));
				int caravSiteCo			 = Integer.parseInt(getTagValue("caravSiteCo", (Element) nodeItem));
				int indvdlCaravSiteCo	 = Integer.parseInt(getTagValue("indvdlCaravSiteCo", (Element) nodeItem));
				int siteBottomCl1		 = Integer.parseInt(getTagValue("siteBottomCl1", (Element) nodeItem));
				int siteBottomCl2		 = Integer.parseInt(getTagValue("siteBottomCl2", (Element) nodeItem));
				int siteBottomCl3		 = Integer.parseInt(getTagValue("siteBottomCl3", (Element) nodeItem));
				int siteBottomCl4		 = Integer.parseInt(getTagValue("siteBottomCl4", (Element) nodeItem));
				int siteBottomCl5		 = Integer.parseInt(getTagValue("siteBottomCl5", (Element) nodeItem));
				String animalCmgCl		 = getTagValue("animalCmgCl", (Element) nodeItem);
				String operPdCl			 = getTagValue("operPdCl", (Element) nodeItem);
				String operDeCl			 = getTagValue("operDeCl", (Element) nodeItem);
				String firstImageUrl	 = getTagValue("firstImageUrl", (Element) nodeItem);
				String createdtime		 = getTagValue("createdtime", (Element) nodeItem);
				String modifiedtime		 = getTagValue("modifiedtime", (Element) nodeItem);
				
				CampSiteVO vo = new CampSiteVO(contentId, facltNm, lineIntro, intro, trsagntNo, doNm, sigunguNm, addr1, addr2, zipcode, tel, sbrsCl, posblFcltyCl, themaEnvrnCl, manageSttus, induty, lctCl, facltDivNm, mapX, mapY, homepage, resveCl, resveUrl, gnrlSiteCo, autoSiteCo, glampSiteCo, caravSiteCo, indvdlCaravSiteCo, siteBottomCl1, siteBottomCl2, siteBottomCl3, siteBottomCl4, siteBottomCl5, animalCmgCl, operPdCl, operDeCl, firstImageUrl, createdtime, modifiedtime);
				campservice.campSiteUpload(vo);
			} catch (Exception e) {
			}
			
		}
		
 		
 		return "redirect:campSearch.do";
 	}
	
	
	
	//상세 이미지 api 데이터 불러오기
	public List<String> imgApi(int campNum)  throws IOException, ParserConfigurationException, SAXException {
		
		StringBuilder urlBuilder = new StringBuilder("http://api.visitkorea.or.kr/openapi/service/rest/GoCamping/imageList"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8") + "=rvWealciQ1K%2FE3%2BbStYunJWHjajjlRGCcVu33pKQhQVkMwXG3U4EAvLMEzQgtSosXrSTiIFkt6iP0vbFVaXYfQ%3D%3D"); /* Service Key */
//		urlBuilder.append("&" + URLEncoder.encode("ServiceKey", "UTF-8") + "=" + URLEncoder.encode("rvWealciQ1K%2FE3%2BbStYunJWHjajjlRGCcVu33pKQhQVkMwXG3U4EAvLMEzQgtSosXrSTiIFkt6iP0vbFVaXYfQ%3D%3D", "UTF-8")); /* 공공데이터포털에서 받은 인증키 */
//		urlBuilder.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 현재 페이지번호 */
//		urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /* 한 페이지 결과 수 */
		urlBuilder.append("&" + URLEncoder.encode("MobileOS", "UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /* IOS(아이폰),AND(안드로이드),WIN(윈도우폰),ETC */
		urlBuilder.append("&" + URLEncoder.encode("MobileApp", "UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8")); /* 서비스명=어플명 */
		urlBuilder.append("&" + URLEncoder.encode("contentId", "UTF-8") + "=" + URLEncoder.encode(Integer.toString(campNum), "UTF-8")); /* 콘텐츠ID */

		DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
		Document xml = documentBuilder.parse(urlBuilder.toString());
//		System.out.println(urlBuilder.toString()); //주소 비교 확인

		Element root = xml.getDocumentElement();
		NodeList nodeList = root.getElementsByTagName("item");
		
		List<String> apiImage = new ArrayList<>();
		for (int i = 0; i < nodeList.getLength(); i++) {
			Node nodeItem = nodeList.item(i);
			
			try {
				String imageUrl	 = getTagValue("imageUrl", (Element) nodeItem);
				String serialnum	 = getTagValue("serialnum", (Element) nodeItem);
				System.out.println(imageUrl + "@@@@@@@@@@@@@@@@@@");
				System.out.println(serialnum + "#######################");
				apiImage.add(imageUrl);
			} catch (Exception e) {
			}

		}
		
		return apiImage;
	}

	
	//xml 형태로 형변환
	static String getTagValue(String sTag, Element element) {
		try {
			String result = element.getElementsByTagName(sTag).item(0).getTextContent();
			return result;
		} catch (NullPointerException e) {
			return "";
		} catch (Exception e) {
			return "";
		}
	}

	
	
}










