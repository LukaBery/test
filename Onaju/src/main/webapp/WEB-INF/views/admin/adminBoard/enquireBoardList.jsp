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
<section style="display: inline-block; float: left;">
<div class="container-fluid px-4" style="margin: 15px 0px 15px 0px;">
<article><h3 class="mt-4"><strong>1:1질문 관리</strong></h3></article>
</div>
<article>

<div>
<form>
	
	<%-- 날짜 조건 검색 --%>	
	<div class="noticeBoard-row">
		<div class="noticeBoard-row-col1"><div>일자</div></div>
		<div class="noticeBoard-row-col3"><div>&emsp;시작 날짜&emsp;<input type="date">&emsp; 종료 날짜&emsp;<input type="date">&emsp; <button>어제</button><button>오늘</button><button>1개월</button><button>사용안함</button></div></div>
	</div>
	
	<div class="noticeBoard-row">
		
		<%-- 게시여부 선택박스 --%>
		<div class="noticeBoard-row-col1"><div>게시여부</div></div>
		<div class="noticeBoard-row-col2">
			<div>
				<select>
					<option value="">게시 여부</option>
					<option value="게시">게시</option>
					<option value="미게시">미게시</option>
				</select>
			</div>
		</div>
		
		<%-- 검색 입력 박스  --%>
		<div class="noticeBoard-row-col1"><div>검색</div></div>
		<div class="noticeBoard-row-col2"><div><input type="search"></div></div>
	</div>
	
	<%-- 조회 submit 박스 --%>
	<div class="noticeBoard-row-3">
		<div><input type="submit" value="조회"></div>
	</div>
</form>
	
	<%-- 10, 20개 선택 출력 --%>
	<div align="right">
		<div>드롭다운박스</div>
	</div>
</div>
</article>
<form>
	<table class="styled-table">
	
		<%-- 테이블 헤드 --%>
  		<thead>
  			<tr>
     			<td >체크박스</td>
     			<td >게시물 번호</td>  
     			<td >등록일시</td>            
     			<td >제목</td>
     			<td >유형</td>
     			<td >게시여부</td>
     			<td >상단노출 여부</td>
     			<td >등록자</td>	
  			</tr>
  		</thead>
  		
		<c:choose>
		
			<%-- 반환값이 비어있을때 출력값 --%>
  			<c:when test="${empty reviewsList}" >
    			<tr  height="10">
      				<td colspan="9">
        				<p align="center">
        					<b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
        				</p>
      				</td>  
    			</tr>
  			</c:when>
  			
  			 <%-- 반환값이 존재할때 출력값 --%>
  			<c:when test="${!empty reviewsList}" >
    			<c:forEach  var="review" items="${reviewsList }" varStatus="reviewNum" >
     				<tr>
						<td width="5%">${reviewNum.count}</td>
						<td width="5%">${review.member_id }</td>
						<td width="10%"><fmt:formatDate value="${review.writeDate}" /></td>
						<td width="10%"><fmt:formatDate value="${review.writeDate}" /></td>
						<td  width="5%">${review.member_id }</td>   
						<td  width="5%">${review.member_name }</td>   
						<td  width="10%">${review.member_phoneNumber }</td>   
						<td  width="10%">${review.member_lastJoin }</td>   			  
					</tr>
    			</c:forEach>
     		</c:when>
     		
     		
    	</c:choose>
	</table>
</form>
</section>


<section>

</section>
</body>
</html>