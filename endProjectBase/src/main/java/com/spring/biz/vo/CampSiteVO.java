package com.spring.biz.vo;

import java.util.Arrays;
import java.util.List;

public class CampSiteVO extends Pagination{
	
	private int campNum;
	private int reviewCnt;
	private int viewsCnt;
	private int recoCnt;
	private int contentId;
	private String facltNm;
	private String lineIntro;
	private String intro;
	private String trsagntNo;
	private String doNm;
	private String sigunguNm;
	private String addr1;
	private String addr2;
	private String zipcode;
	private String tel;
	private String sbrsCl;
	private String posblFcltyCl;
	private String themaEnvrnCl;
	private String manageSttus;
	private String induty;
	private String lctCl;
	private String facltDivNm;
	private double mapX;
	private double mapY;
	private String homepage;
	private String resveCl	;
	private String resveUrl;
	private int gnrlSiteCo;
	private int autoSiteCo;
	private int glampSiteCo;
	private int caravSiteCo;
	private int indvdlCaravSiteCo;
	private int siteBottomCl1;
	private int siteBottomCl2;
	private int siteBottomCl3;
	private int siteBottomCl4;
	private int siteBottomCl5;
	private String animalCmgCl;
	private String operPdCl;
	private String operDeCl;
	private String firstImageUrl; 
	private String createdtime;
	private String modifiedtime;
	private List<CampSiteVO> campApiList;
	private List<String> arrSbrsCl;
	private String selDetails;
	private int rowNum;
	
	
	public CampSiteVO() {
	}
	
	
	public CampSiteVO(int contentId, String facltNm,
			String lineIntro, String intro, String trsagntNo, String doNm, String sigunguNm, String addr1, String addr2,
			String zipcode, String tel, String sbrsCl, String posblFcltyCl, String themaEnvrnCl, String manageSttus,
			String induty, String lctCl, String facltDivNm, double mapX, double mapY, String homepage, String resveCl,
			String resveUrl, int gnrlSiteCo, int autoSiteCo, int glampSiteCo, int caravSiteCo, int indvdlCaravSiteCo,
			int siteBottomCl1, int siteBottomCl2, int siteBottomCl3, int siteBottomCl4, int siteBottomCl5,
			String animalCmgCl, String operPdCl, String operDeCl, String firstImageUrl, String createdtime,
			String modifiedtime) {
		super();
		this.contentId = contentId;
		this.facltNm = facltNm;
		this.lineIntro = lineIntro;
		this.intro = intro;
		this.trsagntNo = trsagntNo;
		this.doNm = doNm;
		this.sigunguNm = sigunguNm;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.zipcode = zipcode;
		this.tel = tel;
		this.sbrsCl = sbrsCl;
		this.posblFcltyCl = posblFcltyCl;
		this.themaEnvrnCl = themaEnvrnCl;
		this.manageSttus = manageSttus;
		this.induty = induty;
		this.lctCl = lctCl;
		this.facltDivNm = facltDivNm;
		this.mapX = mapX;
		this.mapY = mapY;
		this.homepage = homepage;
		this.resveCl = resveCl;
		this.resveUrl = resveUrl;
		this.gnrlSiteCo = gnrlSiteCo;
		this.autoSiteCo = autoSiteCo;
		this.glampSiteCo = glampSiteCo;
		this.caravSiteCo = caravSiteCo;
		this.indvdlCaravSiteCo = indvdlCaravSiteCo;
		this.siteBottomCl1 = siteBottomCl1;
		this.siteBottomCl2 = siteBottomCl2;
		this.siteBottomCl3 = siteBottomCl3;
		this.siteBottomCl4 = siteBottomCl4;
		this.siteBottomCl5 = siteBottomCl5;
		this.animalCmgCl = animalCmgCl;
		this.operPdCl = operPdCl;
		this.operDeCl = operDeCl;
		this.firstImageUrl = firstImageUrl;
		this.createdtime = createdtime;
		this.modifiedtime = modifiedtime;
	}
	

	public String getSelDetails() {
		return selDetails;
	}
	public void setSelDetails(String selDetails) {
		this.selDetails = selDetails;
	}

	public void setArrSbrsCl(List<String> arrSbrsCl) {
		this.arrSbrsCl = arrSbrsCl;
	}

	public List<String> getArrSbrsCl() {
		return arrSbrsCl;
	}

