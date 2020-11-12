<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 풀캘린더 시작 -->
<link href='resources/css/main.css' rel='stylesheet' />
<script src='resources/js/main.js'></script>
<script src='resources/js/ko.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    
    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev',
        center: 'title',
        right: 'today next'
      },
//       initialDate: '2020-09-12', //지정날짜 로드
	  locale : 'ko',
      editable: true,
      navLinks: true, // can click day/week names to navigate views
      dayMaxEvents: true, // allow "more" link when too many events
      events: {
        url: 'php/get-events.php',
        failure: function() {
          document.getElementById('script-warning').style.display = 'block'
        }
      },
      loading: function(bool) {
        document.getElementById('loading').style.display =
          bool ? 'block' : 'none';
      }
    });

    calendar.render();
  });

</script>
<!-- 풀캘린더 끝 -->
<style type="text/css">
.backImg{
	background-image: url("resources/images/123546.jpg");
	background-repeat : no-repeat;
	background-size : cover;
	margin-top:50px;
	height: 400px;
	width: 100%;
}
div.aa{
	padding-top:60px;
	width:1200px;
	margin: 0 auto;
	opacity: 0.8;
}
.cal{
	background-color: #EFEFEF;
	float:left;
	width: 350px;
	display: inline-block;
	margin-bottom: 0px;
}
.search{
	width:400px;
	height:250px;;
	display: inline-block;
	margin-bottom: 0px;
	margin-left: 15px;
	background-color: #EFEFEF;
	padding: 20px 770px 290px 25px;
}
.searchTag > li{
	float: left;
	margin-right: 10px;
}
.searchTag{
	width: 730px;
	height: 100px;
	float: left;
}
.location{
	margin-bottom: 0px;
}
.location > li{
	float: left;
	margin-right: 10px;
}
.layout{
	width:1200px;
	margin: 0 auto;
}
.totalCamp{
	margin-top: 20px;
	font-size: 25px;
}
.topBox{
	background: #f6f8f8;
	padding: 15px 10px;
	display: block;
	border-top: 1px solid #dedede;
	border-bottom: 2px solid black;
}
.selectDetail{
	padding: 0px 10px;
	border: 1px solid #C3C3C3;
}
.mapButton{
	background: #4a4e57;
	text-align: center;
	color: #fff;
	padding:  5px 10px;
	border: 0px;
	cursor: pointer;
}
.campList{
	padding: 25px 25px;
}
.campImg{
	float:left;
	display: inline-block;
	width: 29%;
}
.campDetail{
	display: inline-block;
	width: 70%;
	height: 100%;
}
.campTitle{
	margin-top:22px;
	padding-bottom: 5px;
}
.campSet{
	display: block;
	font-size: 20px;
}
.campText{
	display: block;
	margin: 5px 0px 25px 0px;
	font-size: 14px;
	width: 600px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}
.campInfo > li {
	float: left;
	margin-right: 20px;
	font-size: 17px;
}
.campIconBox {
	margin-top: 20px;
	padding:17px;
	border: 1px solid #dedede;
	border-radius: 7px;
}
.campIcon > li {
	float: left;
	margin-top: 9px;
}
.icon{
	margin: 0px 13px;
	text-align: center;
}
.png{
	width: 30px;
	height: 36px;
}
.searchBtn{
	background-color: black;
	color: white;
	border: 0px;
	padding: 6px 10px;
}

/* 풀캘린더 시작*/
body {
  margin: 0;
  padding: 0;
  font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
  font-size: 12px;
}

#script-warning {
  display: none;
  background: #eee;
  border-bottom: 1px solid #ddd;
  padding: 0 10px;
  line-height: 40px;
  text-align: center;
  font-weight: bold;
  font-size: 12px;
  color: red;
}

#loading {
  display: none;
  position: absolute;
  top: 10px;
  right: 10px;
}

#calendar {
  max-width: 350px;
  margin: 0px auto;
  padding: 3px;
}
.page-link{
color: #FFFBED;
}
.phone{
	transform:rotate(180deg);
}

/* 풀캘린더 끝 */

</style>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>
<body>
<form action="campSearch.do" method="post" id="campIdForm">
<input type="hidden" id="selectedSi" value="${campSiteVO.sigunguNm }">
<div class="backImg">
	<div class="aa">
		<div class="cal">
