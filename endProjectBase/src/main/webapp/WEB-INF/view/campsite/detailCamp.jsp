<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	padding-top:150px;
	width:1200px;
	margin: 0 auto;
	color: white;
   
}
.aaTag{
	display: block;
	float: left;
	padding: 0 15px;
	border: 1px solid #fff;
	border-radius: 100px;
	text-align: center;
	font-size: 15px;
    color: black;
    background-color: white;
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
	padding-top: 20px;
	padding-left: 25px;
	padding-right: 810px;
}
.searchTag > li{
	float: left;
	margin-right: 10px;
}
.searchTag{
	width: 560px;
	height: 100px;
	float: left;
}
.searchTag > li{
	float: left;
	margin-right: 10px;
}
.location{
	margin-bottom: 0px;
}
.location > li{
	float: left;
	margin-right: 10px;
}
.taema > li{
	float: left;
	margin-left: 10px;
}
.layout{
	width:1200px;
	height:auto;
	margin: 0 auto;
padding-top: 60px;
}
.infoBox{
	height: 580px;
}
.bodyImg{
	background-size: 680px 480px;
	width: 660px;
	height: 460px;
	display: inline-block;
	border: 1px solid #cccccc;
}
.infoTable{
	display: inline-block;
	margin-left: 20px;
	position: absolute;
	width: 590px;
	height: auto;
}
.table1 , tr {
	border-bottom: 1px solid gray;
}
.td1{
	font-weight: bold;
}
.td1, .td2 {
	padding: 11px 0px 11px 10px;
	font-size: 13px;
}
.td2{
	width: 460px;
}
.tbBtn1, .tbBtn2 {
	padding: 5px 15px;
	border: 0px;
}
.tbBtn1{
	background-color: #6666FF;
	color: white;
}
.tbBtn2{
	background-color: #FF9999;
	color: white;
}
.infoContent {

}
.contUl > li{
	float:left;
	width: auto;
	height: 60px;
	text-align: center;
	font-size: 20px;
	background-color: #999999;
	color: white;
	padding: 15px 99px;
}
.contLi {
	border-right: 1px solid white;
	border-right: 1px solid white;


}

.contUl > li:hover {
	background-color: white;
	color: black;
	border-top: 2px solid black;
	border-left: 1px solid #999999;
	border-right: 1px solid #999999;
	cursor: pointer;
}
.layout2 {
	width:1200px;
	height:auto;
	margin: 0 auto;
	padding-top: 15px;
}
.informationUse {
	width: 100%;
	height:250px;
	text-align: center;
	font-style:20px;
	border-top: 2px solid black;
	border-collapse: collapse;
	display: table;
}
.informationUse , .infouseTr , .infouseTd {
	border-left: 1px solid #CCCCCC;
	border-right: 1px solid #CCCCCC;
	border-bottom: 1px solid #CCCCCC;
}
.infouseTd {
	display: table-cell;
	vertical-align: middle;

}
.infouse {
	background-color: #EFF6FF;
}
.detailTopImg{
	float:left;
	width:380px;
	height:240px;
	margin: 30px 10px 10px 10px;
	text-align: center;
}
.deInfo{
	width: 100%;
	margin-top: 10px;
	padding: 20px 0px;
	border-top: 2px solid black;
	border-bottom: 1px solid black;
}
.facilityInfo{
	width: 100%;
	height: 125px;
	padding: 30px 36px;
	background-color: #EDEDED;
}
.facilityUl > li {
	float: left;
	padding: 0px 33px;
	text-align: center;
}
h4{
	margin-top: 30px;
}
.png{
	width: 39px;
	height: 45px;
}
.reviewList{
	width: 100%;
	border-top: 2px solid #474747;
	border-bottom: 1px solid black;
	text-align: center;
}
.reviewTh{
	background-color: #f6f8f8;;
	border-top:2px;
	padding: 15px 0px;
	font-size: 20px;
}
.reviewTb{
	padding: 10px 10px;
	font-size: 19px;
}
.writeBtn{
	margin-top:30px;
	padding: 10px 20px;
	font-weight: bold;
	color:white;
	background-color: #18BC9C;
	border: 0px;
	border-radius: 5px;
	cursor: pointer;
}
.reviewTitle{
	cursor: pointer;
}
</style>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>
<body>
<div class="backImg">
   <div class="aa">
      <div>
         <h2>${detail.facltNm }</h2>
      </div>
      <div style="font-size: 24px;">
         ${detail.lineIntro }
      </div>
<!--       <span style="position: relative; color: white; float: right; top:-130px; right:50px; font-size: 100px;"><i class="fas fa-tree"></i></span> -->
      <hr color="#CCCCCC">
      <div style="font-size: 18px;">
        <p class="aaTag">태그</p> &nbsp;&nbsp;${detail.themaEnvrnCl }
      </div>
   </div>
