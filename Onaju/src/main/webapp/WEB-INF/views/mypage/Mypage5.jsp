
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


<c:if test='${ not empty period_color }'>

	<script>
	window.onload=function()
	{
	  result1();
	}

	function result1(){
		  document.getElementById('${period_color}').setAttribute('class','btn_clicked');
	}
	</script>
</c:if>

<c:if test='${ not empty pageNum }'>

	<script>
	window.addEventListener('load', function() {
		  document.getElementById('page_${pageNum}').setAttribute('class','btn_pageNum_clicked');
		});

	</script>
</c:if>
<script>

function modReview(boardNum){
	
	
	  
	 document.getElementById(boardNum).submit();
	 
	 
	 }
function delReview(boardNum){
	
	
	  document.getElementById(boardNum).setAttribute('action','${contextPath}/board/review/delReview.do'); 

	 document.getElementById(boardNum).submit();
	 
	 
	 }

function searchByPriod_reviewList(period){
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
    formObj.action="${contextPath}/board/review/myReviewList.do";
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
		
		if((endDay-7)<1){
			beginMonth=dt.getMonth();
			minus_date = Math.abs(endDay-7);
			real_date = new Date(endYear, beginMonth, 0).getDate();
			dt.setDate(real_date-minus_date);
		}
		else{
	
			beginMonth=dt.getMonth()+1;
			dt.setDate(endDay-7);
		}
	
		beginDay=dt.getDate();
		
	}else if(search_period=='15_days'){
		beginYear = dt.getFullYear();
		if((endDay-15)<1){
			beginMonth=dt.getMonth();
			minus_date = Math.abs(endDay-15);
			real_date = new Date(endYear, beginMonth, 0).getDate();
			dt.setDate(real_date-minus_date);
		}
		else{
	
			beginMonth=dt.getMonth()+1;
			dt.setDate(endDay-15);
		}
	
		beginDay=dt.getDate();
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
	
	
	
	
	<div class="hb_nav_box1">
		<!-- <상위 네비게이션>-->
		<div class="hb_nav_section_1 margin_left_0">

			<div class="hb_nav_btn">
				<a class="hb_nav_btn_a" href="${contextPath}/mypage/mypageMain.do">이용내역조회</a>
			</div>
			<div class="hb_nav_btn">
				<a class="hb_nav_btn_a" href="${contextPath}/mypage/myCart.do">장바구니</a>
			</div>
			<div class="hb_nav_btn">
				<a class="hb_nav_btn_a" href="${contextPath}/mypage/Mypage3.do">회원정보수정</a>
			</div>
			
			<div class="hb_nav_btn"style="border: 2px solid #CCCCCC;">
				<a class="hb_nav_btn_a hb_nav_shadow" href="${contextPath}/board/review/myReviewList.do">내 리뷰 내역</a>
			</div>
					
			<div class="hb_nav_btn">
				<a class="hb_nav_btn_a" href="${contextPath}/mypage/delMember.do">회원 탈퇴</a>
			</div>

		</div>
		
		</div>
		
		
		<section class="hb_section_mypagemain">
			<div
				style="width: 100%; height: 140px; border: 1px solid #CCCCCC; border-radius: 12px; float: right;">

				<div
					style="width: 20%; border-right: 1px solid #CCCCCC; height: 138px; float: left;">
					<a 
						style="width: 80px; margin-top: 10px; height: 80px;  border-radius: 70%; display: block;">
						<img
						style="width: 100%; height: 100%; overflow: hidden; z-index: 9999; border-radius: 70%; border: 0px;"
						src="${contextPath}/profileShow.do?u_id=${memberInfo.u_id}&fileName=${memberInfo.u_imageName}">

					</a>


					<div
						style="width: 100%; margin-top: 10px; font-size: 12px; border-radius: 10px; padding: 3px 10px; display: inline-block;">
						<strong style="font-size: 14px;">${memberInfo.u_name}</strong>님
					</div>
				</div>
				
							<div class="mypage_user_info_grade">
				<div class="mypage_user_info_grade_2">
						
						<c:choose>
						<c:when test="${memberInfo.u_grade.equals('vip') }">
				<img src="${contextPath}/resources/image/icons/user_grade_vip.svg">
				
				<div class="mypage_user_info_grade_logo"><strong style="font-size: 12px; color:rgb(238,50,86);">VIP 등급</strong></div>
				</c:when>
				
				
				<c:when test="${memberInfo.u_grade.equals('gold')}">
				
				<img src="${contextPath}/resources/image/icons/user_grade_gold.svg">
				<div class="mypage_user_info_grade_logo"><strong style="font-size: 12px; color:rgb(255,187,5);">GOLD </strong>등급</div>
				</c:when>
				
					<c:when test="${memberInfo.u_grade.equals('silver') }">
				
				<img src="${contextPath}/resources/image/icons/user_grade_silver.svg">
				<div class="mypage_user_info_grade_logo"><strong style="font-size: 12px;color:rgb(113,203,211);">SILVER 등급</strong></div>
				</c:when>
				
				</c:choose>
				
				
				
				</div>	
				</div>
				
			</div>
		<div class="hb_section_title">
			<h1 id="h1_left_title">내 리뷰 내역</h1>
		</div>
		
		
					
			<form action="${contextPath}/board/review/myReviewList.do" method="post">
			<input type="hidden" name="section" value="${section }">
			<input type="hidden" name="pageNum" value="${pageNum }">			
            <input type="hidden" id="period_color" value="${period_color }">
			
			<div style="width:100%; padding:11px 10px;height:50px;display:flex;justify-content:flex-start;flex-wrap:wrap; border:1px solid #CCCCCC;border-radius:12px;margin-bottom:20px;">
			

					<div style="width: 13%; height: 100%; padding: 3.5px; font-weight: bolder; color: #5C5C5C;">기간별 조회하기</div>
					<div style="width: 18%; height: 100%;display:flex;justify-content:flex-start;flex-wrap:wrap;  padding: 0 4px;">
					
					<div style="width:33%; height:100%; padding: 0 1px; ">
					<div class="btn_mypage_date_1" id="one_week"onClick="javascript:searchByPriod_reviewList('one_week')">1주일</div> </div>
				    <div style="width:33%; height:100%; padding: 0 1px; ">
					<div  class="btn_mypage_date_1"id="15_days"onClick="javascript:searchByPriod_reviewList('15_days')">15일</div></div>
					<div style="width:33%; height:100%; padding: 0 1px; ">
					<div  class="btn_mypage_date_1"id="one_month"onClick="javascript:searchByPriod_reviewList('one_month')">1개월</div></div>
					
					</div>
					<div style="width: 29%; height: 100%; display:flex;justify-content:flex-start;flex-wrap:wrap; padding: 0 4px;">
<jsp:useBean id="now" class="java.util.Date" scope="request" />
<c:set var="sysMonth"><fmt:formatDate value="${now}" pattern="MM" /></c:set>

						<div style="width: 20%; height: 100%; padding: 0 1px;">
							<div class="btn_mypage_date_1" id="last_one_month"
								onClick="javascript:searchByPriod_reviewList('last_one_month')">
								<c:out value="${sysMonth -1}" />월
								
								</div>
						</div>
						<div style="width:20%; height:100%; padding: 0 1px; ">
					<div  class="btn_mypage_date_1" id="last_two_month"onClick="javascript:searchByPriod_reviewList('last_two_month')">
					<c:out value="${sysMonth -2}" />월
					</div></div>
					<div style="width:20%; height:100%; padding: 0 1px; ">
					<div  class="btn_mypage_date_1"id="last_three_month"onClick="javascript:searchByPriod_reviewList('last_three_month')">
					<c:out value="${sysMonth -3}" />월
					</div></div>
					<div style="width:20%; height:100%; padding: 0 1px; ">
					<div  class="btn_mypage_date_1"id="last_four_month"onClick="javascript:searchByPriod_reviewList('last_four_month')">
					<c:out value="${sysMonth -4}" />월
					</div></div>
					<div style="width:20%; height:100%; padding: 0 1px; ">
					<div  class="btn_mypage_date_1"id="last_five_month"onClick="javascript:searchByPriod_reviewList('last_five_month')">
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
  					<c:when test="${empty myReviewList}" >
    					<tr  height="10">
      						<td colspan="9">
         						<p align="center">
            						<b><span style="font-size:9pt;">작성한 리뷰가 없습니다.</span></b>
        						</p>
      						</td>  
    					</tr>
  					</c:when>
  					<c:when test="${!empty myReviewList}" >
  					
			<c:forEach  var="item" items="${myReviewList}" varStatus="membersNum" >
					<c:set var="i" value="${i +1 }"/>
					
					<form name="new_${i }" style="width:100%;" id="new_${i }"action="${contextPath}/board/review/modReview.do" method="post">
					
					<div style="width:100%;height:100px;border: 1px solid #CCCCCC; float:left; border-radius:12px;padding:10px;margin:10px 0px;">
	




		<div style="width:48%; height:100%;  float:left; border-radius:12px;display:inline-block;cursor:pointer; "onClick="cartPay('cartPay_' +${i})">
		<fmt:setLocale value="en_US" scope="session"/>
		<fmt:parseDate var="checkIn" value="${ item.checkIn_date }" pattern="EEE MMM dd HH:mm:ss z yyyy" />
		<fmt:formatDate var="checkIn_date" value="${checkIn}" pattern="yyyy/MM/dd"/>
		<fmt:parseDate var="checkOut" value="${ item.checkOut_date }" pattern="EEE MMM dd HH:mm:ss z yyyy" />
		<fmt:formatDate var="checkOut_date" value="${checkOut}" pattern="yyyy/MM/dd"/>
		<fmt:parseDate var="creDate" value="${ item.creDate }" pattern="EEE MMM dd HH:mm:ss z yyyy" />
		<fmt:formatDate var="creDate_" value="${creDate}" pattern="yyyy/MM/dd"/>
	
		
		<img src="${contextPath}/thumbnails.do?room_code=${item.room_code}&fileName=${item.room_imageName}" class="mypage_card_image">
		<div style="width:77%;"class="mypage_card_title">     ${ item.title }</div>
				<div style="width:77%; height:25%; float:left; text-align:left; padding-left:10px;margin-top:5px;font-size:12px;font-weight:540;">리뷰 작성일: ${creDate_ }</div>
		
		<div style="width:77%;"class="mypage_card_title">이용 기간 : ${checkIn_date } ~ ${checkOut_date }</div>
 
 
 
 
 
		</div>
		
		<div id = "reviewForm_0_${i }" style="width:50%;height:100%; display:inline-block; ">
								
								<div 
								style="background-color:none;height:30%;color:rgb(250,100,145,0.7);width:80%;float:left;font-size: 14px;text-align:left;">별점  ★★★☆☆</div>
								<TEXTAREA name="review_content" 
								placeholder="리뷰 내용을 입력하세요"style=" height:70%;width:80%;float:left;font-size: 12px; border:1px solid #CCCCCC;">${item.review_content }</TEXTAREA>
										        <input type="hidden" name="review_num" value="${item.review_num }">
										        <input type="hidden" name="order_code" value="${item.order_code }">
								
									
										<div style="width:18%;height:28%;display: inline-block;"></div>
												<a style="width: 18%; height: 25%; border: 1px solid #CCCCCC; color: black; font-weight: 540; background-color: white; 
											border-radius: 12px; z-index: 9999; font-size: 11px; padding: 3px;margin:3px;" onClick="modReview('new_'+${i})" href="#" >
												수정하기 </a>
													<a style="width: 18%; height: 25%; border: 1px solid #CCCCCC; color: black; font-weight: 540; background-color: white; 
											border-radius: 12px; z-index: 9999; font-size: 11px; padding: 3px;margin:3px;" onClick="delReview('new_'+${i})" href="#">
												삭제하기 </a>				
								</div>
				
		
		
		
	
		
		
		
		

		
		
		
		
		
		</div>
		
		</form>
		
		
		</c:forEach>
		
	</c:when>
          		</c:choose>
	
		</div>
		
		<div style="width:100%;height:2px;border-top:2px solid #CCCCCC;margin:20px 0px;"></div>
<c:choose>
 <c:when test="${not empty myReviewList }">	
   <DIV id="page_wrap">
		 <c:forEach   var="page" begin="1" end="${cnt }" step="1" >
		         <c:if test="${section >1 && page==1 }">
		          <a class="btn_pageNum" style="width:50px;"href="${contextPath}/board/review/myReviewList.do?section=${section-1}&pageNum=${(section-1)*10 +1 }&period_color=${period_color }&beginDate=${beginDate_0}&endDate=${endDate_0}">&nbsp;이전 &nbsp;</a>
		         </c:if>
		          <a class="btn_pageNum" id="page_${page }"href="${contextPath}/board/review/myReviewList.do?section=${section}&pageNum=${page}&period_color=${period_color }&beginDate=${beginDate_0}&endDate=${endDate_0}">${(section-1)*10 +page } </a>
		         <c:if test="${page ==10 }">
		          <a class="btn_pageNum" style="width:50px;"href="${contextPath}/board/review/myReviewList.do?section=${section+1}&pageNum=${section*10+1}&period_color=${period_color }&beginDate=${beginDate_0}&endDate=${endDate_0}">&nbsp; 다음</a>
		         </c:if> 
	      </c:forEach> 
	</DIV>	
 </c:when>
</c:choose>










		</section>
		
		
		
		
		
		
		
		
		







	</section>
</body>

</html>
