<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	display: inline-block;
	margin-top: 50px;
	border: 1px solid #C3C3C3;
	width: 250px;
	height: 462px;
	overflow: auto;
	float: right;
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
.pageBtn{
	border: 1px solid #333333;
}
.phone{
	transform:rotate(180deg);
}
/* 풀캘린더 끝*/

.wrap {position: absolute;left: 0;bottom: -31px;width: 288px;height: 90px;margin-left: -68px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
.wrap * {padding: 0;margin: 0;}
.wrap .info {width: 286px;height: 90px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
.wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
.info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
/*     .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');} */
/*     .info .close:hover {cursor: pointer;} */
.info .body {position: relative;overflow: hidden;} 
.info .desc {position: relative;margin: 13px 0 0 10px;height: 50px;}
.desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
.desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
/*     .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;} */
.info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.info .link {color: #5085BB;}

.pageStart{
	display: inline-block;
}
.pageEnd{
	display: inline-block;
}
</style>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>
<body>
<form action="mapSearch.do" method="post" id="campIdForm">
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
						<li><input type="text" name="facltNm" placeholder="캠핑장을 입력하세요." style="padding-left: 15px; width: 600px; height: 34px; margin-bottom: 25px;"></li>
						<li><input type="submit" class="searchBtn" value="검색하기       +"  style="float: right; margin-right: 30px;"></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 메인 -->

<div class="layout">
	<input type="hidden" id="test1" value="${camps }">
	<div class="totalCamp">총 <div style="color:black; display: inline-block; font-weight: bold;">${campSiteCnt}</div> 개 캠핑장이 검색되었습니다.</div>
	<hr>

	<div class="topBox">
		<div style="padding-left: 20px; ">
			<select class="selectDetail" style="width: 160px; height: 31px;">
				<option value="MODIFIEDTIME DESC" <c:if test="${selDetails eq 'MODIFIEDTIME DESC'}">selected</c:if> >업데이트순</option>
				<option value="CREATEDTIME ASC" <c:if test="${selDetails eq 'CREATEDTIME ASC'}">selected</c:if> >등록순</option>
				<option value="VIEWS_CNT DESC" <c:if test="${selDetails eq 'VIEWS_CNT DESC'}">selected</c:if> >조회순</option>
				<option value="RECO_CNT DESC" <c:if test="${selDetails eq 'RECO_CNT DESC'}">selected</c:if> >추천순</option>
			</select>
			<div style="float: right;">
				<input type="button" class="mapButton" value="리스트로 보기" onclick="location.href='campSearch.do'">
			</div>
		</div>
	</div>
	
	<!-- 지도를 표시할 div 입니다 -->
    <div id="map" style="width:900px; height:500px; margin-top: 50px; margin-left: 40px; display: inline-block;"></div>
	<div class="campList">
		<div style="display: inline-block;">
			<ul>
				<c:forEach items="${camps }" var="camp">
					<li style="border-bottom: 1px solid #CCCCCC; width: 230px;">
<%-- 					<li style="border: 1px solid #CCCCCC; cursor: pointer;" onclick="location.href='detailCamp.do?campNum=${camp.campNum}'"> --%>
						<div class="facltNm"><h6>[${camp.doNm} ${camp.sigunguNm}]<br><b>${camp.facltNm }</b></h6></div>
						<ul>
						
							<li>
								<c:if test="${camp.addr1 ne null}">
									<div><i class="fas fa-map-marker-alt"></i> ${camp.addr1 }</div>
								</c:if>
								<c:if test="${camp.tel ne null}">
									<div><i class="fas fa-phone phone"></i> ${camp.tel }</div>
								</c:if>
								<input class="infoX" type="hidden" value="${camp.mapX }">
								<input class="infoY" type="hidden" value="${camp.mapY }">
								<input class="facltNms" type="hidden" value="${camp.facltNm }">
								<input class="addrs" type="hidden" value="${camp.addr1 }">
								<input class="tells" type="hidden" value="${camp.tel }">
								<input class="campNums" type="hidden" value="${camp.campNum }">
								<input class="contentIds" type="hidden" value="${camp.contentId }">
							</li>
						</ul>
					</li>
				</c:forEach>
			</ul>
			
		</div>
	</div>
	<!-- pagination{s} -->
	<div id="paginationBox" style="margin: -40px 13px 0 25px; padding-left:4px; height:30px; display: flex; justify-content: center; float: right; display: block;">
		<ul class="pagination" style="width: 230px;">
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
	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=16d6498d8cc30f227b3f117da90273a2"></script>
<script>

 /* 	$.ajax({
 	      url: 'mapSearchPoint.do', //요청경로
 	      type: 'post',
 	      data: {'mapX':mapX, 'mapY':mapY, 'facltNm':facltNm }, //요청경로로 던질 파라메터. '파레메터명':파라메터
 	      success: function(result) { // ajax 통신 성공 시 실행부분. result가 결과 데이터를 가진다.
 			  var xPoint = new array();
 			  var yPoint = new array();
 			  var facltNm = new array();
 			  var yPoint = new array();
	    	  
			  
 	      },
 	      error: function(){ //ajax통신 실패 시 실행부분
 	    	  alert('5555555류');
 	      }
 	}); */
 
 	var x = []; // x좌표
	var y = []; // y좌표
	var facltNmsc = []; // 캠핑장 이름
 	var campNums = []; // 캠핑장 콘텐츠아이디
 	var contentIds = []; // 캠핑장 콘텐츠아이디
	var addrs = [];
	var tells = [];
 	$('.infoX').each(function(index, element){
 		x[index] = $(element).val();
 	});

 	$('.infoY').each(function(index, element){
 		y[index] = $(element).val();
 	});
 	
 	$('.facltNms').each(function(index, element){
 		facltNmsc[index] = $(element).val();
 	});
	
 	$('.campNums').each(function(index, element){
 		campNums[index] = $(element).val();
 	});
 	
 	$('.contentIds').each(function(index, element){
 		contentIds[index] = $(element).val();
 	});
 	
 	$('.addrs').each(function(index, element){
 		addrs[index] = $(element).val();
 	});
 	
 	$('.tells').each(function(index, element){
 		tells[index] = $(element).val();
 	});
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(36.672506, 127.940704), // 지도의 중심좌표
	        level: 14 // 지도의 확대 레벨
	    };
	
	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
// 	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	var mapTypeControl = new kakao.maps.MapTypeControl();

	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// 	kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	
	
//  	마커를 표시할 위치와 title 객체 배열입니다
	var re = [];
	for (var i = 0; i < x.length; i++) {
	    var content1 = 
	    '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title">' + 
        			facltNmsc[i] + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">' + addrs[i] + '</div>' + 
        '                <div class="jibun ellipsis">' + tells[i] + '</div>' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';
		
		
		var obj = {
				content: content1, 
				title : facltNmsc[i],
				latlng : new kakao.maps.LatLng(y[i], x[i])
// 				iwRemoveable = true;
		};
		
		re.push(obj);
	}
	
	var positions = re;

// 	var positions = [
// 	    {
// 	        title: '카카오', 
// 	        latlng: new kakao.maps.LatLng(y[0], x[0])
// 	    },
// 	    {
// 	        title: '생태연못', 
// 	        latlng: new kakao.maps.LatLng(y[1], x[1])
// 	    },
// 	    {
// 	        title: '텃밭', 
// 	        latlng: new kakao.maps.LatLng(33.450879, 126.569940)
// 	    },
// 	    {
// 	        title: '근린공원',
// 	        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
// 	    }
// 	];


	// 마커 이미지의 이미지 주소입니다
	var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	    
	for (var i = 0; i < positions.length; i ++) {
	    
	    // 마커 이미지의 이미지 크기 입니다
	    var imageSize = new kakao.maps.Size(24, 35); 
	    
	    // 마커 이미지를 생성합니다    
	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
	    
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng, // 마커를 표시할 위치
	        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	        image : markerImage // 마커 이미지
	    });
	    

	    var infowindow = new kakao.maps.InfoWindow({
	        content: positions[i].content // 인포윈도우에 표시할 내용
	    });
	    
	    url = 'detailCamp.do?campNum=' + campNums[i] + '&contentId=' + contentIds[i] + '&facltNm=' + facltNmsc[i];

	    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
	    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
	    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
	    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	    kakao.maps.event.addListener(marker, 'click', mapClickListener(url));
	    
	 // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	    
	}
	
	function makeOverListener(map, marker, infowindow) {
        return function() {
            infowindow.open(map, marker);
        };
    }

   // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
    function makeOutListener(infowindow) {
        return function() {
           infowindow.close();
       };
   }
	function mapClickListener(url) {
	    return function() {
	    	event.preventDefault(); //기본이벤트 막기
	    	console.log(url);
	    	window.location.href = url;
	    	
	    };
	}
     // 커스텀 오버레이 엘리먼트를 만들고, 컨텐츠를 추가합니다
