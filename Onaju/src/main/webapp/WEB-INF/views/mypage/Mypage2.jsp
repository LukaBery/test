
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="author" content="" />
<meta name="description" content="Colrolib Templates">
<meta name="author" content="Colrolib">
<meta name="keywords" content="Colrolib Templates">

<style>
hr {
	border: 1px solid #CCCCCC;
}

.hb_rec_1 {
	float: left;
	display: inline-block;
	width: 800px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
}

.hb_rec_2 {
	display: inline-block;
	float: right;
	width: 250px;
	height: 400px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
}

.hb_rec_3 {
	align-items: center;
	text-align: center;
	display: inline-block;
	width: 122px;
	height: 60px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
	padding: 0px 0px 0px 0px;
	margin: 0px 21px 0px 21px;
}

.hb_rec_3_mypage {
	text-align: center;
	display: inline-block;
	width: 134px;
	height: 50px;
	border-radius: 10px;
	border: 1px solid #CCCCCC;
	padding: 0px 0px 0px 0px;
	margin: 7px 21px 7px 0px;
	float: left;
}

.hb_rec_3_mypage:hover {
	text-align: center;
	display: inline-block;
	width: 134px;
	height: 50px;
	border-radius: 10px;
	border: 2px solid #CCCCCC;
	padding: 0px 0px 0px 0px;
	margin: 7px 21px 7px 0px;
	float: left;
}

.hb_rec_4 {
	display: inline-block;
	width: 240px;
	height: 180px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px;
	margin: 5px 10px 5px 10px;
}
/* <섹션 종류> */
.hb_section_total {
	width: 1100px;
	height: 100%
}

.hb_section_mypagenav {
	display: inline-block;
	width: 160px;
	height: 500px;
	position: sticky;
	top: 120px;
}

.hb_section_mypagemain {
	padding: 30px 0px;
	display: inline-block;
	width: 84%;
	height: 100%;
}

.hb_section_mypagemain_1 {
	display: inline-block;
	width: 920px;
	height: 170px;
}

.hb_section_mypagemain_profile {
	border: 1px solid #CCCCCC;
	display: inline-block;
	width: 150px;
	height: 168px;
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

.hb_section_title {
	padding: 20px 4px 15px 0px;
	display: inline-block;
	width: 100%;
	height: 100%;
}
/* <인라인블럭 왼쪽 고정> */
.margin_left_0 {
	float: left;
	margin-left: 0px;
	border: 0;
}

.margin_left_1 {
	width: 750px;
	height: 168px;
	text-align: left;
}

#grade {
	display: inline-block;
	width: 150px;
	height: 33px;
	border: 0;
	outline: 0;
	border-radius: 5px;
	font-weight: bold;
	color: white;
}

#img2 {
	display: inline-block;
	float: left;
	width: 200px;
	height: 150px;
}

#btbt2 {
	background-color: #FC4E82;
	display: inline-block;
	width: 50px;
	height: 25px;
	border: 0;
	outline: 0;
	border-radius: 5px;
	float: right;
	font-weight: bold;
	color: white;
}

.r1 {
	text-align: left;
}
/* <인라인블럭 왼쪽 고정> */
.margin_right_0 {
	float: right;
	margin-right: 0px;
}

.hb_table_1 {
	float: left;
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

#h1_left_title {
	color: #5C5C5C;
	font-weight: 600;
	text-align: left;
	font-size: 30px;
}
/* <a 태그 부모 태그 전체 확장> */
#hb_a_main {
	padding: 15px;
	color: black;
	text-decoration: none;
	display: block;
	height: 100%;
	font-size: 15px;
	font-weight: 580;
	margin: 0 auto;
	border-radius: 9px;
	background-color: white;
	opacity: 70%;
}

#hb_a_main:hover {
	padding: 15px;
	color: black;
	text-decoration: none;
	display: block;
	height: 100%;
	font-size: 15px;
	font-weight: 580;
	margin: 0 auto;
	border-radius: 9px;
	background-color: white;
	opacity: 100%;
	box-shadow: 4px 8px 4px rgb(0 0 0/ 18%);
}



#btn_mypage_0 {
	width: 80%;
	height: 80%;
	z-index: 10;
	border: 1px solid #CCCCCC;
	color: black;
	font-weight: 560;
	background-color: white;
	border-radius: 12px;
	z-index: 9999;
	font-size: 12px;
	padding: 6px;
}

#btn_mypage_0:hover {
	box-shadow: 1px 3px 5px rgb(0 0 0/ 18%);
}

