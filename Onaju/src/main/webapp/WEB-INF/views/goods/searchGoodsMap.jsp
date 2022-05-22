<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("UTF-8");%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
  <head>
    <meta charset="UTF-8" />
    <title>위치기반 숙소 검색</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />

    <style>
.hb_rec_1 {
	display: inline-block;
	width: 800px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #cccccc;
}

.hb_rec_2 {
	display: inline-block;
	width: 250px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #cccccc;
}

.hb_rec_3 {
	align-items: center;
	text-align: center;
	display: inline-block;
	width: 122px;
	height: 60px;
	border-radius: 10px;
	border: 1px solid #cccccc;
	padding: 0px 0px 0px 0px;
	margin: 0px 21px 0px 21px;
}

.hb_rec_4 {
	display: inline-block;
	width: 240px;
	height: 180px;
	border-radius: 20px;
	border: 1px solid #cccccc;
	padding: 0px;
	margin: 5px 10px 5px 10px;

}

.hb_rec_12 {
	display: inline-block;
	width: 550px;
	height: 100%;
	border-radius: 10px;
}

.hb_rec_13 {
	float: right;
	position: fixed;
	width: 550px;
	height: 760px;
	border-radius: 10px;
	border: 1px solid #cccccc;
	text-align: center;
	top: 170px;
	left: 50%;
}

.hb_section_total {
	width: 1100px;
	height: 100%;
}

.hb_section_1 {
	display: inline-block;
	width: 800px;
	height: 70px;
}

.hb_section_2 {
	display: inline-block;
	width: 1100px;
	height: 400px;
}

.hb_section_3 {
	display: inline-block;
	width: 300px;
	height: 70px;
}

.hb_section_4 {
	display: inline-block;
	width: 1100px;
	height: 300px;
}

.hb_section_5 {
	padding: 8px 4px;
	display: inline-block;
	width: 1100px;
	height: 50px;
}

.hb_section_6 {
	display: inline-block;
	width: 1100px;
	height: 60px;
	margin-top: 10px;
}

.hb_section_8 {
	display: flex;
	width: 1100px;
	height: 100%;
}

.margin_left_0 {
	float: left;
	margin-left: 0px;
}

.margin_right_0 {
	float: right;
	margin-right: 0px;
}

.hb_table_1 {
	display: inline-block;
	width: 266.6px;
	height: 300px;
}

.hb_textbox_1 {
	display: inline-block;
	width: 238px;
	height: 120px;
}

#form_width_center {
	text-align: center;
}

#h1_left {
	text-align: left;
	font-size: 25px;
}

#hb_a_main {
	text-decoration: none;
	display: block;
	height: 100%;
	margin: 0 auto;
	border-radius: 20px;
}

.charge-info {
	cursor: pointer !important;
	text-align: center !important;
	border: 1px solid rgb(221, 221, 221) !important;
	background-color: rgb(255, 255, 255) !important;
	outline: none !important;
	margin: 0px !important;
	color: rgb(34, 34, 34) !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		"Helvetica Neue", sans-serif !important;
	position: relative !important;
	transition-property: -ms-transform, -webkit-transform, transform,
		background-color, border-color !important;
	transition-duration: 0.15s !important;
	transition-timing-function: ease-in-out !important;
	padding: 10px 16px !important;
	border-radius: 30px !important;
	font-size: 12px !important;
	line-height: 16px !important;
	width: 100% !important;
}

.charge-info:hover {
	cursor: pointer !important;
	text-align: center !important;
	border: 1px solid rgb(221, 221, 221) !important;
	background-color: rgb(254, 210, 223) !important;
	outline: none !important;
	margin: 0px !important;
	color: rgb(34, 34, 34) !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		"Helvetica Neue", sans-serif !important;
	position: relative !important;
	transition-property: -ms-transform, -webkit-transform, transform,
		background-color, border-color !important;
	transition-duration: 0.15s !important;
	transition-timing-function: ease-in-out !important;
	padding: 10px 16px !important;
	border-radius: 30px !important;
	font-size: 12px !important;
	line-height: 16px !important;
	width: 100% !important;
}

.charge-box {
	display: inline-block !important;
	white-space: nowrap !important;
	padding-right: 8px !important;
	padding-top: 4px !important;
	padding-bottom: 4px !important;
}

.charge-text {
	font-weight: 400 !important;
	font-size: 11px !important;
	line-height: 18px !important;
	display: inline-block !important;
}

.charge-img {
	align-self: center !important;
	margin-left: 9.5px !important;
	float: right;
}

.charge-textbox {
	display: flex !important;
	place-content: center !important;
}

.charge-boxline {
	-webkit-box-align: center !important;
	display: flex !important;
	align-items: center !important;
}

