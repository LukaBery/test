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
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<style type="text/css">
.noticeBoard-row{
	display: flex;
}
.noticeBoard-row-2{
	width: 1140px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.noticeBoard-row-3{
	width: 1140px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.noticeBoard-row-col1{
	width: 200px; 
	height: 50px; 
	color: #ffffff;
	border: 1px solid #000033;
	border-bottom: 1px solid #ffffff; 
	background-color: #000033; 
	display:flex; 
	align-items: center;
}
.noticeBoard-row-col2{
	width: 370px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.noticeBoard-row-col3{
	width: 940px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
	border-bottom: none;
}
.noticeBoard-row-col1 div{
	margin-left: 20px;
}
.noticeBoard-row-col2 div{
	margin-left: 20px;
}
.noticeBoard-row-col2 div input{
	width: 330px;
}
.noticeBoard-row-2 div{
	width: 150px; 
	height: 50px; 
	margin: 5px 5px 5px 5px;
}
.noticeBoard-row-2 div a{
	display:block; 
	width:130px; 
	line-height:45px; 
	text-align:center; 
	border-radius: 5px; 
	border: 1px solid #000033; 
	text-decoration: none;
	background-color: #000033;
	color: white;
}
.noticeBoard-row-2 div input{
	width: 130px; 
	height: 45px; 
	border-radius: 5px; 
	border: none; 
	background-color: #FF3333; 
	color: white;
}
.noticeBoard-row-3 div input{
	width: 100px; 
	height: 40px; 
	border-radius: 5px; 
	border: none; 
	background-color: #ff3333; 
	color: white;
}
.noticeBoard-row-col2 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.noticeBoard-row-col2 div select{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.noticeBoard-row-col3 div input{
	width: 150px;
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
.noticeBoard-row-col3 div button{
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
<section>
	<div class="container-fluid px-4" style="margin: 15px 0px 15px 0px;">
		<article><h3 class="mt-4"><strong>???????????? ??????</strong></h3></article>
	</div>
	<article>
		<form name="searchMap" action="${contextPath }/admin/searchNotice.do" method="post">	
			<div class="noticeBoard-row">
				<div class="noticeBoard-row-col1"><div>??????</div></div>
				<div class="noticeBoard-row-col3">
				<div>
				&emsp;?????? ??????&emsp;<input class="datepicker" id="startDate" name="write_startDate" autocomplete=off>&emsp;
				?????? ??????&emsp;<input class="datepicker" id="endDate" name="write_endDate" autocomplete=off>&emsp; 
			
				<button type="button" id="settingDate1" value="yesterday">??????</button>
				<button type="button" id="settingDate2" value="today">??????</button>
				<button type="button" id="settingDate3" value="month">1??????</button>
				<button type="button" id="settingDate4" value="reset">????????????</button>
				</div></div>
			</div>
			<div class="noticeBoard-row">
				<div class="noticeBoard-row-col1"><div>????????????</div></div>
				<div class="noticeBoard-row-col2">
					<div>
						<select name="notice_type">
							<option value="">?????? ??????</option>
							<option value="??????">??????</option>
							<option value="??????">??????</option>
							<option value="??????">??????</option>
						</select>
					</div>
				</div>
				<div class="noticeBoard-row-col1"><div>??????</div></div>
				<div class="noticeBoard-row-col2"><div><input type="search" name="notice_title"></div></div>
			</div>
			<div class="noticeBoard-row-3">
				<div><input type="submit" value="??????" ></div>
			</div>
		</form>
	
		<div align="right">
			<div>??????????????????</div>
		</div>
	</article>
</section>
<section>
	<table class="styled-table">
		<colgroup>
			<col style="width:8%">
			<col style="width:10%">
			<col style="width:14%">
			<col style="width:14%">
			<col style="width:20%">
			<col style="width:10%">
			<col style="width:10%">
			<col style="width:14%">
		</colgroup>
		<thead>
 			<tr>
				<td >????????????</td>
     			<td >?????????</td>  
     			<td >????????????</td>            
     			<td >????????????</td>
     			<td >??????</td>
     			<td >????????????</td>
     			<td >????????????</td>
     			<td >????????? ?????????</td>     			
  			</tr>
		</thead>
		<c:choose>
  			<c:when test="${empty noticeList}" >
    			<tr  height="10">
      				<td colspan="9">
         				<p align="center">
            				<b><span style="font-size:9pt;">????????? ?????? ????????????.</span></b>
        				</p>
      				</td>  
    			</tr>
  			</c:when>
  			<c:when test="${!empty noticeList}" >
    			<c:forEach  var="notice" items="${noticeList }" varStatus="reviewNum" >
     				<tr style="cursor: pointer;" onclick="location.href='${contextPath}/admin/noticeDetail.do?notice_code=${notice.notice_code}'">
						<td>${reviewNum.count}</td>
						<td>${notice.a_id }</td>
						<td>${notice.notice_startDate }</td>
						<td>${notice.notice_endDate }</td>
						<td>${notice.notice_title }</td>   
						<td>${notice.notice_type }</td>   
						<td>${notice.post_chennel }</td>   
						<td>${notice.writeDate }</td>   								  
					</tr>
    			</c:forEach>
     		</c:when>  		
    	</c:choose>
    </table>
</section>
<div>
	<div style="display: flex; justify-content: center;">
	<c:if test="${pageMaker.prev }">
		<div>
			<a href="${contextPath }/admin/noticeList.do?page=${pageMaker.startPage - 1}">?????????</a>
		</div>
	</c:if>
	<c:forEach var="pageNum" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
		<div style="width: 30px; height: 30px; margin: 15px 3px 15px 3px; border: 1px solid #eeeeee; border-radius:5px; text-align: center; line-height: 30px;">
			<a style="text-decoration: none; color: #666666;" href="${contextPath }/admin/noticeList.do?page=${pageNum}">${pageNum }</a>
		</div>
	</c:forEach>
	<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
		<div>
			<a href="${contextPath }/admin/noticeList.do?page=${pageMaker.endPage + 1}">??????</a>
		</div>
	</c:if>
	</div>
</div>

<div class="noticeBoard-row-2">
	<div><a class="a1" href="${contextPath}/admin/noticeForm.do">?????????</a></div>
	<div><input class="a2" type="submit" value="????????????"></div>
</div>

<script>
$.datepicker.regional['ko'] = {
	      closeText: '??????',
	      prevText: '?????????',
	      nextText: '?????????',
	      monthNames: ['1???(JAN)','2???(FEB)','3???(MAR)','4???(APR)','5???(MAY)','6???(JUN)',
	      '7???(JUL)','8???(AUG)','9???(SEP)','10???(OCT)','11???(NOV)','12???(DEC)'],
	      monthNamesShort: ['1???','2???','3???','4???','5???','6???',
	      '7???','8???','9???','10???','11???','12???'],
	      dayNames: ['???','???','???','???','???','???','???'],
	      dayNamesShort: ['???','???','???','???','???','???','???'],
	      dayNamesMin: ['???','???','???','???','???','???','???'],
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