<!-- 			<div id='script-warning'> -->
<!-- 				<code>php/get-events.php</code> must be running. -->
<!-- 			</div> -->
			
			<div id='loading'>loading...</div>
			
			<div id='calendar'></div>
		</div>
		
		<div class="search">
			<div style="width: 500px;">
				<h3><i class="fas fa-search"></i> 상세검색</h3>
				<hr>
			</div>
			<div class="searchTag">
				<ul class="location">
					<li>
						<strong style="display: block ; margin-bottom: 4px; font-size: 15px;">지역</strong>
						<select name="doNm" id="chkDoNm" style="width: 260px; height: 31px; margin-top: 3px;">
							<option value="">전체</option>
							<c:forEach items="${doNmList }" var="doNms">
								<option value="${doNms.doNm }" <c:if test="${campSiteVO.doNm eq doNms.doNm}">selected</c:if> >${doNms.doNm }</option>
							</c:forEach>
						</select>
					</li>
					<li>
						<select name="sigunguNm" id="sigungu" style="width: 260px; height: 31px; margin-top: 29px;">
							<option  value="">전체</option>
						</select>
					</li>
				</ul>
				
				<div style="display: block; margin-top: 80px;">
					<strong style="display: block; margin-bottom: 4px; font-size: 15px;"> 캠핑장 검색</strong>
					<ul>
						<li>
							<input type="text" name="facltNm" id="facltNm" placeholder="캠핑장을 입력하세요." 
							style="padding-left: 15px; width: 600px; height: 34px; margin-bottom: 25px;" 
							<c:if test="${campSiteVO.facltNm != null }">value="${campSiteVO.facltNm}"</c:if> >
						</li>
						<li><input type="submit" class="searchBtn" value="검색하기       +"  style="float: right; margin-right: 30px;"></li>
					</ul>
				</div>
			</div>
		</div>
		
	</div>
</div>

