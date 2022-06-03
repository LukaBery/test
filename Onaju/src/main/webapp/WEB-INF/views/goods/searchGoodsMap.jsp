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
.hb_rec_12 {
	display: inline-block;
	width: 100%;
	height: 100%;
	border-radius: 10px;
}

.hb_rec_13 {
	
    float: right;
    position: fixed;
    width: 60%;
    height: calc(100% - 100px);
    border: 1px solid #cccccc;
    text-align: center;
    top: 100px;
    left: 40%;
}

.hb_section_total {

float:left;
	width: 40%;
	height: 100%;
}

.hb_section_6 {
	display: inline-block;
	width: 1100px;
	height: 60px;
	margin-top: 10px;
}

.hb_section_8 {
padding-left:20px;
	display: flex;
	width: 100%;
	height: 100%;
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
	width: 90% !important;
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
	width: 50%;
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
	width: 100%;
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
white-space:nowrap;
overflow:hidden;
	float: left;
	width: 100%;
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
	width: 100%;
	font-weight: 620;
	font-size: 17px;
	text-align: left;
	color: black;
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

   #kakao_button{ width: 150px;
    position: absolute;
    z-index: 10;
    border: 1px solid #FD5286;
    border-radius: 12px;
    background-color: white;
    color: #FD5286;
    font-size: 13px;
    height: 31px;
    font-weight: 700;
    margin-top: 20px;
    left: 45%;
    }
     #kakao_button:hover{
     background-color: #FD5286;
        border: 1px solid #FD5286;
      color:white;
     
     }
</style>
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6e6e34573e04bd152c20de74d0647457&libraries=services,clusterer"></script>


<script>
		window.onload = function() {
			getCurrentPosBtn();
		}

		
	</script>
  	
  <script>
  
  
  function hhl(heart_id){
	   var _room_code = heart_id;
	   var _like_state = "";
	   var _like_yn = "like_state_" + heart_id;
	   var _like_id = "like_id_" + heart_id;
	   var like_Yn = document.getElementById(_like_yn).value;
	   var like_id = document.getElementById(_like_id).value;
	  
		  
	    if (document.getElementsByName(heart_id)[0].checked == true) {
           _like_state = "1";
        }
		 
	    if (document.getElementsByName(heart_id)[0].checked == false) {
	           _like_state = "0";
        }
	    var form = {
				"room_code" : _room_code,
				"like_state" : _like_state,
				"like_yn" : like_Yn,
				"like_id" : like_id
			}
		
		 $.ajax({
				url : "${contextPath}/host/community/addLike.do",
				data : JSON.stringify(form),
				dataType : "JSON",
				type : "post",
				contentType : "application/json; charset=utf-8;",
				async : false,
				
				success : function(data) {
				      document.getElementById(_like_yn).setAttribute('value',data["like_yn"]);
				      document.getElementById(_like_id).setAttribute('value',data["like_id"]);
				},
				error : function() {
					alert("")
					alert("네트워크가 불안정합니다. 다시 시도해 주세요.222");
				}
			})
  }
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
            
            
            <input type="hidden" id="search_longitude_map"name="search_longitude" value="${searchKeyword.search_longitude}">
            <input type="hidden" id="search_latitude_map"name="search_latitude" value="${searchKeyword.search_latitude}">
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
  						 	<c:set var="i" value="${i +1 }" />         
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
            	
            	<c:if test="${memberInfo !=null }">      
          		<div style=" display:inline-block;">    
          		<input type="hidden" id="like_id_${item.room_code}" value="${item.like_id}">
          		 	
          		<input type="hidden" id="like_state_${item.room_code}" value="${item.like_state}">
          			<input id="tt_${i}" type="checkbox"class="toggle-heart display_none"onClick="hhl(${item.room_code})" name="${item.room_code}"title="1"<c:if test="${item.like_state == true}">checked</c:if>/>
					<label for="tt_${i}" class="toggle-heart" id="ttl"aria-label="like" title="1">❤</label>
				</div>
				</c:if>          
          	</div>
          	
          				</c:forEach>
          			</c:when>
          		</c:choose>
          	</form>




          	       
        </div>
        <div style="height:100%;min-height:1000px; top:10px;">
				<div class="hb_rec_13" id="map">
					지도API
					<button type="button"
						id="kakao_button"
						onClick="getCurrentPosBtn_1()">현재 위치로 이동</button>
				</div>
			</div>
       
     
	<!-- 카카오맵 API -->
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
		 
		var imageSrc = '${contextPath}/resources/image/onajumarkLast.png';                              // 마커이미지 주소
		    imageSize = new kakao.maps.Size(34, 36);                // 마커이미지의 크기
		    imageOption = {offset: new kakao.maps.Point(17, 36)};   // 마커의 좌표와 일치시킬 이미지 안에서의 좌표설정
		      
		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
		 
		 
		var arr = new Array();
		
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
			
			var search_longitude = document.getElementById('search_longitude_map').value;

			var search_latitude = document.getElementById('search_latitude_map').value;
			currentPos = "";
			if(search_latitude == 0 || search_latitude == null){
				var currentPos = new kakao.maps.LatLng(pos.coords.latitude,
						pos.coords.longitude);
			}else{
			var currentPos = new kakao.maps.LatLng(search_longitude,
					search_latitude)
			}

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
		function getCurrentPosBtn_1() {
			navigator.geolocation.getCurrentPosition(locationLoadSuccess_1,
					locationLoadError);
		
		};
		function locationLoadSuccess_1(pos) {
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
		
		
		
		
	</script>
	
      </section>
    </section>
    
  </body>
  
  
</html>
