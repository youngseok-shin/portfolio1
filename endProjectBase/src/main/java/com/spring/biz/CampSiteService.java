package com.spring.biz;

import java.util.List;

import com.spring.biz.vo.CampRecommendVO;
import com.spring.biz.vo.CampSelectVO;
import com.spring.biz.vo.CampSiteVO;

public interface CampSiteService {

	//캠핑장 업로드
	int campSiteUpload(CampSiteVO campSiteVO);
	int campSiteDelte();
	
	//캠핑장 리스트 불러오기
	List<CampSiteVO> campSiteList(CampSiteVO campSiteVO);
		//총갯수 불러오기
		int totalCampSiteCnt();
	
	//시,도,군,구,캠핑장 리스트 불러오기
	List<CampSiteVO> selectDoNm();
	List<CampSiteVO> selectSigunguNm(String doNm);
	List<CampSiteVO> selectFacltNm(CampSiteVO campSiteVO);
	
	
	//캠핑장 갯수 불러오기
	int campSiteCnt(CampSiteVO campSiteVO);
	
	//캠핑장 디테일 설명
	CampSiteVO detailCampSite(CampSiteVO campSiteVO);
	
	//조회수 증가
	int viewCnt(CampSiteVO campSiteVO);
	
	//캠핑장 찜하기
	int insertSelect(CampSelectVO campSelectVO);
	
	//캠핑장 찜 했는지 체크
	boolean isAlreadyExist(CampSelectVO campSelectVO);
	
//	//찜 목록 불러오기 멤버서비스에 있음
//	List<CampSelectVO> callSelectCamp(int memberNum);
	
	//찜 목록 삭제하기
	int deleteSelect(CampSelectVO campSelectVO);
	
	//캠핑장 추천하기
	void insertRecommend(CampRecommendVO campRecommendVO);
	//캠핑장 추천 했는지 체크
	boolean checkRecommend(CampRecommendVO campRecommendVO);
	//추천수 증가
	int increaseRecoCnt(CampRecommendVO campRecommendVO);
	
}




















