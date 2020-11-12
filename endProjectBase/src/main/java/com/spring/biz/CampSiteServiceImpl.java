package com.spring.biz;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.biz.vo.CampRecommendVO;
import com.spring.biz.vo.CampSelectVO;
import com.spring.biz.vo.CampSiteVO;

@Service("campSiteService") 
public class CampSiteServiceImpl implements CampSiteService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int campSiteUpload(CampSiteVO campSiteVO) {
		return sqlSession.insert("campSiteUpload", campSiteVO);
	}
	
	@Override
	public int campSiteDelte() {
		return sqlSession.delete("campSiteDelte");
	}

	@Override
	public List<CampSiteVO> campSiteList(CampSiteVO campSiteVO) {
		return sqlSession.selectList("campSiteList", campSiteVO);
	}

	@Override
	public int campSiteCnt(CampSiteVO campSiteVO) {
		return sqlSession.selectOne("campSiteCnt", campSiteVO);
	}
	
	@Override
	public CampSiteVO detailCampSite(CampSiteVO campSiteVO) {
		return sqlSession.selectOne("detailCampSite", campSiteVO);
	}

	@Override
	public List<CampSiteVO> selectDoNm() {
		return sqlSession.selectList("selectDoNm");
	}

	@Override
	public List<CampSiteVO> selectSigunguNm(String doNm) {
		return sqlSession.selectList("selectSigunguNm", doNm);
	}
	
	@Override
	public List<CampSiteVO> selectFacltNm(CampSiteVO campSiteVO) {
		return sqlSession.selectList("selectFacltNm", campSiteVO);
	}

	@Override
	public int viewCnt(CampSiteVO campSiteVO) {
		return sqlSession.update("viewCnt", campSiteVO);
	}

	@Override
	public int totalCampSiteCnt() {
		return sqlSession.selectOne("totalCampSiteCnt");
	}

	@Override
	public int insertSelect(CampSelectVO campSelectVO) {
		return sqlSession.insert("insertSelect", campSelectVO);
	}

	@Override
	public boolean isAlreadyExist(CampSelectVO campSelectVO) {
		CampSelectVO result = sqlSession.selectOne("isAlreadyExist", campSelectVO);
		return result == null ? false : true;
	}

//	@Override
//	public List<CampSelectVO> callSelectCamp(int memberNum) {
//		return sqlSession.selectList("callSelectCamp", memberNum);
//	}

	@Override
	public int deleteSelect(CampSelectVO campSelectVO) {
		return sqlSession.delete("deleteSelect", campSelectVO);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void insertRecommend(CampRecommendVO campRecommendVO) {
		sqlSession.insert("insertRecommend", campRecommendVO);
		increaseRecoCnt(campRecommendVO);
		 
	}

	@Override
	public boolean checkRecommend(CampRecommendVO campRecommendVO) {
		CampRecommendVO result = sqlSession.selectOne("checkRecommend", campRecommendVO);
		return result == null ? false : true;
	}

	@Override
	public int increaseRecoCnt(CampRecommendVO campRecommendVO) {
		return sqlSession.update("increaseRecoCnt", campRecommendVO);
	}



	
	
}












