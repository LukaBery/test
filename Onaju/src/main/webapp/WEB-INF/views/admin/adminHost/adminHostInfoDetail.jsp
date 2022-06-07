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

.mem-item1{
	width: 1140px; 
	height: 50px; 
	display:flex; 
	align-items: center;
}
.mem-item2{
	border-radius: 5px;
}
.mem-item1 div {
	margin-left: 30px;
}
.mem-item2-chil{
	display: flex;
}
.mem-item2-chil-1{
	width: 200px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #ffffff; 
	background-color: #000033;
	border-bottom: none;
}
.mem-item2-chil-2{
	width: 370px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #E6E6E6; 
	border-bottom: none;
}
.mem-item2-chil-3{
	width: 940px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #E6E6E6; 
	border-bottom: none;
}
.mem-item2-chil-4{
	width: 200px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #ffffff; 
	background-color: #000033;
}
.mem-item2-chil-5{
	width: 370px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #E6E6E6; 	
}
.mem-item2-chil-1 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
	font-size: 14px;
}
.mem-item2-chil-2 div{
	margin-left: 20px;
}
.mem-item2-chil-3 div{
	margin-left: 20px;
}
.mem-item2-chil-4 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
	font-size: 14px;
}
.mem-item2-chil-5 div{
	margin-left: 20px;
}
.mem-item2-img{
	width: 150px;
	height: 200px;
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
<script type="text/javascript">

</script>
</head>
<body>
	<section class="memDetail_con">
		<div class="mem-item1"><div><h3>사업장 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업장관리번호</div></div>
				<div class="mem-item2-chil-2"><div>${adminHostInfoVO.h_code }</div></div>
				<div class="mem-item2-chil-1"><div>사업장명</div></div>
				<div class="mem-item2-chil-2"><div>${adminHostInfoVO.h_name }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업자등록번호</div></div>
				<div class="mem-item2-chil-2"><div>${adminHostInfoVO.h_sellerNum }</div></div>
				<div class="mem-item2-chil-1"><div>사업자계좌번호</div></div>
				<div class="mem-item2-chil-2"><div>${adminHostInfoVO.h_accountNum } </div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업장 주소</div></div>
				<div class="mem-item2-chil-3"><div>${adminHostInfoVO.zipcode }</div><div>${adminHostInfoVO.roadAddress }${adminHostInfoVO.numberAddress }${adminHostInfoVO.restAddress }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업장 타입</div></div>
				<div class="mem-item2-chil-2"><div>${adminHostInfoVO.host_type }</div></div>
				<div class="mem-item2-chil-1"><div>사업장 룸개수</div></div>
				<div class="mem-item2-chil-2"><div>${adminHostInfoVO.room_count }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>사업장 상태</div></div>
				<div class="mem-item2-chil-5"><div>${adminHostInfoVO.del_yn }</div></div>
				<div class="mem-item2-chil-4"><div>원정생성일</div></div>
				<div class="mem-item2-chil-5"><div>${adminHostInfoVO.creDate }</div></div>
			</div>
		</div>
		<div class="mem-item1"><div><h3>사업주 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>아이디</div></div>
				<div class="mem-item2-chil-2"><div>${adminHostInfoVO.h_id }</div></div>
				<div class="mem-item2-chil-1"><div>대표자명</div></div>
				<div class="mem-item2-chil-2"><div>${adminHostInfoVO.h_name }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>대표자 이메일</div></div>
				<div class="mem-item2-chil-5"><div>${adminHostInfoVO.h_email1 }${adminHostInfoVO.h_email2 }</div></div>
				<div class="mem-item2-chil-4"><div>대표자전화번호</div></div>
				<div class="mem-item2-chil-5"><div>${adminHostInfoVO.h_phone } </div></div>
			</div>	
		</div>
		
		
		<div class="mem-item1"><div><h3>대리인 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대리인명</div></div>
				<div class="mem-item2-chil-2"><div>${adminHostInfoVO.deputy_name }</div></div>
				<div class="mem-item2-chil-1"><div>대리인 생년월일</div></div>
				<div class="mem-item2-chil-2"><div>${adminHostInfoVO.deputy_birth }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>대리인 전화번호</div></div>
				<div class="mem-item2-chil-5"><div>${adminHostInfoVO.deputy_phone }</div></div>
				<div class="mem-item2-chil-4"><div>대표자와의 관계</div></div>
				<div class="mem-item2-chil-5"><div>${adminHostInfoVO.deputy_department }</div></div>
			</div>
		</div>
				
		<div class="mem-item5">
			<div><a class="a1" href="${contextPath }/admin/hostInfoModify.do?h_code=${adminHostInfoVO.h_code}">수정하기</a></div>
			<div><a class="a2" href="${contextPath }/admin/hostInfoList.do?">돌아가기</a></div>
		</div>	
	</section>
</body>
</html>