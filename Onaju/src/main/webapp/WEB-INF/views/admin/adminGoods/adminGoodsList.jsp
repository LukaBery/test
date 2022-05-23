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
}
.styled-table thead tr{
	background-color: #000033;
	color: #ffffff;
	text-align: left;	
}
.styled-table thead tr td{
	font-size: 14px;
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
.styled-table tbody tr:nth-of-type(even):hover{
	background-color: #99CCFF;
}
.styled-table tbody tr:nth-of-type(even){
	background-color: #f3f3f3;
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
.mem-item5{
	width: 1140px;
	display: flex;
	justify-content: center;
	margin: 40px 0 40px 0;
}
.mem-item5 div{
	margin: 0px 10px 0px 10px;
}
.a1{
	display:block; 
	width:150px; 
	line-height:50px; 
	text-align:center; 
	border-radius: 5px; 
	border: none; 
	text-decoration: none;
	background: #000033;
	color: #ffffff;	
}
.a2{
	display:block; 
	width:150px; 
	line-height:50px; 
	text-align:center; 
	border-radius: 5px; 
	border: none; 
	text-decoration: none;
	background: #ff3333;
	color: #ffffff;	
}
</style>
</head>
<body>

<div class="container-fluid px-4" style="margin: 15px 0px 15px 0px;">
<article><h3 class="mt-4"><strong>상품 승인 관리</strong></h3></article>
</div>
<article>

<div>
	<form>
		<div class="host-search-1">
			<div class="host-row-col1"><div>가입일자</div></div>
			<div class="host-row-col2"><div>시작날짜 <input type="date"> 종료날짜 <input type="date"> <button>어제</button><button>오늘</button><button>1개월</button><button>사용안함</button></div></div>
		</div>
		<div class="host-search-1">
			<div class="host-row-col1"><div>상태</div></div>
			<div class="host-row-col3"><div><select><option value="">상태</option><option value="가입완료">가입완료</option><option value="회원탈퇴">회원탈퇴</option></select></div></div>
			<div class="host-row-col1"><div>가맹점명</div></div>
			<div class="host-row-col3"><div><input type="text" name="hostInfo_name"></div></div>
		</div>
		<div class="host-search-1">
			<div class="host-row-col1"><div>아이디</div></div>
			<div class="host-row-col3"><div><input type="text" name="h_id"></div></div>
			<div class="host-row-col1"><div>대표자명</div></div>
			<div class="host-row-col3"><div><input type="text" name="h_name"></div></div>
		</div>
		<div class="host-search-1">
			<div class="host-row-col1"><div>지역</div></div>
			<div class="host-row-col4"><div><input type="text" name="roadAddress"></div></div>
			<div class="host-row-col1"><div>사업자등록번호</div></div>
			<div class="host-row-col4"><div><input type="text" name="h_sellerNum"></div></div>
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


<section>
	<table class="styled-table">
		<thead>
  			<tr>
     			<td >NO</td>
     			<td >상태</td>  
     			<td >아이디</td>            
     			<td >대표자명</td>
     			<td >가맹점명</td>
     			<td >사업자등록번호</td>
     			<td >지역</td>
     			<td >해지 유무</td>     					
  			</tr>
  		</thead>
		<c:choose>
  			<c:when test="${empty listAllRoom}" >
    			<tr  height="10">
      				<td colspan="11">
        				<p align="center">
        					<b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        				</p>
      				</td>  
    			</tr>
  			</c:when>
  			<c:when test="${!empty listAllRoom}" >
    			<c:forEach  var="room" items="${listAllRoom }" varStatus="goodsNum" >
     				<tr style="cursor: pointer;" onclick="location.href='${contextPath}/host.hostDetail.do?h_id=${host.h_id}'">
						<td width="5%">${goodsNum.count}</td>
						<td width="8%">${room.room_status }</td>
						<td width="8%">${room.h_id }</td>
						<td width="8%">${room.h_name }</td>
						<td  width="8%">${room.hostInfo_name }</td>   
						<td  width="11%">${room.h_sellerNum }</td>   
						<td  width="8%">${room.roadAddress }</td>   
						<td  width="8%">${room.del_yn }</td>     
					</tr>
    			</c:forEach>
     		</c:when>
    	</c:choose>
	</table>
</section>

<div class="mem-item5">
	<div><a class="a1" href="${contextPath}/board.noticeForm.do">상품등록</a></div>
	<div><input class="a2" type="submit" value="선택삭제"></div>
</div>

</body>
</html>