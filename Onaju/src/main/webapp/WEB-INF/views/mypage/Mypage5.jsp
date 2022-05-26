
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
hr{
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
	height:100%;
}


.hb_section_mypagemain_1 {
	display: inline-block;
	width: 920px;
	height:170px;
}

.hb_section_mypagemain_profile {
	border: 1px solid #CCCCCC;
	display: inline-block;
	width: 150px;
	height:168px;
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
	border:0;
}

.margin_left_1{
width:750px;
height:168px;
text-align:left;
}
#grade{
display: inline-block;
width:150px;
height:33px;
border:0;
outline:0;
border-radius: 5px;
font-weight:bold;
color:white;
}

#img2 {
display: inline-block;
float:left;
width:200px;
height:150px;
}
#btbt2{
background-color:#FC4E82;
display: inline-block;
width:50px;
height:25px;
border:0;
outline:0;
border-radius: 5px;
float:right;
font-weight:bold;
color:white;
}
.r1{
text-align:left;
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

#h1_left_title{

	color:  #5C5C5C;
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
	box-shadow: 4px 8px 4px rgb(0 0 0 / 18%);
	}
</style>

<c:if test='${ empty isLogOn }'>

	<script>
		window.onload = function() {
			result();
		}

		function result() {
			alert("로그인이 필요한 서비스입니다.");
			location.href="${contextPath}/main/main.do"
		}

		
	
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

</script>
</head>
<body>

	<section class="hb_section_total">
	
	
	
	
	<div style="width:170px; height:1000px; float:left;">
		<!-- <상위 네비게이션>-->
		<div class="hb_section_mypagenav margin_left_0">

			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/mypageMain.do">이용내역조회</a>
			</div>
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/myCart.do">장바구니</a>
			</div>
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/Mypage3.do">회원정보수정</a>
			</div>
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/Mypage4.do">적립금 내역</a>
			</div>
			<div class="hb_rec_3_mypage"style="border: 2px solid #CCCCCC;">
				<a id="hb_a_main" href="${contextPath}/board/review/myReviewList.do">내 리뷰 내역</a>
			</div>
					
			<div class="hb_rec_3_mypage">
				<a id="hb_a_main" href="${contextPath}/mypage/delMember.do">회원 탈퇴</a>
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
			</div>
		<div class="hb_section_title">
			<h1 id="h1_left_title">내 리뷰 내역</h1>
		</div>
		
		
		
		
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
					
					<form name="new_${i }" id="new_${i }"action="${contextPath}/board/review/modReview.do" method="post">
					
					<div style="width:100%;height:100px;border: 1px solid #CCCCCC; float:left; border-radius:12px;padding:10px;margin:10px 0px;">
	




		<div style="width:48%; height:100%;  float:left; border-radius:12px;display:inline-block;cursor:pointer; "onClick="cartPay('cartPay_' +${i})">
		<fmt:setLocale value="en_US" scope="session"/>
		<fmt:parseDate var="checkIn" value="${ item.checkIn_date }" pattern="EEE MMM dd HH:mm:ss z yyyy" />
		<fmt:formatDate var="checkIn_date" value="${checkIn}" pattern="yyyy/MM/dd"/>
		<fmt:parseDate var="checkOut" value="${ item.checkOut_date }" pattern="EEE MMM dd HH:mm:ss z yyyy" />
		<fmt:formatDate var="checkOut_date" value="${checkOut}" pattern="yyyy/MM/dd"/>
		<fmt:parseDate var="creDate" value="${ item.creDate }" pattern="EEE MMM dd HH:mm:ss z yyyy" />
		<fmt:formatDate var="creDate_" value="${creDate}" pattern="yyyy/MM/dd"/>
	
		
		<img src="${contextPath}/thumbnails.do?room_code=${item.room_code}&fileName=${item.room_imageName}" style="width:22%; height:100%; float:left;border: 1px solid #CCCCCC;border-radius:12px;">
		<div style="width:77%; height:25%; float:left; text-align:left; padding-left:10px;margin-top:5px;font-size:14px;font-weight:570;">     ${ item.title }</div>
				<div style="width:77%; height:25%; float:left; text-align:left; padding-left:10px;margin-top:5px;font-size:12px;font-weight:540;">리뷰 작성일: ${creDate_ }</div>
		
		<div style="width:77%; height:25%; float:left; text-align:left; padding-left:10px;margin-top:5px;font-size:12px;font-weight:540;">이용 기간 : ${checkIn_date } ~ ${checkOut_date }</div>
 
 
 
 
 
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
	
		
		</section>
		
		
		
		
		
		
		
		
		







	</section>
</body>

</html>
