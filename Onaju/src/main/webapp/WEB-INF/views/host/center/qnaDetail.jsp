<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 문의내역상세</title>
<style>
@charset "utf-8";

table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.host_notice {
	width : 800px;
	padding: 0 auto;
	margin: 30px 75px 30px 75px;
}

.page-title {
	margin-bottom: 60px;
}

.host-title h3 {
	font-size: 30px;
	color: #7f9b75;
	font-weight: 570;
	text-align: center;
}

#noticeBoard-search .noticeSearch-window {
	padding: 15px 0;
	background-color: #f9f7f9;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 80%;
	max-width: 564px;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap input {
	height: 28px;
	width: 100%;
	font-size: 14px;
	padding: 7px 14px;
	border: 1px solid #cbdea6;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap input:focus {
	border-color: #333;
	outline: 0;
	border-width: 1px;
}

#noticeBoard-search .noticeSearch-window .noticeSearch-wrap .noticeBtn {
	position: absolute;
	right: -30px;
	top: 0;
	bottom: 0;
	width: 108px;
	padding: 0;
	font-size: 16px;
}

.board-table {
	color:#403e3f;
	font-size: 14px;
	width: 100%;
	border-top: 1px solid #cbdea6;;
	border-bottom: 1px solid #cbdea6;;
	
}

.board-table a {
	color: #403e3f;
	display: inline-block;
	line-height: 1.4;
	word-break: break-all;
	vertical-align: middle;
}

.board-table a:hover {
	text-decoration: underline;
}

.board-table th {
	text-align: center;

}

.td-date-writer{
	text-align: center;
}

.board-table .th-num {
	
	width: 100px;
	text-align: center;
}

.board-table .th-date {
	width: 200px;
}

.board-table th, .board-table td {	
	padding: 10px 0;
	border-top: 1px solid #cbdea6;
}

.th-content{
	min-height: 250px;
}

.th-image{
	min-height: 80px;
}

.noticeBtn2 {
	width: 108px;
	padding: 0;
	font-weight: 400;
}
.noticeBtn2 {
	display: inline-block;
	padding: 5px 30px;
	margin:30px 10px 30px 10px;
	font-size: 16px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark2 {
	background: #7f9b75;
	color: #fff;
}

.btn-dark2:hover, .btn-dark2:focus {
	background: #cbdea6;
	border-color: #cbdea6;
	color: #fff;
}

.noticeBtn2Box {
	width:750px;
	margin-left: 380px;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.host_contai {
	width: 750px;
	margin: 0 auto;
	margin: 30px 0px 40px 0px; 
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}
</style>
</head>

<body>
	
<!-- 바디 시작 -->
				<section class="host_notice">
					<div class="host-title">
						<div class="host_contai">
							<h3>문의 내역 상세</h3>
						</div>
					</div>
					<!-- board list area -->
					<div id="host_notice-list">
						<div class="host_contai">
							<table class="board-table">
								<colgroup>
					            	<col width="25%"/>
									<col width="25%"/>
									<col width="25%"/>
									<col width="25%"/>
								</colgroup>
								<thead>
									<tr>
										<th class="th-date">작성자</th>
										<td class="td-date-writer">오나킹</td>
										<th scope="col" class="th-writer">작성일</th>
										<td class="td-date-writer">2022.04.15</td>
									</tr>
									<tr>
										<th class="th-title">호스트명</th>
										<td class="notice_title" colspan="3">우리집</td>
									</tr>
									<tr>
										<th class="th-title">인증마크 종류</th>
										<td class="notice_title" colspan="3"><select
											class="markSelect">
												<option class="markOption" value="selected">선택</option>
												<option class="markOption" value="#">클릭존</option>
												<option class="markOption" value="#">여성안심존</option>
												<option class="markOption" value="#">우수숙박업소</option>
										</select></td>
									</tr>
									<tr>
										<th class="th-image">첨부파일</th>
										<td class="notice_image" colspan="3"><input type="file"
											class="file_input" id="#" name=""> <input type="file"
											class="file_input" id="#" name=""> <input type="file"
											class="file_input" id="#" name=""> <input type="file"
											class="file_input" id="#" name=""></td>
									</tr>
								</thead>
			
							</table>
						</div>
					</div>
					<div class="noticeBtn2Box">
						<button type="submit" class="noticeBtn2 btn-dark2" onClick="${contextPath}/host/center/qnaList.do">목록</button>
						<button type="submit" class="noticeBtn2 btn-dark2" onClick="${contextPath}/host/center/qnaForm.do">수정</button>
						<button type="submit" class="noticeBtn2 btn-dark2" onClick="${contextPath}/host/qnaDelete.do">삭제</button>
					</div>		
				</section>  <!-- 바디 섹션 --> 
		
</body>
</html>