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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
.mem-item2-chil-6{
	width: 200px;
	height: 200px;
	display:flex; 
	align-items: center;
	border: 1px solid #ffffff; 
	background-color: #000033;
	border-bottom: none;
}
.mem-item2-chil-7{
	width: 940px;
	height: 200px;
	align-items: center;
}
.mem-item2-chil-8{
	width: 940px;
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #E6E6E6; 
	border-bottom: none;
}
.mem-item2-chil-9{
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
.mem-item2-chil-6 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
	font-size: 14px;
}
.mem-item2-chil-8 div{
	margin-left: 20px;
}
.mem-item2-chil-9 div{
	margin-left: 20px;
}
.mem-item2-chil-2 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	text-align: center;
}
.mem-item2-chil-8 div input{
	width: 700px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	text-align: center;
}
.mem-item2-chil-9 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	text-align: center;
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
.address-text{
	width: 100px;
	height: 50px;
	line-height: 50px;
}
#zipcode{
	width: 250px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	text-align: center;
}
.zipcode_search{
	width: 120px;
	height: 35px;
	border: none;
	border-radius: 5px;
	background-color: #ff3333;
	color: #ffffff;
	margin-left: 10px;
	cursor: pointer;
}
.mem-item2-chil-2-1{
	width: 370px;
	height: 50px;
	display:flex; 
	align-items: center;
	justify-content: center;
	border: 1px solid #E6E6E6; 
	border-bottom: none;
}
.mem-item2-chil-2-1 div input{
	width: 92px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	text-align: center;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$("#u_gender option").each(function(){
		if($(this).val()=="${memberVO.u_gender}"){
	    	$(this).attr("selected","selected"); // attr적용안될경우 prop
	    }	    
	});
	$("#h_service_01").each(function(){
		if($(this).val()== "Y" || $(this).val()== "y"){
			$(this).prop("checked","checked"); // attr적용안될경우 prop
		}	    
	});
	$("#h_service_02").each(function(){
		if($(this).val()== "Y" || $(this).val()== "y"){
		    $(this).attr("checked","checked"); // attr적용안될경우 prop
		}	    
	});
});
</script>
</head>
<body>
	<section class="memDetail_con">
	<form name="hostModifyForm" id="hostModifyForm" onsubmit="fn_updateHost()">
		<div class="mem-item1"><div><h3>사업주 상세 정보 수정</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>아이디</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="h_id" size="20" value="${hostVO.h_id }" disabled /></div></div>
				<div class="mem-item2-chil-1"><div>원정생성일</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.joinDate }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대표자명</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="h_name" value="${hostVO.h_name }" /></div></div>
				<div class="mem-item2-chil-1"><div>대표자생년월일</div></div>
				<div class="mem-item2-chil-2-1">
					<div>
						<input name="h_birth_y" id="h_birth_y" type="text" size="20" maxlength="4" value="${hostVO.h_birth_y }" />년
						<input name="h_birth_m" id="h_birth_m" type="text" size="20" maxlength="2" value="${hostVO.h_birth_m }" />월
						<input name="h_birth_d" id="h_birth_d" type="text" size="20" maxlength="2" value="${hostVO.h_birth_d }" />일
					</div>
				</div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대표자 전화번호</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="h_phone" value="${hostVO.h_phone }" /></div></div>
				<div class="mem-item2-chil-1"><div>대표자 이메일</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="h_email1" value="${hostVO.h_email1 }" /><input type="text" size="20" name="h_email2" value="${hostVO.h_email2 }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-6"><div>주소</div></div>
				<div class="mem-item2-chil-7">
					<div class="mem-item2-chil-3">
						<div>
							<input type="text" id="zipcode" name="zipcode" value="${hostVO.zipcode }" disabled />
							<input type="button" class="zipcode_search" value="우편번호검색" onclick="execDaumPostcode()">
						</div>
					</div>
					<div class="mem-item2-chil-8"><div class="address-text">도로명 주소 :</div><div><input type="text" id="roadAddress" name="roadAddress" value="${hostVO.roadAddress }" disabled /></div></div>
					<div class="mem-item2-chil-8"><div class="address-text">지번 주소 :</div><div><input type="text" id="numberAddress" name="numberAddress" value="${hostVO.numberAddress }" disabled /></div></div>
					<div class="mem-item2-chil-8"><div class="address-text">나머지 주소 :</div><div><input type="text" id="restAddress" name="restAddress" size="20" value="${hostVO.restAddress }" /></div></div>					
				</div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업주 상태</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="del_yn" value="${hostVO.del_yn }" /></div></div>
				<div class="mem-item2-chil-1"><div>사업주 성별</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="h_gender" value="${hostVO.h_gender }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>이벤트 수신 여부</div></div>
				<div class="mem-item2-chil-5">
					<div>										
						이벤트1:<input type="checkbox" id="h_service_01" name="h_service_01" size="20" value="${hostVO.h_service_01 }" />								
						이벤트2:<input type="checkbox" id="h_service_02" name="h_service_02" size="20" value="${hostVO.h_service_02 }" />							
					</div>
				</div>
				<div class="mem-item2-chil-4"><div>승인 완료일</div></div>
				<div class="mem-item2-chil-5"><div>${hostVO.joinDate }</div></div>
			</div>		
		</div>
		<div class="mem-item1"><div><h3>대리인 상세 정보 수정</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대리인명</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="deputy_name" value="${hostVO.deputy_name }" /></div></div>
				<div class="mem-item2-chil-1"><div>대리인 생년월일</div></div>
				<div class="mem-item2-chil-2"><div><input type="date" size="20" name="deputy_birth" value="${hostVO.deputy_birth }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>대리인 전화번호</div></div>
				<div class="mem-item2-chil-9"><div><input type="text" size="20" name="deputy_phone" value="${hostVO.deputy_phone }" /></div></div>
				<div class="mem-item2-chil-4"><div>대리인 소속</div></div>
				<div class="mem-item2-chil-9"><div><input type="text" size="20" name="deputy_department" value="${hostVO.deputy_department }" /></div></div>
			</div>
		</div>
		<div class="mem-item5">
			<div><input type="submit" class="a1" value="수정하기"/></div>
			<div><a class="a2" href="${contextPath }/admin/hostDetail.do?h_id=${hostVO.h_id}">돌아가기</a></div>
		</div>
	</form>	
	</section>
<script type="text/javascript">
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("roadAddress").value = roadAddr;
            document.getElementById("numberAddress").value = data.jibunAddress;
        }
    }).open();
}
</script>
<script type="text/javascript">
function fn_updateHost(){
	$("input[name=roadAddress]").attr("disabled", false);
	$("input[name=numberAddress]").attr("disabled", false);
	$("input[name=zipcode]").attr("disabled", false);
	$("input[name=h_id]").attr("disabled", false);
	
	$.ajax({
		url:"${contextPath}/admin/updateHost.do${pageMaker.makeQueryPage(page)}",
		type:"post",
		data:$('#hostModifyForm').serialize(),
		success:function(data){
			if(data.success == "success"){
				alert(data.success);
			alert("회원정보 수정이 완료되었습니다.");
			location.href="${contextPath}/admin/hostDetail.do${pageMaker.makeQueryPage(page)}&h_id=${hostVO.h_id}";
			}	
		},
		error:function(HttpStatus){
			alert("error :" + HttpStatus);
		}
	})
}

</script>
</body>
</html>