</div>

<!-- 메인 시작 -->
<div class="layout">
	<!-- body시작 -->
	<div class="infoBox" >
		<div class="bodyImg">
			<c:choose>
				<c:when test="${detail.firstImageUrl ne null }"><img class="bodyImg" src="${detail.firstImageUrl }"></c:when>
				<c:otherwise><img class="bodyImg" src="resources/images/noImage.jpg"></c:otherwise>
			</c:choose>
		</div>
		<div class="infoTable">
			<table class="table1" style="width: 590px;">
			<c:if test="${detail.addr1 != null }">
				<tr>
					<td class="td1" style="border-top: 2px solid #FFCC00;">주소</td>
					<td class="td2" style="border-top: 2px solid #666666;">${detail.addr1 } ${detail.addr2 }</td>
				</tr>
			</c:if>
			<c:if test="${detail.tel != null }">
				<tr>
					<td class="td1">문의처</td>
					<td class="td2">${detail.tel }</td>
				</tr>
			</c:if>
			<c:if test="${detail.facltDivNm != null }">
				<tr>
					<td class="td1">캠핑장 환경</td>
					<td class="td2">${detail.lctCl } / ${detail.facltDivNm }</td>
				</tr>
			</c:if>
			<c:if test="${detail.induty != null }">
				<tr>
					<td class="td1">캠핑장 유형</td>
					<td class="td2">${detail.induty }</td>
				</tr>
			</c:if>
			<c:if test="${detail.operPdCl != null }">
				<tr>
					<td class="td1">운영기간</td>
					<td class="td2">${detail.operPdCl }</td>
				</tr>
			</c:if>	
			<c:if test="${detail.operDeCl != null }">
				<tr>
					<td class="td1">운영일</td>
					<td class="td2">${detail.operDeCl }</td>
				</tr>
			</c:if>	
			<c:if test="${detail.homepage != null }">
				<tr>
					<td class="td1">홈페이지</td>
					<td class="td2"><a href="http://${detail.homepage }" target="_blank">${detail.homepage }</a></td>
				</tr>
			</c:if>	
			<c:if test="${detail.resveCl != null }">
				<tr>
					<td class="td1">예약방법</td>
					<td class="td2">${detail.resveCl }</td>
				</tr>
			</c:if>	
			<c:if test="${detail.resveUrl != null }">
				<tr>
					<td class="td1">예약페이지</td>
					<td class="td2"><a href="http://${detail.resveUrl }" target="_blank">${detail.resveUrl }</a></td>
				</tr>
			</c:if>	
			<c:if test="${detail.posblFcltyCl != null }">
				<tr>
					<td class="td1">주변이용가능시설</td>
					<td class="td2">${detail.posblFcltyCl }</td>
				</tr>
			</c:if>	

			</table>
			<c:if test="${not empty sessionScope.loginInfo }">
				<div style="text-align: center; padding-top: 10px;">
					<button class="tbBtn1" value="${detail.campNum }"><i class="far fa-thumbs-up"></i>&nbsp;&nbsp;추천하기</button>&nbsp;&nbsp;&nbsp;
					<button class="tbBtn2" value="${detail.campNum }"><i class="far fa-heart"></i>&nbsp;&nbsp;찜하기</button>
				</div>
			</c:if>
		</div>
	</div>
	<div class="infoContent">
		<ul class="contUl">
			<li class="contLi">캠핑장 소개</li>
			<li class="contLi">이용안내</li>
			<li class="contLi">위치보기</li>
			<li class="contLi">캠핑&amp;여행후기</li>
		</ul>
	</div>