.lodging-box {
	float: left;
	margin: 0;
	padding-top: 0;
	display: flex;
	-ms-flex-direction: column;
	flex-direction: column;
	grid-area: 1/1/2/2;
	height: 100%;
}

.lodging-border-top {
	border-bottom: 1px solid rgb(235, 235, 235) !important;
	border-bottom-width: var(- -border-rule-border-width, 1px) !important;
	border-bottom-color: var(- -color-divider, #ebebeb) !important;
	margin-bottom: 12px;
}

.lodging-border-bottom {
	display: inline-block;
	width: 100%;
	border-bottom-color: var(- -color-divider, #ebebeb) !important;
	border-bottom: 1px solid rgb(235, 235, 235) !important;
	margin-bottom: 15px;
}

.lodging-box {
	overflow: hidden !important;
	height: 100% !important;
	width: 500px !important;
	position: relative !important;
	display: inline-block;
}

.lodging-img {
	width: 250px;
	height: 200px;
	display: flex;
	float: left;
	border-radius: 10px;
	border: 1px solid #cccccc;
}

.lodging-info-total {
	width: 230px;
	height: 200px;
	margin-left: 10px;
	float: left;
}

.lodging-location {
	width: 250px;
	height: 50px;
}

.lodging-title {
	width: 250px;
	height: 50px;
}

.lodging-info {
	width: 250px;
	height: 50px;
}

.lodging-charge {
	width: 250px;
	height: 50px;
	display: block;
}

.lodging-total {
	float: left;
	width: 550px;
	display: inline-block;
	margin-bottom: 15px;
	height: 200px;
}

#hb_textbox_5 {
	float: left;
	padding: 0 0 0 0px;
	display: inline-block;
	width: 100%;
	height: 20px;
	margin-top: 5px;
}

#hb_textbox_6 {
	float: left;
	padding: 0 0 0 0px;
	display: inline-block;
	width: 100%;
	height: 40px;
	margin-top: 5px;
}

#hb_textbox_7 {
	float: left;
	padding: 0 0 0 0px;
	display: inline-block;
	width: 280px;
	height: 40px;
	margin-top: 5px;
}

#hb_main_p1 {
	float: left;
	width: 150px;
	font-weight: 620;
	font-size: 14px;
	text-align: left;
	color: black;
}

#hb_main_p2 {
	font-weight: 520;
	font-size: 14px;
	text-align: right;
	color: black;
}

#hb_main_p7 {
	width: 280px;
	font-weight: 600;
	font-size: 16px;
	text-align: left;
	color: black;
}

#hb_main_p5 {
	float: left;
	width: 230px;
	font-weight: 530;
	font-size: 13px;
	text-align: left;
	color: rgb(77, 79, 80);
	opacity: 80%;
}

#hb_main_p4 {
	font-weight: 530;
	font-size: 14px;
	text-align: right;
	color: rgb(77, 79, 80);
	opacity: 80%;
}

#hb_main_p6 {
	float: left;
	width: 240px;
	font-weight: 620;
	font-size: 17px;
	text-align: left;
	color: black;
}

.heart {
	width: 100px;
	height: 100px;
	background:
		url("https://cssanimation.rocks/images/posts/steps/heart.png")
		no-repeat;
	background-position: 0 0;
	cursor: pointer;
	transition: background-position 1s steps(28);
	transition-duration: 0s; &. is-active { transition-duration : 1s;
	background-position: -2800px 0;
}

}
.heart:active {
	transition-duration: 1s;
	background-position: -2800px 0;
}

.customoverlay {
	position: relative;
	bottom: 50px;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	float: left;
}

.customoverlay:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.customoverlay a {
	display: block;
	text-decoration: none;
	color: #111;
	text-align: center;
	border-radius: 6px;
	font-size: 14px;
	font-weight: 500;
	overflow: hidden;
	background: #d95050;
	background: #d95050
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.customoverlay .title {
	display: block;
	text-align: center;
	background: #fff;
	margin-right: 35px;
	padding: 10px 15px;
	font-size: 14px;
	font-weight: 500;
}

.customoverlay:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: -12px;
	width: 22px;
	height: 12px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}
</style>
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6e6e34573e04bd152c20de74d0647457&libraries=services,clusterer"></script>