.btn_mypage_date_1 {
	width: 100%;
	height: 100%;
	border: 1px solid #CCCCCC;
	border-radius: 6px;
	padding: 3.5px;
	font-size: 12px;
	font-weight: 600;
	cursor: pointer;
	color: black;
	background-color: white;
}

.btn_mypage_date_1:hover, #search_button:hover {
	box-shadow: inset 1px 1px 0px 0px rgb(0 0 0/ 18%);
	color: white;
	background: linear-gradient(to right, rgb(205 11 56) 0%, rgb(195, 8, 71)
		50%, rgb(205, 11, 56) 10%) !important;
}

.btn_clicked {
width: 100%;
	height: 100%;
	border: 1px solid #CCCCCC;
	border-radius: 6px;
	padding: 3.5px;
	font-size: 12px;
	font-weight: 600;
	cursor: pointer;

	box-shadow: inset 1px 1px 0px 0px rgb(0 0 0/ 18%);
	color: white;
	background: linear-gradient(to right, rgb(205 11 56) 0%, rgb(195, 8, 71)
		50%, rgb(205, 11, 56) 10%) !important;
}

#btn_pageNum{
width:20px;
color:black;
    text-decoration: none;
    font-size: 15px;
    font-weight: 600;
}
</style>

<c:if test='${ empty isLogOn }'>

	<script>
		window.onload = function() {
			result();
		}

		function result() {
			alert("로그인이 필요한 서비스입니다.");
			location.href="${contextPath}/main/main.do";
		}
	</script>
</c:if>
<script>

 function cartPay(i){
	

	 document.getElementById(i).submit();
 }



 function searchByPriod(period){
 	var formObj=document.createElement("form");
 	var _period = document.createElement("input");
 	var period_color = document.createElement("input");
 	
 	 var beginEnd = calcPeriod(period);
 	 period_color.name="period_color";
 	 period_color.value=period;

 	_period.name="period";
 	_period.value=beginEnd;
     formObj.appendChild(_period);
     formObj.appendChild(period_color);
     document.body.appendChild(formObj); 
    
     formObj.method="get";
     formObj.action="${contextPath}/mypage/myCart.do";
     formObj.submit();
 }

 function  calcPeriod(search_period){
 	var dt = new Date();
 	var beginYear,endYear;
 	var beginMonth,endMonth;
 	var beginDay,endDay;
 	var beginDate,endDate;
 	
 	endYear = dt.getFullYear();
 	endMonth = dt.getMonth()+1;
 	endDay = dt.getDate();
 	if(search_period=='today'){
 		beginYear=endYear;
 		beginMonth=endMonth;
 		beginDay=endDay;
 	}else if(search_period=='one_week'){
 		beginYear=dt.getFullYear();
 		beginMonth=dt.getMonth()+1;
 		dt.setDate(endDay-7);
 		beginDay=dt.getDate();
 		
 	}else if(search_period=='15_days'){
 		beginYear = dt.getFullYear();
 		beginMonth = dt.getMonth()+1;
 		dt.setDate(endDay-15);
 		beginDay=dt.getDate();
 	}else if(search_period=='one_month'){
 		beginYear = dt.getFullYear();
 		dt.setMonth(endMonth-1);
 		beginMonth = dt.getMonth();
 		beginDay = dt.getDate();
 	}else if(search_period=='two_month'){
 		beginYear = dt.getFullYear();
 		dt.setMonth(endMonth-2);
 		beginMonth = dt.getMonth();
 		beginDay = dt.getDate();
 	}else if(search_period=='three_month'){
 		beginYear = dt.getFullYear();
 		dt.setMonth(endMonth-3);
 		beginMonth = dt.getMonth();
 		beginDay = dt.getDate();
 	}else if(search_period=='four_month'){
 		beginYear = dt.getFullYear();
 		dt.setMonth(endMonth-4);
 		beginMonth = dt.getMonth();
 		beginDay = dt.getDate();
 	}else if(search_period=='last_one_month'){
 		beginYear = dt.getFullYear();
 		dt.setMonth(endMonth-1);
 		beginMonth = dt.getMonth();
 		beginDay = 01;
 		endDay = 00;
 		endMonth = dt.getMonth()+1;	}
 	else if(search_period=='last_two_month'){
 		beginYear = dt.getFullYear();
 		dt.setMonth(endMonth-2);
 		beginMonth = dt.getMonth();
 		beginDay = 01;
 		endDay = 00;
 		endMonth = dt.getMonth()+1;	}
 	else if(search_period=='last_three_month'){
 		beginYear = dt.getFullYear();
 		dt.setMonth(endMonth-3);
 		beginMonth = dt.getMonth();
 		beginDay = 01;
 		endDay = 00;
 		endMonth = dt.getMonth()+1;	}
 	else if(search_period=='last_four_month'){
 		beginYear = dt.getFullYear();
 		dt.setMonth(endMonth-4);
 		beginMonth = dt.getMonth();
 		beginDay = 01;
 		endDay = 00;
 		endMonth = dt.getMonth()+1;	}
 	else if(search_period=='last_five_month'){
 		beginYear = dt.getFullYear();
 		dt.setMonth(endMonth-5);
 		beginMonth = dt.getMonth();
 		beginDay = 01;
 		endDay = 00;
 		endMonth = dt.getMonth()+1;	}
 	
 	if(endMonth <2){
 		if(endMonth =1){
 			endMonth = 12;
 			endDay = 31;
 			endYear -= 1;
 		}else{
 		endYear -= 1;
 		endMonth += 12;
 		}
 	}
 	if(beginMonth <1){
 		beginYear -= 1;
 		beginMonth +=12;
 	}
 	
 	
 	
 	if(beginMonth <10){
 		beginMonth='0'+beginMonth;
 		if(beginDay<10){
 			beginDay='0'+beginDay;
 		}
 	}
 	if(endMonth <10){
 		endMonth='0'+endMonth;
 		if(endDay<10){
 			endDay='0'+endDay;
 		}
 	}
 	
 	endDate=endYear+'-'+endMonth +'-'+endDay;
 	beginDate=beginYear+'-'+beginMonth +'-'+beginDay;
 	//alert(beginDate+","+endDate);
 	return beginDate+","+endDate;
 }
