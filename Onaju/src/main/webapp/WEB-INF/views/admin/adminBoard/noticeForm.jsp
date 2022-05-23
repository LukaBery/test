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
<title>게시판 (공지사항 등록)</title>
<style type="text/css">
.notice-row{
	display: flex;
}
.notice-row-2{
	width: 1140px; 
	height: 80px; 
	display: flex; 
	align-items: center; 
	justify-content: center;
}
.notice-row-col1{
	width: 200px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	background-color: #EEEEEE; 
	display:flex; 
	align-items: center;
}
.notice-row-col2{
	width: 200px; 
	height: 450px; 
	border: 1px solid #E6E6E6; 
	background-color: #EEEEEE; 
	display:flex; 
	align-items: center;
}
.notice-row-col3{
	width: 940px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.notice-row-col4{
	width: 370px; 
	height: 50px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.notice-row-col5{
	width: 940px; 
	height: 450px; 
	border: 1px solid #E6E6E6; 
	display:flex; 
	align-items: center;
}
.notice-row-col1 div{
	margin-left: 20px;
	font-weight: bold;
	color: #4D4D4D;
}
.notice-row-col2 div{
	margin-left: 20px;
	font-weight: bold;
	color: #4D4D4D;
}
.notice-row-col3 div{
	margin-left: 20px;
}
.notice-row-col4 div{
	margin-left: 20px;
}
.notice-row-col5 div{
	margin-left: 20px;
}
.notice-row-col5 div textarea{
	width:900px; 
	height:400px; 
	border: 1px solid #cccccc;
}
.notice-row-2 div{
	width: 150px; 
	height: 50px; 
	margin: 0px 5px 0px 5px;
}
.notice-row-2 div input{
	width: 150px; 
	height: 50px; 
	border-radius: 5px; 
	border: none; 
	background-color: #000033; 
	color: white;
}
.notice-row-2 div a{
	display:block; 
	width:150px; 
	line-height:50px; 
	text-align:center; 
	color: #ffffff;
	background-color: #ff3333;
	border-radius: 5px; 
	border: 1px solid #E6E6E6; 
	text-decoration: none;	
}
</style>
</head>
<body>
	<div>
		<form name="noticeForm" method="post" action="${contextPath }/board/addNoticeBoard.do" enctype="multipart/form-data">
			<div class="notice-con">
				<div class="notice-row">
					<div class="notice-row-col1"><div>제목</div></div>
					<div class="notice-row-col3"><div><input type="text" name="title" maxlength="100" style="width: 900px;"></div></div>
				</div>
				<div class="notice-row">
					<div class="notice-row-col1"><div>게시여부</div></div>
					<div class="notice-row-col4"><div><input type="checkbox" value="one">게시&emsp;&emsp;&emsp;<input type="checkbox" value="two">미게시</div></div>
					<div class="notice-row-col1"><div>유형</div></div>
					<div class="notice-row-col4">
						<div style="margin-left: 20px;">
							<select name="job">
    							<option value="">유형 선택</option>
    							<option value="양식">양식</option>
    							<option value="안내">안내</option>
    							<option value="공고">공고</option>
							</select>
						</div>
					</div>
				</div>
				<div class="notice-row">
					<div class="notice-row-col1"><div>공지 상단 노출</div></div>
					<div class="notice-row-col4"><div><input type="checkbox" value="three">게시&emsp;&emsp;&emsp;<input type="checkbox" value="four">미게시</div></div>
					<div class="notice-row-col1"><div>게시 채널</div></div>
					<div class="notice-row-col4"><div><input type="checkbox" value="five">전체&emsp;&emsp;&emsp;<input type="checkbox" value="six">사용자&emsp;&emsp;&emsp;<input type="checkbox" value="seven">사업주</div></div>
				</div>
				<div class="notice-row">
					<div class="notice-row-col1"><div>게시 기간</div></div>
					<div class="notice-row-col3"><div><input type="date">&emsp;~&emsp;<input type="date"></div></div>
				</div>
				<div class="notice-row">
					<div class="notice-row-col1"><div>이미지 등록</div></div>
					<div class="notice-row-col3"><div><input type="file"></div></div>
				</div>
				<div class="notice-row">
					<div class="notice-row-col1"><div>첨부 파일</div></div>
					<div class="notice-row-col3"><div><input type="file"></div></div>
				</div>
				<div class="notice-row">
					<div class="notice-row-col2"><div>내용</div></div>
					<div class="notice-row-col5"><div><textarea name="content" rows="10" cols="65" maxlength="4000"></textarea></div></div>
				</div>
				<div>
					<div class="notice-row-2">
						<div><input type="submit" value="등록하기"></div>
						<div><a href="${contextPath }/Board.noticeList.do">취소</a></div>
					</div>
				</div>
			</div>
		</form>
	</div>

</body>
</html>