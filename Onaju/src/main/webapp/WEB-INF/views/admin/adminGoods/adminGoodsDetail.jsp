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
	height: 50px;
	display:flex; 
	align-items: center;
	border: 1px solid #ffffff; 
	background-color: #000033;
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
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<section class="memDetail_con">
		<div class="mem-item1"><div><h3>????????? ?????? ??????</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ?????????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.h_id }</div></div>
				<div class="mem-item2-chil-1"><div>????????????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.h_name }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.h_phone }</div></div>
				<div class="mem-item2-chil-1"><div>????????? ?????????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.h_email1 }${roomVO.h_email2 }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.deputy_name }</div></div>
				<div class="mem-item2-chil-1"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.deputy_birth }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-5"><div>${roomVO.deputy_phone }</div></div>
				<div class="mem-item2-chil-4"><div>??????????????? ??????</div></div>
				<div class="mem-item2-chil-5"><div>${roomVO.deputy_department }</div></div>
			</div>		
		</div>
		<div class="mem-item1"><div><h3>????????? ??????</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.hostInfo_name }</div></div>
				<div class="mem-item2-chil-1"><div>????????? ??????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.h_code }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-5"><div>${roomVO.h_sellerNum }</div></div>
				<div class="mem-item2-chil-1"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-5"><div>${roomVO.h_accountNum }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-6"><div>????????? ??????</div></div>
				<div>
					<div class="mem-item2-chil-3"><div>${roomVO.zipcode }&emsp;${roomVO.roadAddress }&emsp;${roomVO.restAddress }</div></div>
				</div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>????????? ?????? ??????</div></div>
				<div class="mem-item2-chil-5"><div>${roomVO.host_type }</div></div>
				<div class="mem-item2-chil-4"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-5"><div>${roomVO.h_accountNum }</div></div>
			</div>
		</div>
		
		
		<div class="mem-item1"><div><h3>????????? ??? ?????? ??????</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ??? ??????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.room_number }</div></div>
				<div class="mem-item2-chil-1"><div>????????? ??? ??????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.room_type }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ??? ?????????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.able_checkIn }</div></div>
				<div class="mem-item2-chil-1"><div>????????? ??? ????????????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.able_checkOut }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ??? ?????? ??????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.title }</div></div>
				<div class="mem-item2-chil-1"><div>????????? ??? ?????????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.content }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ??? ??????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.room_fee }???</div></div>
				<div class="mem-item2-chil-1"><div>?????? ?????? ??????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.max_number }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ??? ????????????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.creDate }</div></div>
				<div class="mem-item2-chil-1"><div>????????? ??? ??????</div></div>
				<div class="mem-item2-chil-2"><div>${roomVO.del_yn }</div></div>
			</div>
			<div class="mem-item1">
				<div><h3>??? ????????? ??????</h3></div>
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
							<td>?????? ??????</td>
							<td>?????? ??????</td>
							<td>????????? ??????</td>
							<td>?????? ??????</td>
							<td>??????</td>
							<td>????????????</td>
							<td>??????</td>
							<td>??????</td>
							<td>?????????</td>
							<td>????????????</td>
						</tr>
					</thead>
					<tr>
						<td>${roomVO.bed_type }</td>
						<td>${roomVO.bed_count }</td>
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
							<td>?????????</td>
							<td>????????????</td>
							<td>??????</td>
							<td>????????????</td>
							<td>???????????????</td>
							<td>?????????</td>
							<td>?????????</td>
							<td>?????????</td>
							<td>??????</td>
							<td>??????</td>
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
		<div class="mem-item1"><div><h3>????????? ?????? ??????</h3></div></div>
		<div class="mem-item2">
			
		</div>
		<div class="mem-item5">
			<div><a class="a1" href="${contextPath }/admin/goodsModify.do?room_code=${roomVO.room_code}">????????????</a></div>
			<div><a class="a2" href="${contextPath }/admin/goodsList.do?">????????????</a></div>
		</div>	
	</section>
</body>
</html>