</script>


</head>
<body>

	<section class="hb_section_total">
	
	
	
	<c:choose>
	<c:when test="${memberInfo != null }">
	<div style="width:170px; height:1000px; float:left;">
		<!-- <상위 네비게이션>-->
		<div class="hb_section_mypagenav margin_left_0">

			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/mypageMain.do">이용내역조회</a>
			</div>
			<div class="hb_rec_3_mypage"  style="border: 2px solid #CCCCCC;">
				<a id="hb_a_main"  style="box-shadow: 4px 8px 4px rgb(0 0 0 / 18%);"href="${contextPath}/mypage/myCart.do">장바구니</a>
			</div>
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/Mypage3.do">회원정보수정</a>
			</div>
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/Mypage4.do">적립금 내역</a>
			</div>
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/board/review/myReviewList.do">내 리뷰 내역</a>
			</div>
					
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/delMember.do">회원 탈퇴</a>
			</div>

		</div>
		
		</div>
</c:when>
<c:otherwise>
</c:otherwise>





</c:choose>

		<section class="hb_section_mypagemain">
			<c:if test="${memberInfo != null }"><div
				style="width: 100%; height: 140px; border: 1px solid #CCCCCC; border-radius: 12px; float: right;">

				<div
					style="width: 20%; border-right: 1px solid #CCCCCC; height: 138px; float: left;">
					<a 
						style="width: 80px; margin-top: 10px; height: 80px;  border-radius: 70%; display: block;">
						<img
						style="width: 100%; height: 100%; overflow: hidden; z-index: 9999; border-radius: 70%; border: 0px;"
						src="${contextPath}/profileShow.do?u_id=${memberInfo.u_id}&fileName=${memberInfo.u_imageName}">

					</a><input type="hidden" name="u_id" value="${memberInfo.u_id }">


					<div
						style="width: 100%; margin-top: 10px; font-size: 12px; border-radius: 10px; padding: 3px 10px; display: inline-block;">
						<strong style="font-size: 14px;">${memberInfo.u_name}</strong>님
					</div>
				</div>
			</div>
			</c:if>


			<div class="hb_section_title">
				<h1 id="h1_left_title">장바구니</h1>
			</div>
			
			
						<form action="${contextPath}/mypage/myCart.do" method="post">
			
			
			
