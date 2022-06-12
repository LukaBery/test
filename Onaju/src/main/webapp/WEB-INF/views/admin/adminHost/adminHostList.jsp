<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<style type="text/css">
.host-search-1{
	display: flex;
}
.host-row-col1{
	width: 200px;
	height: 50px;
	border: 1px solid #E6E6E6; 
	border-bottom: none;
	color: #ffffff;
	background-color: #000033; 
	display:flex; 
	align-items: center;
}
.host-row-col2{
	width: 940px; 
	height: 50px; 
	border: 1px solid #E6E6E6;
	border-bottom: none; 
	display:flex; 
	align-items: center;
	border-bottom: none;
}
.host-row-col3{
	width: 370px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	border-bottom: none;
	display:flex; 
	align-items: center;
}
.host-row-col4{
	width: 370px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.host-row-col1 div{
	margin-left: 20px;
}
.host-row-col2 div{
	margin-left: 20px;
}
.host-row-col3 div{
	margin-left: 20px;
}
.host-row-col4 div{
	margin-left: 20px;
}
.host-row-col2 div input{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;	
}
.host-row-col3 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.host-row-col3 div select{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.host-row-col4 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.styled-table{
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0 0.15); 
	width: 100%;
	table-layout: fixed;
}
.styled-table thead tr{
	background-color: #000033;
	color: #ffffff;
	text-align: left;
}
.styled-table thead tr td{
	font-size: 14px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
.styled-table tr td{
	font-size: 14px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
.styled-table th, .styled-table td {
	padding: 12px 15px;
}
.styled-table tbody tr{
	border-bottom: 1px solid #dddddd;
	font-size: 13px;
}
.styled-table tbody tr:hover{
	background-color: #99CCFF;
}
.styled-table tbody tr td a {
	text-decoration: none;
	color: black;
}
.styled-table tbody tr:nth-of-type(even){
	background-color: #f3f3f3;
}
.styled-table tbody tr:nth-of-type(even):hover{
	background-color: #99CCFF;
}
.styled-table tbody tr:nth-of-type{
	border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row{
	font-weight: bold;
	color: #009879;
}
.memberList-row2{
	width: 1140px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.memberList-row2 div button{
	width: 100px; 
	height: 40px; 
	border-radius: 5px; 
	border: none; 
	background-color: #ff3333; 
	color: white;
}
.host-row-col2 div button{
	width: 75px;
	height: 30px;
	border-radius: 15px; 
	border: none;
	background-color: #f6f6f6; 
	color: #666666;
	margin: 0px 5px 0px 5px;
	cursor: pointer;
}
</style>
</head>
<body>

<div class="container-fluid px-4" style="margin: 15px 0px 15px 0px;">
<article><h3 class="mt-4"><strong>사업주 승인 관리</strong></h3></article>
</div>
<article>

<div>
	<form name="searchVO" action="${contextPath }/admin/hostSearch.do" method="get">
		<div class="host-search-1">
			<div class="host-row-col1"><div>가입일자</div></div>
			<div class="host-row-col2">
			<div>
			<label for="startDate">시작날짜&nbsp;:&nbsp;</label><input class="datepicker" id="startDate" name="join_startDate" autocomplete=off>&emsp;
				<label for="endDate">종료날짜&nbsp;:&nbsp;</label><input class="datepicker" id="endDate" name="join_endDate" autocomplete=off>&emsp; 
			
				<button type="button" id="settingDate1" value="yesterday">어제</button>
				<button type="button" id="settingDate2" value="today">오늘</button>
				<button type="button" id="settingDate3" value="month">1개월</button>
				<button type="button" id="settingDate4" value="reset">사용안함</button>
			</div></div>
		</div>
		<div class="host-search-1">
			<div class="host-row-col1"><div>상태</div></div>
			<div class="host-row-col3"><div><select name="del_yn"><option value="">상태</option><option value="N">가입완료</option><option value="Y">회원탈퇴</option></select></div></div>
			<div class="host-row-col1"><div>사업자등록번호</div></div>
			<div class="host-row-col3"><div><input type="text" name="h_sellerNum"></div></div>
		</div>
		<div class="host-search-1">
			<div class="host-row-col1"><div>아이디</div></div>
			<div class="host-row-col4"><div><input type="text" name="h_id"></div></div>
			<div class="host-row-col1"><div>대표자명</div></div>
			<div class="host-row-col4"><div><input type="text" name="h_name"></div></div>
		</div>
		<div class="memberList-row2">
			<div><button type="submit">조회</button></div>
		</div>
	</form>
	<div align="right">
		<div>드롭다운박스</div>
	</div>
</div>
</article>
	<table class="styled-table" >
		<colgroup>
			<col style="width:5%">
			<col style="width:15%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:12%">
			<col style="width:15%">
			<col style="width:12%">
			<col style="width:14%">
			<col style="width:7%">
		</colgroup>
		<thead>
  			<tr>
    			<td>NO</td>  
     			<td>원정생성일</td>            
     			<td>ID</td>
     			<td>대표자명</td>
     			<td>전화번호</td>
     			<td>이메일</td>
     			<td>사업자번호</td>
     			<td>지역</td>
     			<td>상태</td>
  			</tr>
  		</thead>
		<c:choose>
  			<c:when test="${empty hostList}" >
  				<tbody>
    				<tr  height="10">
    					<td colspan="9">
    						<p align="center">
        						<b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        					</p>
      					</td>  
    				</tr>
    			</tbody>
  			</c:when>
  			<c:when test="${!empty hostList}" >
    			<c:forEach  var="host" items="${hostList }" varStatus="hostNum" >
    				<tr style="cursor: pointer;" onclick="location.href='${contextPath}/admin/hostDetail.do?h_id=${host.h_id}'" >
						<td>${hostNum.count}</td>
						<td>${host.joinDate }</td>
						<td>${host.h_id}</td>
						<td>${host.h_name }</td>   
						<td>${host.h_phone }</td>   
						<td>${host.h_email1}@${host.h_email2}</td>   
						<td>${host.h_sellerNum}</td>   
						<td>${host.roadAddress }</td>   
						<td>${host.del_yn}</td>    
					</tr>
    			</c:forEach>
    		 </c:when>
   		 </c:choose>
	</table>



<section>
	<div>
		<div style="display: flex; justify-content: center;">
	<c:if test="${pageMaker.prev }">
		<div>
			<a href="${contextPath }/admin/hostList.do?page=${pageMaker.startPage - 1}">앞으로</a>
		</div>
	</c:if>
	<c:forEach var="pageNum" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
		<div style="width: 30px; height: 30px; margin: 15px 3px 15px 3px; border: 1px solid #eeeeee; border-radius:5px; text-align: center; line-height: 30px;">
			<a style="text-decoration: none; color: #666666;" href="${contextPath }/admin/hostList.do?page=${pageNum}">${pageNum }</a>
		</div>
	</c:forEach>
	<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
		<div>
			<a href="${contextPath }/admin/hostList.do?page=${pageMaker.endPage + 1}">뒤로</a>
		</div>
	</c:if>
	</div>
	</div>
</section>

<script>
$.datepicker.regional['ko'] = {
	      closeText: '닫기',
	      prevText: '이전달',
	      nextText: '다음달',
	      monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)',
	      '7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
	      monthNamesShort: ['1월','2월','3월','4월','5월','6월',
	      '7월','8월','9월','10월','11월','12월'],
	      dayNames: ['일','월','화','수','목','금','토'],
	      dayNamesShort: ['일','월','화','수','목','금','토'],
	      dayNamesMin: ['일','월','화','수','목','금','토'],
	      weekHeader: 'Wk',
	      dateFormat: 'yy-mm-dd',
	      firstDay: 0,
	      isRTL: false,
	      showMonthAfterYear: true,
	      yearSuffix: '',
	      changeMonth: true,
	      changeYear: true,
	      showButtonPanel: true,
	      yearRange: 'c-99:c+99',
};
$.datepicker.setDefaults($.datepicker.regional['ko']);

$( function() {
    var dateFormat = "yy-mm-dd",
      from = $( "#startDate" )
        .datepicker({
          defaultDate: "+1w",
          changeMonth: true,
          numberOfMonths: 1,
          maxDate: "+0M +0D"
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = $( "#endDate" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 1,
        maxDate: "+0M +0D"
      })
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });
 
    function getDate( element ) {
      var date;
      try {
        date = $.datepicker.parseDate( dateFormat, element.value );
      } catch( error ) {
        date = null;
      }
 
      return date;
    }
});
</script>
<script type="text/javascript">
$(function(){
	var setdate1 = $("#settingDate1").val();
	var setdate2 = $("#settingDate2").val();
	var setdate3 = $("#settingDate3").val();
	var setdate4 = $("#settingDate4").val();
	
$("#settingDate1").click(function(){
		
		switch(setdate1){
		case "yesterday" :
			from = $("#startDate").datepicker("setDate", "-1D");
			to = $("#endDate").datepicker("setDate", "-1D");
		break
		}
	});
	$("#settingDate2").click(function(){
		
		switch(setdate2){
		case "today" :
			 
			from = $("#startDate").datepicker("setDate", "today");
			to = $("#endDate").datepicker("setDate", "today");
		break
		}
	});
	$("#settingDate3").click(function(){
		
		switch(setdate3){
		case "month" :
			from = $("#startDate").datepicker("setDate", "-1M");
			to = $("#endDate").datepicker("setDate", "today");
		break
		}
	});
	$("#settingDate4").click(function(){
		
		switch(setdate4){
		case "reset" :
			from = $("#startDate").datepicker("setDate", null);
			to = $("#endDate").datepicker("setDate", null);
		break
		}
	});
});
</script>
</body>
</html>