	public void setArrSbrsCl(String sbrsCl) {
		if (sbrsCl != null && !sbrsCl.equals("")) {
			this.arrSbrsCl = Arrays.asList(sbrsCl.split(","));
		}
	}
	
	
	public int getCampNum() {
		return campNum;
	}
	public void setCampNum(int campNum) {
		this.campNum = campNum;
	}
	public int getReviewCnt() {
		return reviewCnt;
	}
	public void setReviewCnt(int reviewCnt) {
		this.reviewCnt = reviewCnt;
	}
	public int getViewsCnt() {
		return viewsCnt;
	}
	public void setViewsCnt(int viewsCnt) {
		this.viewsCnt = viewsCnt;
	}
	public int getRecoCnt() {
		return recoCnt;
	}
	public void setRecoCnt(int recoCnt) {
		this.recoCnt = recoCnt;
	}
	public int getContentId() {
		return contentId;
	}
	public void setContentId(int contentId) {
		this.contentId = contentId;
	}
	public String getFacltNm() {
		return facltNm;
	}
	public void setFacltNm(String facltNm) {
		this.facltNm = facltNm;
	}
	public String getLineIntro() {
		return lineIntro;
	}
	public void setLineIntro(String lineIntro) {
		this.lineIntro = lineIntro;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getTrsagntNo() {
		return trsagntNo;
	}
	public void setTrsagntNo(String trsagntNo) {
		this.trsagntNo = trsagntNo;
	}
	public String getDoNm() {
		return doNm;
	}
	public void setDoNm(String doNm) {
		this.doNm = doNm;
	}
	public String getSigunguNm() {
		return sigunguNm;
	}
	public void setSigunguNm(String sigunguNm) {
		this.sigunguNm = sigunguNm;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSbrsCl() {
		return sbrsCl;
	}
	public void setSbrsCl(String sbrsCl) {
		this.sbrsCl = sbrsCl;
	}
	public String getPosblFcltyCl() {
		return posblFcltyCl;
	}
	public void setPosblFcltyCl(String posblFcltyCl) {
		this.posblFcltyCl = posblFcltyCl;
	}
	public String getThemaEnvrnCl() {
		return themaEnvrnCl;
	}
	public void setThemaEnvrnCl(String themaEnvrnCl) {
		this.themaEnvrnCl = themaEnvrnCl;
	}
	public String getManageSttus() {
		return manageSttus;
	}
	public void setManageSttus(String manageSttus) {
		this.manageSttus = manageSttus;
	}
	public String getInduty() {
		return induty;
	}
	public void setInduty(String induty) {
		this.induty = induty;
	}
	public String getLctCl() {
		return lctCl;
	}
	public void setLctCl(String lctCl) {
		this.lctCl = lctCl;
	}
	public String getFacltDivNm() {
		return facltDivNm;
	}
	public void setFacltDivNm(String facltDivNm) {
		this.facltDivNm = facltDivNm;
	}
	public double getMapX() {
		return mapX;
	}
	public void setMapX(double mapX) {
		this.mapX = mapX;
	}
	public double getMapY() {
		return mapY;
	}
	public void setMapY(double mapY) {
		this.mapY = mapY;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getResveCl() {
		return resveCl;
	}
	public void setResveCl(String resveCl) {
		this.resveCl = resveCl;
	}
	public String getResveUrl() {
		return resveUrl;
	}
	public void setResveUrl(String resveUrl) {
		this.resveUrl = resveUrl;
	}
	public int getGnrlSiteCo() {
		return gnrlSiteCo;
	}
	public void setGnrlSiteCo(int gnrlSiteCo) {
		this.gnrlSiteCo = gnrlSiteCo;
	}
	public int getAutoSiteCo() {
		return autoSiteCo;
	}
	public void setAutoSiteCo(int autoSiteCo) {
		this.autoSiteCo = autoSiteCo;
	}
	public int getGlampSiteCo() {
		return glampSiteCo;
	}
	public void setGlampSiteCo(int glampSiteCo) {
		this.glampSiteCo = glampSiteCo;
	}
	public int getCaravSiteCo() {
		return caravSiteCo;
	}
	public void setCaravSiteCo(int caravSiteCo) {
		this.caravSiteCo = caravSiteCo;
	}
	public int getIndvdlCaravSiteCo() {
		return indvdlCaravSiteCo;
	}
	public void setIndvdlCaravSiteCo(int indvdlCaravSiteCo) {
		this.indvdlCaravSiteCo = indvdlCaravSiteCo;
	}
	public int getSiteBottomCl1() {
		return siteBottomCl1;
	}
	public void setSiteBottomCl1(int siteBottomCl1) {
		this.siteBottomCl1 = siteBottomCl1;
	}
	public int getSiteBottomCl2() {
		return siteBottomCl2;
	}
	public void setSiteBottomCl2(int siteBottomCl2) {
		this.siteBottomCl2 = siteBottomCl2;
	}
	public int getSiteBottomCl3() {
		return siteBottomCl3;
	}
	public void setSiteBottomCl3(int siteBottomCl3) {
		this.siteBottomCl3 = siteBottomCl3;
	}
	public int getSiteBottomCl4() {
		return siteBottomCl4;
	}
	public void setSiteBottomCl4(int siteBottomCl4) {
		this.siteBottomCl4 = siteBottomCl4;
	}
	public int getSiteBottomCl5() {
		return siteBottomCl5;
	}
	public void setSiteBottomCl5(int siteBottomCl5) {
		this.siteBottomCl5 = siteBottomCl5;
	}
	public String getAnimalCmgCl() {
		return animalCmgCl;
	}
	public void setAnimalCmgCl(String animalCmgCl) {
		this.animalCmgCl = animalCmgCl;
	}
	public String getOperPdCl() {
		return operPdCl;
	}
	public void setOperPdCl(String operPdCl) {
		this.operPdCl = operPdCl;
	}
	public String getOperDeCl() {
		return operDeCl;
	}
	public void setOperDeCl(String operDeCl) {
		this.operDeCl = operDeCl;
	}
	public String getFirstImageUrl() {
		return firstImageUrl;
	}
	public void setFirstImageUrl(String firstImageUrl) {
		this.firstImageUrl = firstImageUrl;
	}
	public String getCreatedtime() {
		return createdtime;
	}
	public void setCreatedtime(String createdtime) {
		this.createdtime = createdtime;
	}
	public String getModifiedtime() {
		return modifiedtime;
	}
	public void setModifiedtime(String modifiedtime) {
		this.modifiedtime = modifiedtime;
	}
	
	
	public List<CampSiteVO> getCampApiList() {
		return campApiList;
	}
	public void setCampApiList(List<CampSiteVO> campApiList) {
		this.campApiList = campApiList;
	}
	
	public int getRowNum() {
		return rowNum;
	}
	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}


	@Override
	public String toString() {
		return "CampSiteVO [campNum=" + campNum + ", reviewCnt=" + reviewCnt + ", viewsCnt=" + viewsCnt + ", recoCnt="
				+ recoCnt + ", contentId=" + contentId + ", facltNm=" + facltNm + ", lineIntro=" + lineIntro
				+ ", intro=" + intro + ", trsagntNo=" + trsagntNo + ", doNm=" + doNm + ", sigunguNm=" + sigunguNm
				+ ", addr1=" + addr1 + ", addr2=" + addr2 + ", zipcode=" + zipcode + ", tel=" + tel + ", sbrsCl="
				+ sbrsCl + ", posblFcltyCl=" + posblFcltyCl + ", themaEnvrnCl=" + themaEnvrnCl + ", manageSttus="
				+ manageSttus + ", induty=" + induty + ", lctCl=" + lctCl + ", facltDivNm=" + facltDivNm + ", mapX="
				+ mapX + ", mapY=" + mapY + ", homepage=" + homepage + ", resveCl=" + resveCl + ", resveUrl=" + resveUrl
				+ ", gnrlSiteCo=" + gnrlSiteCo + ", autoSiteCo=" + autoSiteCo + ", glampSiteCo=" + glampSiteCo
				+ ", caravSiteCo=" + caravSiteCo + ", indvdlCaravSiteCo=" + indvdlCaravSiteCo + ", siteBottomCl1="
				+ siteBottomCl1 + ", siteBottomCl2=" + siteBottomCl2 + ", siteBottomCl3=" + siteBottomCl3
				+ ", siteBottomCl4=" + siteBottomCl4 + ", siteBottomCl5=" + siteBottomCl5 + ", animalCmgCl="
				+ animalCmgCl + ", operPdCl=" + operPdCl + ", operDeCl=" + operDeCl + ", firstImageUrl=" + firstImageUrl
				+ ", createdtime=" + createdtime + ", modifiedtime=" + modifiedtime + "]";
	}
	
	
	
	
}