<div style="width:100%; padding:11px 10px;height:50px;display:flex;justify-content:flex-start;flex-wrap:wrap; border:1px solid #CCCCCC;border-radius:12px;margin-bottom:20px;">
			
			
<input type="hidden" id="period_color" value="${period_color }">
					<div style="width: 13%; height: 100%; padding: 3.5px; font-weight: bolder; color: #5C5C5C;">기간별 조회하기</div>
					<div style="width: 18%; height: 100%;display:flex;justify-content:flex-start;flex-wrap:wrap;  padding: 0 4px;">
					
					<div style="width:33%; height:100%; padding: 0 1px; ">
					<div class="btn_mypage_date_1" id="one_week"onClick="javascript:searchByPriod('one_week')">1주일</div> </div>
				    <div style="width:33%; height:100%; padding: 0 1px; ">
					<div  class="btn_mypage_date_1"id="15_days"onClick="javascript:searchByPriod('15_days')">15일</div></div>
					<div style="width:33%; height:100%; padding: 0 1px; ">
					<div  class="btn_mypage_date_1"id="one_month"onClick="javascript:searchByPriod('one_month')">1개월</div></div>
					
					</div>
					<div style="width: 29%; height: 100%; display:flex;justify-content:flex-start;flex-wrap:wrap; padding: 0 4px;">
<jsp:useBean id="now" class="java.util.Date" scope="request" />
<c:set var="sysMonth"><fmt:formatDate value="${now}" pattern="MM" /></c:set>

						<div style="width: 20%; height: 100%; padding: 0 1px;">
							<div class="btn_mypage_date_1" id="last_one_month"
								onClick="javascript:searchByPriod('last_one_month')">
								<c:out value="${sysMonth -1}" />월
								
								</div>
						</div>
						<div style="width:20%; height:100%; padding: 0 1px; ">
					<div  class="btn_mypage_date_1" id="last_two_month"onClick="javascript:searchByPriod('last_two_month')">
					<c:out value="${sysMonth -2}" />월
					</div></div>
					<div style="width:20%; height:100%; padding: 0 1px; ">
					<div  class="btn_mypage_date_1"id="last_three_month"onClick="javascript:searchByPriod('last_three_month')">
					<c:out value="${sysMonth -3}" />월
					</div></div>
					<div style="width:20%; height:100%; padding: 0 1px; ">
					<div  class="btn_mypage_date_1"id="last_four_month"onClick="javascript:searchByPriod('last_four_month')">
					<c:out value="${sysMonth -4}" />월
					</div></div>
					<div style="width:20%; height:100%; padding: 0 1px; ">
					<div  class="btn_mypage_date_1"id="last_five_month"onClick="javascript:searchByPriod('last_five_month')">
					<c:choose>
					<c:when test="${(sysMonth-5) > 0 }">
					<c:out value="${sysMonth -5}" />월
				    </c:when>
					<c:otherwise>
					<c:out value="${17-sysMonth }" />월
					</c:otherwise>
					</c:choose>
					</div></div>
					
					
					
					
					
					
					</div>
					<fmt:setLocale value="en_US" scope="session" />
								<fmt:parseDate var="_beginDate" value="${ beginDate }"
									pattern="EEE MMM dd HH:mm:ss z yyyy" />
										<fmt:formatDate var="beginDate_0" value="${_beginDate}"
									pattern="yyyy-MM-dd" />
									<fmt:parseDate var="_endDate" value="${ endDate }"
									pattern="EEE MMM dd HH:mm:ss z yyyy" />
										<fmt:formatDate var="endDate_0" value="${_endDate}"
									pattern="yyyy-MM-dd" /><%-- ${beginDate_0 } ~${endDate_0} --%>
					<div style="width: 30%; height: 100%; border:1px solid #CCCCCC; border-radius:6px;padding: 3.5px;display:flex;justify-content:flex-start;flex-wrap:wrap; ">
					<input type="date" name="beginDate" value="${beginDate_0}"style="padding: 0px 0px 0px 10px;font-size:12px;width:45%">
					<div style="width:10%;height:100%;padding:2px 0;">~</div>
					<input type="date" name="endDate" value="${endDate_0}"style="padding: 0px 0px 0px 10px;font-size:12px;width:45%">
					</div>
					<div style="width: 10%; height: 100%;padding:0 10px; " >
					<button id="search_button"style="width:100%; height:100%; border-radius:6px;font-size: 12px;border:1px solid #CCCCCC;"type="submit">조회하기</button></div>





</div>