//         var content = document.createElement('div');
//         content.className = 'wrap';
//         content.innerHTML = innerHtml;
        
//         var overlay = new kakao.maps.CustomOverlay({
//             content: content,
//             map: map,
//             position: marker.getPosition()       
//         }); 
//         overlay.setMap(null);
     // 커스텀 오버레이에 mousedown이벤트를 등록합니다 
     
        //addEventListener(content, 'mousedown', onMouseDown);
//         marker.addEventListener('mousedown', onMouseDown, false);

        // mouseup 이벤트가 일어났을때 mousemove 이벤트를 제거하기 위해
        // document에 mouseup 이벤트를 등록합니다 
       // addEventHandle(document, 'mouseup', onMouseUp);
        
//         function onMouseDown(e) {
//         	alert(111);
//         	overlay.setMap(map);
//         }
        
//         function closeOverlay() {
//     	    overlay.setMap(null);     
//     	}
        
//         overlay.setMap(null);
         
         
         
         
         
//         kakao.maps.event.addListener(marker, 'click', function() {
        	
//             overlay.setMap(map);
//         });
        
// 	    // 마커에 표시할 인포윈도우를 생성합니다 
// 	    var infowindow = new kakao.maps.InfoWindow({
// 	        content: positions[i].content, // 인포윈도우에 표시할 내용
// 	    });
	    
// 	    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
// 	    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
// 	    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
// 	    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
// 	    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	
		
	
	
	
// 	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
// 	function makeOverListener(map, marker, infowindow) {
// 	    return function() {
// 	        infowindow.open(map, marker);
// 	    };
// 	}

// 	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
// 	function makeOutListener(infowindow) {
// 	    return function() {
// 	        infowindow.close();
// 	    };
// 	}
	
</script>
	
	
</div>
<hr size="2px" width="100%">
</form>
<script src="resources/js/mapSearch.js?ver=1111111"></script>

</body>
</html>