<script>
		window.onload = function() {
			getCurrentPosBtn();
		}

		
	</script>
  	
  <script>

  $(function() {
	  $(".heart").on("click", function() {
	    $(this).toggleClass("is-active");
	  });
	});
  
  </script>
  </head>
  <body>
    <section class="hb_section_total">
      <section class="hb_section_6">
        <div class="charge-boxline">
          <div class="charge-box">
            <button class="charge-info" aria-expanded="false" type="button">
              <div class="charge-textbox">
                <span class="charge-text">요금</span>
                <span class="charge-img">
                  <svg
                    viewBox="0 0 32 32"
                    xmlns="http://www.w3.org/2000/svg"
                    aria-hidden="true"
                    role="presentation"
                    focusable="false"
                    style="
                      display: block;
                      fill: none;
                      height: 12px;
                      width: 12px;
                      stroke: currentcolor;
                      stroke-width: 5.33333;
                      overflow: visible;
                    "
                  >
                  
                    <g fill="none">
                      <path
                        d="m28 12-11.2928932 11.2928932c-.3905243.3905243-1.0236893.3905243-1.4142136 0l-11.2928932-11.2928932"
                      ></path>
                    </g>
                    
                  </svg>
                </span>
              </div>
            </button>
          </div>

          <div class="charge-boxline">
            <div class="charge-box">
              <button class="charge-info" aria-expanded="false" type="button">
                <div class="charge-textbox">
                  <span class="charge-text">숙소유형</span>
                  <span class="charge-img">
                    <svg
                      viewBox="0 0 32 32"
                      xmlns="http://www.w3.org/2000/svg"
                      aria-hidden="true"
                      role="presentation"
                      focusable="false"
                      style="
                        display: block;
                        fill: none;
                        height: 12px;
                        width: 12px;
                        stroke: currentcolor;
                        stroke-width: 5.33333;
                        overflow: visible;
                      "
                    >
                     <g fill="none">
                        <path
                          d="m28 12-11.2928932 11.2928932c-.3905243.3905243-1.0236893.3905243-1.4142136 0l-11.2928932-11.2928932"
                        ></path>
                      </g>
                    </svg>
                  </span>
                  
                </div>
              </button>
              
            </div>

            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">무선인터넷</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">주방</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">에어컨</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">세탁기</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">다리미</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">주차공간</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">업무전용공간</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">건조기</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">셀프체크인</span>
                  </div>
                </button>
              </div>
            </div>
            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">수영장</span>
                  </div>
                </button>
              </div>
            </div>

            <div class="charge-boxline">
              <div class="charge-box">
                <button class="charge-info" aria-expanded="false" type="button">
                  <div class="charge-textbox">
                    <span class="charge-text">필터</span>
                    <span class="charge-img">
                      <svg
                        viewBox="0 0 32 32"
                        xmlns="http://www.w3.org/2000/svg"
                        aria-hidden="true"
                        role="presentation"
                        focusable="false"
                        style="
                          display: block;
                          fill: none;
                          height: 12px;
                          width: 12px;
                          stroke: currentcolor;
                          stroke-width: 5.33333;
                          overflow: visible;
                        "
                      >
                        <g fill="none">
                          <path
                            d="m28 12-11.2928932 11.2928932c-.3905243.3905243-1.0236893.3905243-1.4142136 0l-11.2928932-11.2928932"
                          ></path>
                        </g>
                      </svg>
                    </span>
                  </div>
                </button>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="hb_section_8">
        <div class="hb_rec_12">
        
        	<div class="lodging-border">
            	<div class="lodging-border-bottom"></div>
         	</div>
            
            
            
            <form>
            	<c:choose>
  					<c:when test="${empty hostgoodsMap}" >
    					<tr  height="10">
      						<td colspan="9">
         						<p align="center">
            						<b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        						</p>
      						</td>  
    					</tr>
  					</c:when>
  					<c:when test="${!empty hostgoodsMap}" >
  						<c:forEach  var="item" items="${hostgoodsMap.goodsList }" varStatus="membersNum" >
  						
          	<div class="lodging-total" style="cursor: pointer;" >           
            	<div class="lodging-box" onclick="location.href='${contextPath}/host/goods/goodsDetail.do?room_code=${item.room_code }';">
              		<div class="lodging-img">
              			<img src="${contextPath}/thumbnails.do?room_code=${item.room_code}&fileName=${item.room_imageName}" style="width: 100%; height: 100%; border-radius: 10px;">
              		</div>
              		                            
              		<div class="lodging-info-total">
                		<div id="hb_textbox_5">
							<p id="hb_main_p5">${item.roadAddress }</p> 				
						</div>
                		<div id="hb_textbox_5">
							<p id="hb_main_p6">${item.title }</p>				
						</div>
						<div id="hb_textbox_5">
							<p style="border-bottom:1px solid #DCDCDC;float:left; width:25px; margin-top:10px;" ></p>				
						</div>
						<div id="hb_textbox_6">
							<p id="hb_main_p5">${item.content }</p>				
						</div>                
                        <div id="hb_textbox_6">			
						</div>
				       	<div id="hb_textbox_7">
							<p id="hb_main_p7">${item.room_fee } / 박</p>
						</div>          
              		</div>
            	</div>          
          		<div style=" display:inline-block;">     	
          			<input id="toggle-heart" type="checkbox" title="1"/>
					<label for="toggle-heart" aria-label="like" title="1">❤</label>
				</div>          
          	</div>
          	
          				</c:forEach>
          			</c:when>
          		</c:choose>
          	</form>




          	       
        </div>
        <div class="hb_rec_13" id="map">지도API</div>
        
        <button type="button" onClick="getCurrentPosBtn()">현재 위치 받아오기</button>
     
	
	<script>
	
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(36.3493, 127.3776),
			level: 2
		};

		var map = new kakao.maps.Map(container, options);
		var markerPosition  = new kakao.maps.LatLng(35.8755582, 128.6053956); 

		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		 
		// 마커가 지도 위에 표시되도록 설정합니다
		//marker.setMap(map);
		 
		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    content : "<div style='position: absolute; left: 0px; top: 0px;'><div style='width:140px;padding:1px;text-align:center;'>칠성종합시장</div></div>" 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		//infowindow.open(map, marker); 
		 
		var imageSrc = '${contextPath}/resources/image/onajulogo.png';                              // 마커이미지 주소
		    imageSize = new kakao.maps.Size(34, 36);                // 마커이미지의 크기
		    imageOption = {offset: new kakao.maps.Point(17, 36)};   // 마커의 좌표와 일치시킬 이미지 안에서의 좌표설정
		      
		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
		 
		 
		var arr = new Array();
		
		
		
		
	
		
		
		
		
		
		
		arr[0] = ["우리집",36.36265890440353,127.34991943416111, "대구 북구 칠성동1가 275-3","1980287267"];
		arr[1] = ["칠성시장방범초소 노상공영주차장",35.8794483127273,128.602329365994, "대구 북구 칠성동2가 409-24","1438742395"];
		arr[2] = ["신천둔치주차장",35.8767253660639,128.605336577613, "대구 북구 칠성동1가 276-1","10068807"];
		arr[3] = ["칠성시장서편 노상공영주차장",35.8771714863247,128.601464917779, "대구 북구 칠성동1가 236-1","27154726"];
		arr[4] = ["칠성공영주차장",35.8761081400681,128.601660859567, "대구 북구 칠성남로 196","20587860"];
		arr[5] = ["신천교고가도로밑 노상공영주차장",35.875440484078,128.607219820583, "대구 북구 칠성동1가 279-1","842394951"];
		
			<c:forEach  var="item" items="${hostgoodsMap.goodsList }" varStatus="membersNum" >
			
			 arr.push(["${item.title}",${item.longitude },${item.latitude} , "${item.roadAddress}","${item.room_code}"]);
			
			

		</c:forEach>

		var markerTmp; // 마커
		var customOverlay; // 오버레이
		var contentStr;

		for (var i = 0; i < arr.length; i++) {
			markerTmp = new daum.maps.Marker({
				position : new daum.maps.LatLng(arr[i][1], arr[i][2]),
				title : arr[i][0],
				image : markerImage,
				map : map
			});

			contentStr = "<div class='customoverlay'><a href='${contextPath}/host/goods/goodsDetail.do?room_code="+ arr[i][4] +"'><span class='title'>"
					+ arr[i][0] + "</span></a></div>";

			customOverlay = new kakao.maps.CustomOverlay({
				map : map,
				position : new daum.maps.LatLng(arr[i][1], arr[i][2]),
				content : contentStr,
				yAnchor : 1
			});
		}

		// 지도 타입 변경 컨트롤을 생성한다
		var mapTypeControl = new kakao.maps.MapTypeControl();

		// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

		// 지도에 확대 축소 컨트롤을 생성한다
		var zoomControl = new kakao.maps.ZoomControl();

		// 지도의 우측에 확대 축소 컨트롤을 추가한다
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

		function locationLoadSuccess(pos) {
			// 현재 위치 받아오기
			var currentPos = new kakao.maps.LatLng(pos.coords.latitude,
					pos.coords.longitude);

			// 지도 이동(기존 위치와 가깝다면 부드럽게 이동)
			map.panTo(currentPos);

			// 마커 생성
			var marker = new kakao.maps.Marker({
				position : currentPos
			});

			// 기존에 마커가 있다면 제거
			marker.setMap(null);
			marker.setMap(map);
		};

		function locationLoadError(pos) {
			alert('위치 정보를 가져오는데 실패했습니다.');
		};

		// 위치 가져오기 버튼 클릭시
		function getCurrentPosBtn() {
			navigator.geolocation.getCurrentPosition(locationLoadSuccess,
					locationLoadError);
		};
	</script>
	
      </section>
    </section>
    
  </body>
  
  
</html>