</div>
<hr style="height:1px;border-width:0;color:gray;background-color:gray;margin-top: 75px; margin-bottom: 0px;">
<div class="layout2">
	<!-- 캠핑장 소개 -->
	<div class="layoutTag">
		<h4><i class="fas fa-location-arrow" style="transform:rotate(45deg); font-size: 25px;"></i> &nbsp; 캠핑장 정보</h4>
		<div>
			<p class="deInfo">
				<c:choose >
					<c:when test="${detail.intro eq null}">정보가 없습니다</c:when>
					<c:otherwise>
						<span style="display: block;">${detail.intro }</span><br>
						<span style="padding-top: 10px; color: #7F7F7F;">최종 정보 수정일 : ${detail.modifiedtime }</span>
					</c:otherwise>
				</c:choose>
			</p>
		</div>
		<c:if test="${arrsbrsCl ne null}">
		<h4><i class="fas fa-location-arrow" style="transform:rotate(45deg); font-size: 25px;"></i> &nbsp; 캠핑장 시설 정보</h4>
		<div class="facilityInfo">
			<ul class="facilityUl">
				<c:forEach items="${arrsbrsCl }" var="sbrs" varStatus="status">
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
		</c:if>
			<c:if test="${detail.facltNm ne null}">
			<h4><i class="fas fa-location-arrow" style="transform:rotate(45deg); font-size: 25px;"></i> &nbsp; ${detail.facltNm } 상세 이미지</h4>
			<c:forEach items="${imgApi }" var="apiImg" varStatus="status">
				<img src="${status.current }" width="280px;" height="250px;" style="margin: 7px;"/>
			</c:forEach>
		</c:if>
	</div>
	
	<!-- 이용안내 -->
	<div class="layoutTag">
		<div style="font-size: 25px; font-weight: bold; margin: 10px 0px;"><i class="fas fa-info"></i> 이용안내</div>
		<table class="informationUse">
			<tr class="infouseTr infouse">
				<td rowspan="2" class="infouseTd">구분</td>
				<td colspan="2" class="infouseTd">비수기</td>
				<td colspan="2" class="infouseTd">성수기</td>
			</tr>		
			<tr class="infouseTr infouse">
				<td class="infouseTd">주중</td>
				<td class="infouseTd">주말</td>
				<td class="infouseTd">주중</td>
				<td class="infouseTd">주말</td>
			</tr>
			<tr class="infouseTr">
				<td class="infouseTd infouse">일반</td>
				<td class="infouseTd">...</td>
				<td class="infouseTd">...</td>
				<td class="infouseTd">...</td>
				<td class="infouseTd">...</td>
			</tr>
		</table>
	</div>
	
	<!-- 위치 안내 -->
	<div class="layoutTag">
		<span style="font-size: 25px; font-weight: bold; margin-bottom: 10px;"><i class="fas fa-location-arrow" style="transform:rotate(90deg);"></i> 찾아오시는길</span>
	
		<input type="hidden" id="mapX" value="${detail.mapX }">
		<input type="hidden" id="mapY" value="${detail.mapY }">
		<input type="hidden" id="campNm" value="${detail.facltNm }">
		<input type="hidden" id="addr" value="${detail.addr1 }">
		<input type="hidden" id="tel" value="${detail.tel }">
		<div id="map" style="width:100%; height:600px; margin-top: 10px;"></div>
		
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=16d6498d8cc30f227b3f117da90273a2"></script>
		
		<script>
		
		var mapX = $('#mapX').val();
		var mapY = $('#mapY').val();
		var campNm = $('#campNm').val();
		var addr = $('#addr').val();
		var tel = $('#tel').val();
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(mapY, mapX), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		var mapTypeControl = new kakao.maps.MapTypeControl();

		// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(mapY, mapX); 
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		var iwContent = '<div style="padding:5px; width:460px;"><strong style="font-size: auto;">'+ campNm +'</strong><br>' + addr + ' &nbsp;연락처 : ' + tel + '</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwPosition = new kakao.maps.LatLng(mapY, mapX); //인포윈도우 표시 위치입니다
		
		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker); 
		</script>

	</div>
	
	<!-- 여행후기 작성한거 불러오기 -->
	<div class="layoutTag" style="text-align: center;">
		<table class="reviewList">
		  <colgroup>
		    <col width="7%" />
		    <col width="60%" />
		    <col width="13%" />
		    <col width="13%" />
		    <col width="7%" />
		  </colgroup>
			<thead>
				<tr class="reviewTh">
					<td class="reviewTh" style="padding-left: 15px;">글번호</td>
					<td class="reviewTh">제목</td>
					<td class="reviewTh">작성자</td>
					<td class="reviewTh">작성일</td>
					<td class="reviewTh" style="padding-right: 15px;">조회</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${campSearchReview }" var="review" varStatus="status">
					<tr class="reviewTb">
						<td class="reviewTb"  style="padding-left: 15px;">${status.count }</td>
						<td class="reviewTb reviewTitle" id="reviewTitle" onclick="location.href='board12.do?boardNum=${review.boardNum}'" >${review.boardTitle }</td>
						<td class="reviewTb">${review.boardWriter }</td>
						<td class="reviewTb">${review.boardDate }</td>
						<td class="reviewTb"  style="padding-right: 15px;">${review.boardCnt }</td>
					</tr>
				</c:forEach>
			</tbody>		
		</table>
		<input type="button" value="후기 작성하기" class="writeBtn">
		<input type="hidden" class="loginSession" value="${sessionScope.loginInfo.memberId }">
		<input type="hidden" class="chkMemberNum" value="${sessionScope.loginInfo.memberNum }">
		<input type="hidden" class="doNm" value="${detail.doNm }">
		<input type="hidden" class="sigunguNm" value="${detail.sigunguNm }">
	</div>
</div>
<hr size="2px" width="100%">
<!-- 메인끝 -->

<script type="text/javascript" src="resources/js/detailCamp.js?ver=1"></script>
</body>
</html>