</form>
<div style="display:flex;width:924px; justify-content:flex-start;flex-wrap:wrap;">


			<c:choose>
				<c:when test="${empty myCartList}">
					<tr height="10">
						<td colspan="9">
							<p align="center">
								<b><span style="font-size: 9pt;">장바구니가 비었습니다.</span></b>
							</p>
						</td>
					</tr>
				</c:when>
				<c:when test="${!empty myCartList}">

					<c:forEach var="item" items="${myCartList}" varStatus="membersNum">
						<c:set var="i" value="${i +1 }" />
						<form name="cartPay_${i}" id="cartPay_${i}" style="width:462px; height:100px;margin: 10px 0px;"
							action="${contextPath}/order/orderCartGoods.do" method="post">

							<div style="width: 97%; height: 100px; z-index:1;border: 1px solid #CCCCCC; border-radius: 12px; padding: 10px; "
								>
								<fmt:setLocale value="en_US" scope="session" />
								<fmt:parseDate var="checkIn" value="${ item.checkIn_date }" pattern="EEE MMM dd HH:mm:ss z yyyy" />
								<fmt:formatDate var="checkIn_date" value="${checkIn}" pattern="yyyy년 MM월 dd일" />
								<fmt:parseDate var="checkOut" value="${ item.checkOut_date }" pattern="EEE MMM dd HH:mm:ss z yyyy" />
								<fmt:formatDate var="checkOut_date" value="${checkOut}" pattern="yyyy년 MM월 dd일" />
								<input type="hidden" name="cart_code" value="${ item.cart_code }"> 
									<input type="hidden" name="total" value="${ item.total }"> 
									<input type="hidden" name="people_count" value="${ item.people_count }"> 
									<input type="hidden" name="room_fee" value="${ item.room_fee }"> 
									<input type="hidden" name="room_code" value="${ item.room_code }">
								    <input type="hidden" name="checkIn_date" value="${ item.checkIn_date }"> 
									<input type="hidden" name="checkOut_date" value="${ item.checkOut_date }"> 
									<input type="hidden" name="h_code" value="${ item.h_code }"> <img
									src="${contextPath}/thumbnails.do?room_code=${item.room_code}&fileName=${item.room_imageName}"
									style="width: 22%; height: 100%; float: left; border: 1px solid #CCCCCC; cursor:pointer;border-radius: 12px;"
									onClick="location.href='${contextPath}/host/goods/goodsDetail.do?room_code=${ item.room_code}'" >
								<div
									style="width: 50%; cursor:pointer;height: 25%; float: left; text-align: left; padding-left: 10px; margin-top: 5px; font-size: 14px; font-weight: 570;"
									onClick="location.href='${contextPath}/host/goods/goodsDetail.do?room_code=${ item.room_code}'" >
									${ item.title }</div>
									<div style="width: 23%; height: 50%; float: right;"><a id="btn_mypage_0" onClick="cartPay('cartPay_' +${i})" href="#">주문하기</a></div>
								<div
									style="width: 50%; height: 25%; float: left; text-align: left; padding-left: 10px; margin-top: 5px; font-size: 14px; font-weight: 540;">
									호스트: ${ item.h_name }</div>
								<div
									style="width: 77%; height: 25%; float: left; text-align: left; padding-left: 10px; margin-top: 5px; font-size: 14px; font-weight: 540;">
									${checkIn_date } ~ ${checkOut_date }</div>

							</div>
							<div style="width: 2%; height: 100px; float: left;"></div>


						</form>
					</c:forEach>

				</c:when>
			</c:choose>









</div>



<div style="width:100%;height:2px;border-top:2px solid #CCCCCC;margin:20px 0px;"></div>


<c:choose>
 <c:when test="${not empty myCartList }">	
   <DIV id="page_wrap">
		 <c:forEach   var="page" begin="1" end="${cnt }" step="1" >
		         <c:if test="${section >1 && page==1 }">
		          <a id="btn_pageNum" style="width:50px;"href="${contextPath}/mypage/myCart.do?section=${section-1}&pageNum=${(section-1)*10 +1 }&period_color=${period_color }&beginDate=${beginDate_0}&endDate=${endDate_0}">&nbsp;이전 &nbsp;</a>
		         </c:if>
		          <a id="btn_pageNum" href="${contextPath}/mypage/myCart.do?section=${section}&pageNum=${page}&period_color=${period_color }&beginDate=${beginDate_0}&endDate=${endDate_0}">${(section-1)*10 +page } </a>
		         <c:if test="${page ==10 }">
		          <a id="btn_pageNum" style="width:50px;"href="${contextPath}/mypage/myCart.do?section=${section+1}&pageNum=${section*10+1}&period_color=${period_color }&beginDate=${beginDate_0}&endDate=${endDate_0}">&nbsp; 다음</a>
		         </c:if> 
	      </c:forEach> 
	</DIV>	
 </c:when>
</c:choose>

	</section>
	</section>
	

</body>

</html>
