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
.memberList-row{
	display: flex;
}
.memberList-row2{
	width: 1140px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.memberList-row-col1{
	width: 200px; 
	height: 50px; 
	border: 1px soled #000033;
	border-bottom: 1px solid #ffffff; 
	background-color: #000033; 
	display:flex; 
	align-items: center;
}
.memberList-row-col4{
	width: 200px; 
	height: 50px; 
	border: 1px soled #000033;
	background-color: #000033; 
	display:flex; 
	align-items: center;
}
.memberList-row-col2{
	width: 370px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.memberList-row-col3{
	width: 940px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
	border-bottom: none;
}
.memberList-row-col1 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
}
.memberList-row-col2 div{
	margin-left: 20px;
}
.memberList-row-col3 div{
	margin-left: 20px;
	color: #4D4D4D;
}
.memberList-row-col4 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
}
.memberList-row-col2 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.memberList-row-col2 div select{
	width: 150px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
}
.memberList-row-col3 div input{
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
	/* border: 1px solid #ffffff; */
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
.memberList-row2 div input{
	width: 100px; 
	height: 40px; 
	border-radius: 5px; 
	border: none; 
	background-color: #ff3333; 
	color: white;
	cursor: pointer;
}
.memberList-row-col3 div button{
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
			<article>
				<h3 class="mt-4"><strong>?????? ??????</strong></h3>
			</article>
		</div>
	</section>
	<form action="${contextPath }/admin/searchMember.do" method="get">
		<div>
			<div class="memberList-row">
				<div class="memberList-row-col1"><div>????????????</div></div>
				<div class="memberList-row-col3">
				<div>
				<label for="startDate">????????????&nbsp;:&nbsp;</label><input class="datepicker" id="startDate" name="write_startDate" autocomplete=off>&emsp;
				<label for="endDate">????????????&nbsp;:&nbsp;</label><input class="datepicker" id="endDate" name="write_endDate" autocomplete=off>&emsp; 
			
				<button type="button" id="settingDate1" value="yesterday">??????</button>
				<button type="button" id="settingDate2" value="today">??????</button>
				<button type="button" id="settingDate3" value="month">1??????</button>
				<button type="button" id="settingDate4" value="reset">????????????</button>
				</div></div>
			</div>
			<div class="memberList-row">
				<div class="memberList-row-col4"><div>??????</div></div>
				<div class="memberList-row-col2">
					<div>
						<select name="del_yn">
							<option value="">?????? ??????</option>
							<option value="N">????????????</option>
							<option value="Y">????????????</option>
						</select>
					</div>
				</div>
				<div class="memberList-row-col4"><div>?????? ?????????</div></div>
				<div class="memberList-row-col2"><div><input type="search" name="u_id"></div></div>
			</div>
			<div class="memberList-row2"><div><input type="submit" value="??????"></div></div>
		</div>
	</form>

	<div align="right">
		<div>??????????????????</div>
	</div>

	
	<section>
		<table class="styled-table">
			<colgroup>
				<col style="width:5%">
				<col style="width:12%">
				<col style="width:8%">
				<col style="width:14%">
				<col style="width:18%">
				<col style="width:10%">
				<col style="width:15%">
				<col style="width:15%">
				<col style="width:8%">
			</colgroup>
  			<thead>
  				<tr>
     				<td >NO</td>
     				<td >?????????</td>  
     				<td >??????</td>            
     				<td >?????????</td>
     				<td >?????????</td>
     				<td >????????????</td>
     				<td >????????????</td>
     				<td >??????</td>
     				<td >??????</td>
  				</tr>
  			</thead>
			<c:choose>
  				<c:when test="${empty membersList}" >
  					<tbody>
    					<tr height="10">
      						<td colspan="9">
        						<p align="center">
           							<b><span style="font-size:9pt;">????????? ?????? ????????????.</span></b>
        						</p>
      						</td>  
    					</tr>
    				</tbody>
  				</c:when>
				<c:when test="${!empty membersList}" >
    				<c:forEach  var="member" items="${membersList }" varStatus="membersNum" >	
     						<tr style="cursor: pointer;" onclick="location.href='${contextPath}/admin/memberDetail.do?u_id=${member.u_id}'" >	
								<td>${membersNum.count}</td>
								<td>${member.u_id }</td>
								<td>${member.u_name }</td>
								<td><fmt:formatDate value="${member.joinDate}" pattern="yyyy???MM???dd???" /></td>
								<td>${member.u_email1 }${member.u_email2 }</td>   
								<td>${member.u_grade}</td>   
								<td>${member.u_phone }</td>   
								<td>${member.roadAddress }</td>   
								<td>${member.del_yn }</td> 	  
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
					<a href="${contextPath }/admin/memberList.do${pageMaker.makeQueryPage(pageMaker.startPage-1)}">?????????</a>
				</div>
			</c:if>
			<c:forEach var="pageNum" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				<div style="width: 30px; height: 30px; margin: 15px 3px 15px 3px; border: 1px solid #eeeeee; border-radius:5px; text-align: center; line-height: 30px;">
					<a style="text-decoration: none; color: #666666;" href="${contextPath }/admin/memberList.do${pageMaker.makequeryPage(pageNum)}">${pageNum }</a>
				</div>
			</c:forEach>
			<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
				<div>
					<a href="${contextPath }/admin/memberList.do${pageMaker.makeQueryPage(pageMaker.endPage+1)}">??????</a>
				</div>
			</c:if>
		</div>
	</div>
</body>
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
</html>