<!-- 메인 -->
<div class="layout">
	<div class="totalCamp">총 <div style="color: black; display: inline-block; font-weight: bold;">${campSiteCnt}</div> 개 캠핑장이 검색되었습니다.</div>
	<hr>
	
	<div class="topBox">
		<div style="padding-left: 20px; ">
			<select name="selectDetail" class="selectDetail" style="width: 160px; height: 31px;">
				<option value="MODIFIEDTIME DESC" <c:if test="${campSiteVO.selDetails eq 'MODIFIEDTIME DESC'}">selected</c:if> >업데이트순</option>
				<option value="CREATEDTIME ASC" <c:if test="${campSiteVO.selDetails eq 'CREATEDTIME ASC'}">selected</c:if> >등록순</option>
				<option value="VIEWS_CNT DESC" <c:if test="${campSiteVO.selDetails eq 'VIEWS_CNT DESC'}">selected</c:if> >조회순</option>
				<option value="RECO_CNT DESC" <c:if test="${campSiteVO.selDetails eq 'RECO_CNT DESC'}">selected</c:if> >추천순</option>
			</select>
			<div style="float: right;">
				<input class="mapButton" type="button" value="지도로 보기" onclick="location.href='mapSearch.do'">
			</div>
		</div>
	</div>

	<div class="campSearchList">
		<ul style="margin: 0px; border-bottom: 1px solid #dedede;">
			
			<c:forEach items="${campList }" var="site">
			<li style="border-bottom: 1px solid #cccccc;">
				<div class="campList">
					<div class="campImg">
						<span>
							<c:choose>
								<c:when test="${site.firstImageUrl != null }">
									<img src="${site.firstImageUrl }" style="width: 275px; height: 195px; border: 1px solid #cccccc; cursor: pointer;" onclick="location.href='detailCamp.do?campNum=${site.campNum}&contentId=${site.contentId }&facltNm=${site.facltNm }'" >
								</c:when>
								<c:otherwise>
									<img src="resources/images/noImage.jpg" style="width: 275px; height: 195px; border: 1px solid #cccccc; cursor: pointer;" onclick="location.href='detailCamp.do?campNum=${site.campNum}&contentId=${site.contentId }&facltNm=${site.facltNm }'" >
									</c:otherwise>
							</c:choose>
						</span>
					</div>
					<div class="campDetail">
						<p style="margin-bottom: 20px;">
							<c:if test="${site.trsagntNo != null }">
								<span style="background-color: #6666FF; color: white; padding: 3px 5px;">관광사업자 등록업체</span>
							</c:if>
							<span style="background-color: #FF6666; color: white; padding: 3px 5px;">리뷰수 ${site.reviewCnt }</span>
							<span style="background-color: #669999; color: white; padding: 3px 5px;">조회수 ${site.viewsCnt }</span>
							<span style="background-color: #999999; color: white; padding: 3px 5px;">추천수 ${site.recoCnt }</span>
						</p>
						
						<h4 class="campTitle">
							<a href="detailCamp.do?campNum=${site.campNum}&contentId=${site.contentId }&facltNm=${site.facltNm }" style="color: black;">
								[${site.doNm }&nbsp;&nbsp;${site.sigunguNm }] ${site.facltNm }
							</a>
						</h4>
						
						<span class="campSet">${site.lineIntro }</span>
						<span class="campText"><a href="detailCamp.do?campNum=${site.campNum}&contentId=${site.contentId }&facltNm=${site.facltNm }" style="color: black;">${site.intro }</a></span>
						<div>
							<ul class="campInfo" style="height: 20px;">
								<li><i class="fas fa-map-marker-alt"></i> ${site.addr1 }</li>
								<c:if test="${site.tel != null}">
									<li><i class="fas fa-phone phone"></i> ${site.tel }</li>
								</c:if>
							</ul>
						</div>
						<!-- 아이콘 -->
						<div class="campIconBox">
							<ul class="campIcon" style="height: 65px;">
								<c:if test="${site.arrSbrsCl eq null }"><h5 style="padding-top: 25px;">시설정보를 업데이트 하지않았습니다.</h5></c:if>
 								<c:forEach items="${site.arrSbrsCl }" var="sbrs" varStatus="status">
 									<c:if test="${status.current eq '전기' }">
										<li class="icon"><i class="fas fa-bolt fa-3x"></i><div>${sbrs }</div></li>
									</c:if>
									<c:if test="${status.current eq '무선인터넷' }">
										<li class="icon"><img class="png" src="resources/images/campIcon/icon6.png"><div>${sbrs }</div></li>
									</c:if>
									<c:if test="${status.current eq '장작판매' }">
										<li class="icon"><img class="png" src="resources/images/campIcon/icon2.png"><div>${sbrs }</div></li>
									</c:if>
									<c:if test="${status.current eq '온수' }">
										<li class="icon"><img class="png" src="resources/images/campIcon/icon3.png"><div>${sbrs }</div></li>
									</c:if>
									<c:if test="${status.current eq '트렘폴린' }">
										<li class="icon"><img class="png" src="resources/images/campIcon/icon7.png"><div>${sbrs }</div></li>
									</c:if>
									<c:if test="${status.current eq '물놀이장' }">
										<li class="icon"><img class="png" src="resources/images/campIcon/icon8.png"><div>${sbrs }</div></li>
									</c:if>
									<c:if test="${status.current eq '놀이터' }">
										<li class="icon"><img class="png" src="resources/images/campIcon/icon9.png"><div>${sbrs }</div></li>
									</c:if>
									<c:if test="${status.current eq '운동장' }">
										<li class="icon"><img class="png" src="resources/images/campIcon/icon5.png"><div>${sbrs }</div></li>
									</c:if>
									<c:if test="${status.current eq '운동시설' }">
										<li class="icon"><img class="png" src="resources/images/campIcon/icon1.png"><div>${sbrs }</div></li>
									</c:if>
									<c:if test="${status.current eq '산책로' }">
										<li class="icon"><img class="png" src="resources/images/campIcon/icon10.png"><div>${sbrs }</div></li>
									</c:if>
									<c:if test="${status.current eq '마트.편의점' }">
										<li class="icon"><img class="png" src="resources/images/campIcon/icon4.png"><div>${sbrs }</div></li>
									</c:if>
								</c:forEach> 
							</ul>
						</div>
						<!-- 아이콘 -->
					</div>
				</div>
			</li>
			</c:forEach> 
			
		</ul>
	</div>
	
	<!-- pagination{s} -->
	<div id="paginationBox" style="margin: 15px auto; display: flex; justify-content: center;">
		<ul class="pagination" style="width: 400px;">
			<c:if test="${campSiteVO.prev}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${campSiteVO.page}', '${campSiteVO.range}', '${campSiteVO.rangeSize}')"><i class="fas fa-angle-left"></i></a></li>
			</c:if>

			<c:forEach begin="${campSiteVO.startPage}" end="${campSiteVO.endPage}" var="idx">
				<li class="page-item <c:out value="${campSiteVO.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${campSiteVO.range}', '${campSiteVO.rangeSize}')"> ${idx} </a></li>
			</c:forEach>

			<c:if test="${campSiteVO.next}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${campSiteVO.range}', '${campSiteVO.range}', '${campSiteVO.rangeSize}')" ><i class="fas fa-angle-right"></i></a></li>
			</c:if>
		</ul>
	</div>
	<!-- pagination{e} -->

	
</div>
</form>
<script src="resources/js/campSearch.js?ver=111"></script>
</body>
</html>




