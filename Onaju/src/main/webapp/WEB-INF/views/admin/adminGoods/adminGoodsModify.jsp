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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">

.mem-item1{
	width: 1140px; 
	height: 50px; 
	display:flex; 
	align-items: center;
	border-bottom: 1px solid #000033;
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
	border-left: none;
	border-top: none;
}
.mem-item2-chil-3{
	width: 940px;
	height: 50px;
	display:flex; 
	align-items: center;
	border-bottom: 1px solid #E6E6E6; 
	border-right: 1px solid #E6E6E6;
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
	border-bottom: 1px solid #E6E6E6; 	
	border-right: 1px solid #E6E6E6; 	
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

.mem-item2-chil-1 div{
	margin-left: 20px;
	font-weight: bold;
	color: #ffffff;
	font-size: 14px;
}
.mem-item2-chil-2 div{
	margin-left: 20px;
}
.mem-item2-chil-2 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	vertical-align: middle;
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
.mem-item2-chil-5 div input{
	width: 330px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	vertical-align: middle;
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
.mem-item2-chil-8 div input{
	width: 700px;
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
.styled-table{
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0 0.15); 
	width: 100%;
	table-layout: fixed;
}
.styled-table thead tr{
	background-color: #eeeeee;
	color: #666666;
	text-align: left;
	border: 1px solid #ffffff;
}
.styled-table thead tr td{
	border: 1px solid #ffffff; 
	font-size: 14px;
}
.styled-table th, .styled-table td {
	padding: 12px 15px;
}
.styled-table tbody tr{
	border-bottom: 1px solid #dddddd;
	font-size: 13px;
}
.styled-table tbody td:hover{
	background-color: #99CCFF;
}
.styled-table tbody td:nth-of-type(even){
	/* background-color: #f3f3f3; */
}
.styled-table tbody td:nth-of-type(even):hover{
	background-color: #99CCFF;
}
.styled-table tbody td:nth-of-type{
	border-bottom: 2px solid #009879;
}
.styled-table tbody td.active-row{
	font-weight: bold;
	color: #009879;
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
.address-text{
	width: 100px;
	height: 50px;
	line-height: 50px;
}
#email1{
	width: 164px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	text-align: center;
}
#email2{
	width: 164px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	text-align: center;
}
</style>
<script type="text/javascript">

// select 선택 값 불러오기
$(document).ready(function(){
	$("#h_email2 option").each(function(){
		if($(this).val()=="${roomVO.h_email2}"){
	    	$(this).attr("selected","selected"); // attr적용안될경우 prop
	    }	    
	});
});

</script>
</head>
<body>
	<section class="memDetail_con">
		<div class="mem-item1"><div><h3>사업주 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대표자 아이디</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="h_id" value="${roomVO.h_id }" disabled /></div></div>
				<div class="mem-item2-chil-1"><div>대표자명</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="h_name" value="${roomVO.h_name }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대표자 전화번호</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="h_phone" value="${roomVO.h_phone }" /></div></div>
				<div class="mem-item2-chil-1"><div>대표자 이메일</div></div>
				<div class="mem-item2-chil-2">
					<div>
						<input type="text" name="h_email1" id="email1" value="${roomVO.h_email1 }" />
						<select name="h_email2" id="h_email2">
							<option value="">이메일 선택</option>
							<option value="@naver.com">네이버</option>
							<option value="@daum.net">다음</option>
							<option value="@gmail.com">구글</option>
							<option value="@test.com">테스트</option>
						</select>
					</div>
				</div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>대리인명</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="deputy_name" value="${roomVO.deputy_name }" /></div></div>
				<div class="mem-item2-chil-1"><div>대리인 생년월일</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="deputy_birth" value="${roomVO.deputy_birth }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>대리인 전화번호</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="deputy_phone" value="${roomVO.deputy_phone }" /></div></div>
				<div class="mem-item2-chil-4"><div>대표자와의 관계</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="deputy_department" value="${roomVO.deputy_department }" /></div></div>
			</div>		
		</div>
		<div class="mem-item1"><div><h3>사업장 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점명</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="hostInfo_name" value="${roomVO.hostInfo_name }" /></div></div>
				<div class="mem-item2-chil-1"><div>가맹점 번호</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="h_code" value="${roomVO.h_code }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>사업자 등록번호</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="h_sellerNum" value="${roomVO.h_sellerNum }" /></div></div>
				<div class="mem-item2-chil-1"><div>가맹점 계좌번호</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="h_accountNum" value="${roomVO.h_accountNum }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-6"><div>주소</div></div>
				<div class="mem-item2-chil-7">
					<div class="mem-item2-chil-3">
						<div>
							<input name="zipcode" id="zipcode" type="text" id="zipcode" name="zipcode" value="${memberVO.zipcode }" disabled />
							<input type="button" class="zipcode_search" value="우편번호검색" onclick="execDaumPostcode()">
						</div>
					</div>
					<div class="mem-item2-chil-8"><div class="address-text">도로명 주소 :</div>
						<div><input type="text" id="roadAddress" name="roadAddress" value="${memberVO.roadAddress }" disabled /></div>
					</div>
					<div class="mem-item2-chil-8"><div class="address-text">지번 주소 :</div>
						<div><input type="text" id="numberAddress" name="numberAddress" value="${memberVO.numberAddress }" disabled /></div>
					</div>
					<div class="mem-item2-chil-8"><div class="address-text">나머지 주소 :</div>
						<div><input type="text" id="restAddress" name="restAddress" size="20" value="${memberVO.restAddress }" /></div>
					</div>					
				</div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>가맹점 업종 타입</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="host_type" value="${roomVO.host_type }" /></div></div>
				<div class="mem-item2-chil-4"><div>가맹점 계좌번호</div></div>
				<div class="mem-item2-chil-5"><div><input type="text" name="h_accountNum" value="${roomVO.h_accountNum }" /></div></div>
			</div>
		</div>
		
		
		<div class="mem-item1"><div><h3>가맹점 룸 상세 정보</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점 룸 호실</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="room_number" value="${roomVO.room_number }" /></div></div>
				<div class="mem-item2-chil-1"><div>가맹점 룸 타입</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="room_type" value="${roomVO.room_type }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점 룸 체크인</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="able_checkIn" value="${roomVO.able_checkIn }" /></div></div>
				<div class="mem-item2-chil-1"><div>가맹점 룸 체크아웃</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="able_checkOut" value="${roomVO.able_checkOut }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점 룸 소개 제목</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="title" value="${roomVO.title }" /></div></div>
				<div class="mem-item2-chil-1"><div>가맹점 룸 소개글</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="content" value="${roomVO.content }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점 룸 가격</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="room_fee" value="${roomVO.room_fee }" />원</div></div>
				<div class="mem-item2-chil-1"><div>최대 수용 인원</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="max_number" value="${roomVO.max_number }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>가맹점 룸 등록일자</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="creDate" value="${roomVO.creDate }" /></div></div>
				<div class="mem-item2-chil-1"><div>가맹점 룸 상태</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="del_yn" value="${roomVO.del_yn }" /></div></div>
			</div>
			<div class="mem-item1">
				<div><h3>룸 디테일 정보</h3></div>
			</div>
			<div>
				<table class="styled-table" style="width: 1140px;">
					<colgroup>
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					</colgroup>
					<thead>
						<tr>
							<td>침대 타입</td>
							<td>침대 개수</td>
							<td>화장실 개수</td>
							<td>파티 여부</td>
							<td>부엌</td>
							<td>와이파이</td>
							<td>주차</td>
							<td>티비</td>
							<td>냉장고</td>
							<td>드라이기</td>
						</tr>
					</thead>
					<tr>
						<td><input style="width: 80px;" type="text" name="bed_type" value="${roomVO.bed_type }" /></td>
						<td>
							<button style="border-radius: 5px; border: 1px solid #666666;" type="button" class="plus-minus-button" data-quantity="minus" data-field="quantity"><i class="fa fa-minus" aria-hidden="true"></i></button>
							<input style="width: 80px;" type="text" name="quantity" value="${roomVO.bed_count }">
							<button type="button" class="plus-minus-button" data-quantity="plus" data-field="quantity"><i class="fa fa-plus" aria-hidden="true"></i></button>
						</td>
						<td>${roomVO.bath_count }</td>
						<td>${roomVO.party_check }</td>
						<td>${roomVO.kitchen }</td>
						<td>${roomVO.wifi }</td>
						<td>${roomVO.parking }</td>
						<td>${roomVO.tv }</td>
						<td>${roomVO.refrigerator }</td>
						<td>${roomVO.hairdryer }</td>
					</tr>
				</table>
				<table class="styled-table" style="width: 1140px;">
					<colgroup>
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					<col style="width:10%">
					</colgroup>
					<thead>
						<tr>
							<td>샤워실</td>
							<td>애완동물</td>
							<td>픽업</td>
							<td>옷드레서</td>
							<td>엘리베이터</td>
							<td>바베큐</td>
							<td>수영장</td>
							<td>에어컨</td>
							<td>히터</td>
							<td>흡연</td>
						</tr>
					</thead>
					<tr>
						<td>${roomVO.washer }</td>
						<td>${roomVO.pet }</td>
						<td>${roomVO.pickup }</td>
						<td>${roomVO.dryer }</td>
						<td>${roomVO.elevator }</td>
						<td>${roomVO.barbecue }</td>
						<td>${roomVO.pool }</td>
						<td>${roomVO.aircon }</td>
						<td>${roomVO.heater }</td>
						<td>${roomVO.smoking }</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="mem-item1"><div><h3>대리인 상세 정보</h3></div></div>
		<div class="mem-item2">
			
		</div>
		<div class="mem-item5">
			<div><a class="a1" href="${contextPath }/host.hostModify.do?h_id=${hostVO.h_id}">수정하기</a></div>
			<div><a class="a2" href="${contextPath }/admin/goodsList.do?">돌아가기</a></div>
		</div>	
	</section>
<script type="text/javascript">
(document).ready(function(){
    // This button will increment the value
    $('[data-quantity="plus"]').click(function(e){
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        fieldName = $(this).attr('data-field');
        // Get its current value
        var currentVal = parseInt($('input[name='+fieldName+']').val());
        // If is not undefined
        if (!isNaN(currentVal)) {
            // Increment
            $('input[name='+fieldName+']').val(currentVal + 1);
        } else {
            // Otherwise put a 0 there
            $('input[name='+fieldName+']').val(0);
        }
    });
    // This button will decrement the value till 0
    $('[data-quantity="minus"]').click(function(e) {
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        fieldName = $(this).attr('data-field');
        // Get its current value
        var currentVal = parseInt($('input[name='+fieldName+']').val());
        // If it isn't undefined or its greater than 0
        if (!isNaN(currentVal) && currentVal > 0) {
            // Decrement one
            $('input[name='+fieldName+']').val(currentVal - 1);
        } else {
            // Otherwise put a 0 there
            $('input[name='+fieldName+']').val(0);
        }
    });
});

</script>
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
//select 값 넘기기
$('#h_email2 option').each(function() {
	if($(this).val() == ${roomVO.h_email2}.val())
		$(this).attr('selected', true);
});
</script>
</body>
</html>