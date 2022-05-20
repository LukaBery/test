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
		<div class="mem-item1"><div><h3>사업주 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>아이디</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_id }</div></div>
				<div class="mem-item2-chil-1"><div>원정생성일</div></div>
				<div class="mem-item2-chil-2"><div><fmt:formatDate value="${hostVO.joinDate }" pattern="yyyy년 MM월 dd일"/></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대표자명</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_name }</div></div>
				<div class="mem-item2-chil-1"><div>대표자생년월일</div></div>
				<div class="mem-item2-chil-2"><div>${h_birth }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대표자 전화번호</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_phone }</div></div>
				<div class="mem-item2-chil-1"><div>대표자 이메일</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_email1 }${hostVO.h_email2 }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>거주지 주소</div></div>
				<div class="mem-item2-chil-3"><div>${hostVO.zipcode }</div><div>${hostVO.roadAddress }${hostVO.numberAddress }${hostVO.restAddress }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업주 상태</div></div>
				<c:choose>
					<c:when test="${hostVO.del_yn == 'n' || hostVO.del_yn == 'n' }">
						<div class="mem-item2-chil-2"><div>탈퇴</div></div>
					</c:when>
					<c:when test="${hostVO.del_yn == 'y' || hostVO.del_yn == 'Y' }">
						<div class="mem-item2-chil-2"><div>가입완료</div></div>
					</c:when>
					<c:otherwise>
						<div class="mem-item2-chil-2"><div>미입력</div></div>
					</c:otherwise>
				</c:choose>
				<div class="mem-item2-chil-1"><div>사업주 성별</div></div>
				<c:choose>
					<c:when test="${hostVO.h_gender == 'm' || hostVO.h_gender == 'M' }">
						<div class="mem-item2-chil-2"><div>남자</div></div>
					</c:when>
					<c:when test="${hostVO.h_gender == 'w' || hostVO.h_gender == 'W' }">
						<div class="mem-item2-chil-2"><div>여자</div></div>
					</c:when>
					<c:otherwise>
						<div class="mem-item2-chil-2"><div>미입력</div></div>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>이벤트 수신 여부</div></div>
				<div class="mem-item2-chil-5"><div>${hostVO.h_service_01 }${hostVO.h_service_01 }</div></div>
				<div class="mem-item2-chil-4"><div>승인 완료일</div></div>
				<div class="mem-item2-chil-5"><div><fmt:formatDate value="${hostVO.joinDate }" pattern="yyyy년 MM월 dd일"/></div></div>
			</div>		
		</div>
		
		
		<div class="mem-item1"><div><h3>대리인 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대리인명</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.deputy_name }</div></div>
				<div class="mem-item2-chil-1"><div>대리인 생년월일</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.deputy_birth }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>대리인 전화번호</div></div>
				<div class="mem-item2-chil-5"><div><fmt:formatDate value="${hostVO.joinDate }" type="both" dateStyle="long" /></div></div>
				<div class="mem-item2-chil-4"><div>대표자와의 관계</div></div>
				<div class="mem-item2-chil-5"><div>${hostVO.deputy_department }</div></div>
			</div>
		</div>
		
		
		<div class="mem-item1"><div><h3>사업장 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점명</div></div>
				<div class="mem-item2-chil-2"><div>${hostInfoVO.hostInfo_name }</div></div>
				<div class="mem-item2-chil-1"><div>원정생성일</div></div>
				<div class="mem-item2-chil-2"><div><fmt:formatDate value="${hostVO.joinDate }" pattern="yyyy년 MM월 dd일"/></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업자등록번호</div></div>
				<div class="mem-item2-chil-2"><div>${hostInfoVO.h_sellerNum }</div></div>
				<div class="mem-item2-chil-1"><div>사업자계좌번호</div></div>
				<div class="mem-item2-chil-2"><div>${hostInfoVO.h_accountNum }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점 영업 타입</div></div>
				<div class="mem-item2-chil-2"><div>${hostInfoVO.host_type }</div></div>
				<div class="mem-item2-chil-1"><div>가맹점 전화번호</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_phone }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점 주소</div></div>
				<div class="mem-item2-chil-3"><div>${hostInfoVO.zipcode }</div><div>${hostInfoVO.roadAddress }${hostInfoVO.numberAddress }${hostInfoVO.restAddress }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>객실 개수</div></div>
				<div class="mem-item2-chil-5"><div>${hostInfoVO.room_count }</div></div>
				<div class="mem-item2-chil-4"><div>승인 여부</div></div>
				<div class="mem-item2-chil-5"><div>${hostInfoVO.del_yn }</div></div>
			</div>		
		</div>
		<div class="mem-item5">
			<div><a class="a1" href="${contextPath }/host.hostModify.do?h_id=${hostVO.h_id}">수정하기</a></div>
			<div><a class="a2" href="${contextPath }/host.hostList.do?">돌아가기</a></div>
		</div>	
	</section>
</body>
</html>