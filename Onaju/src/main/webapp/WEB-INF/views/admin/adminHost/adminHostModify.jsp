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
.mem-item2-chil-2-email{
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
.mem-item2-chil-2-email div{
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
.mem-item2-chil-2-email div input{
	width: 151px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	text-align: center;
}
#h_email2{
	width: 151px;
	height: 35px;
	border: 1px solid #E6E6E6;
	border-radius: 5px;
	text-align: center;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$("#h_gender option").each(function(){
		if($(this).val()=="${hostVO.h_gender}"){
	    	$(this).attr("selected","selected"); // attr?????????????????? prop
	    }	    
	});
	$("#h_email2 option").each(function(){
		if($(this).val()=="${hostVO.h_email2}"){
	    	$(this).attr("selected","selected"); // attr?????????????????? prop
	    }	    
	});
});


</script>
</head>
<body>
	<section class="memDetail_con">
	<form name="adminHostVO" id="adminHostVO" >
		<div class="mem-item1"><div><h3>????????? ?????? ?????? ??????</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>?????????</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" name="h_id" size="20" value="${hostVO.h_id }" disabled /></div></div>
				<div class="mem-item2-chil-1"><div>???????????????</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.joinDate }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????????</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="h_name" value="${hostVO.h_name }" /></div></div>
				<div class="mem-item2-chil-1"><div>?????????????????????</div></div>
				<div class="mem-item2-chil-2-1">
					<div>
						<input name="h_birth_y" id="h_birth_y" type="text" size="20" maxlength="4" value="${hostVO.h_birth_y }" />???
						<input name="h_birth_m" id="h_birth_m" type="text" size="20" maxlength="2" value="${hostVO.h_birth_m }" />???
						<input name="h_birth_d" id="h_birth_d" type="text" size="20" maxlength="2" value="${hostVO.h_birth_d }" />???
					</div>
				</div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="h_phone" value="${hostVO.h_phone }" /></div></div>
				<div class="mem-item2-chil-1"><div>????????? ?????????</div></div>
				<div class="mem-item2-chil-2-email"><div><input type="text" size="20" name="h_email1" value="${hostVO.h_email1 }" />&nbsp;@
				<select name="h_email2" id="h_email2">
					<option value="naver.com">?????????</option>
					<option value="daum.net">??????</option>
					<option value="gmail.com">??????</option>
				</select>
				</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-6"><div>??????</div></div>
				<div class="mem-item2-chil-7">
					<div class="mem-item2-chil-3">
						<div>
							<input type="text" id="zipcode" name="zipcode" value="${hostVO.zipcode }" disabled />
							<input type="button" class="zipcode_search" value="??????????????????" onclick="execDaumPostcode()">
						</div>
					</div>
					<div class="mem-item2-chil-8"><div class="address-text">????????? ?????? :</div><div><input type="text" id="roadAddress" name="roadAddress" value="${hostVO.roadAddress }" disabled /></div></div>
					<div class="mem-item2-chil-8"><div class="address-text">?????? ?????? :</div><div><input type="text" id="numberAddress" name="numberAddress" value="${hostVO.numberAddress }" disabled /></div></div>
					<div class="mem-item2-chil-8"><div class="address-text">????????? ?????? :</div><div><input type="text" id="restAddress" name="restAddress" size="20" value="${hostVO.restAddress }" /></div></div>					
				</div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ??????</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="del_yn" value="${hostVO.del_yn }" /></div></div>
				<div class="mem-item2-chil-1"><div>????????? ??????</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="h_gender" value="${hostVO.h_gender }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>????????? ?????? ??????</div></div>
				<div class="mem-item2-chil-5">
					<div>										
						?????????1:<input type="checkbox" id="h_service_01" name="h_service_01" size="20" value="${hostVO.h_service_01 }" />								
						?????????2:<input type="checkbox" id="h_service_02" name="h_service_02" size="20" value="${hostVO.h_service_02 }" />							
					</div>
				</div>
				<div class="mem-item2-chil-4"><div>?????? ?????????</div></div>
				<div class="mem-item2-chil-5"><div>${hostVO.joinDate }</div></div>
			</div>		
		</div>
		<div class="mem-item1"><div><h3>????????? ?????? ?????? ??????</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????????</div></div>
				<div class="mem-item2-chil-2"><div><input type="text" size="20" name="deputy_name" value="${hostVO.deputy_name }" /></div></div>
				<div class="mem-item2-chil-1"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-2"><div><input type="date" size="20" name="deputy_birth" value="${hostVO.deputy_birth }" /></div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-9"><div><input type="text" size="20" name="deputy_phone" value="${hostVO.deputy_phone }" /></div></div>
				<div class="mem-item2-chil-4"><div>????????? ??????</div></div>
				<div class="mem-item2-chil-9"><div><input type="text" size="20" name="deputy_department" value="${hostVO.deputy_department }" /></div></div>
			</div>
		</div>
		<div class="mem-item5">
			<div><button id="updateHost" type="submit" class="a1" data-oper="modify">????????????</button></div>
			<div><button class="a2" data-oper="detail" value='<c:out value="${hostVO.h_id }" />'>????????????</button></div>
		</div>
	</form>
	<form role="form" action="${contextPath }/admin/hostDetail.do" method="post">
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }" />'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount }" />'>
		<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
		<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }" />'>
		<input type="hidden" name="h_del_yn" value='<c:out value="${cri.h_del_yn }" />'>
		<input type="hidden" name="h_id2" value='<c:out value="${cri.h_id2 }" />'>
		<input type="hidden" name="h_name" value='<c:out value="${cri.h_name }" />'>
		<input type="hidden" name="h_sellerNum" value='<c:out value="${cri.h_sellerNum }" />'>
	</form>
	<form id="operForm" action="${contextPath }/admin/hostDetail.do" method="get">
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }" />'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount }" />'>
		<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />'>
		<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }" />'>
		<input type="hidden" name="h_del_yn" value='<c:out value="${cri.h_del_yn }" />'>
		<input type="hidden" name="h_id2" value='<c:out value="${cri.h_id2 }" />'>
		<input type="hidden" name="h_name" value='<c:out value="${cri.h_name }" />'>
		<input type="hidden" name="h_sellerNum" value='<c:out value="${cri.h_sellerNum }" />'>
	</form>
	</section>
<script type="text/javascript">
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

            // ????????? ????????? ?????? ????????? ?????? ????????? ????????????.
            // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
            var roadAddr = data.roadAddress; // ????????? ?????? ??????
            var extraRoadAddr = ''; // ?????? ?????? ??????

            // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
            // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
            if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // ???????????? ??????, ??????????????? ?????? ????????????.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // ??????????????? ?????? ????????? ?????? ????????? ?????????.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("roadAddress").value = roadAddr;
            document.getElementById("numberAddress").value = data.jibunAddress;
        }
    }).open();
}
</script>
<script type="text/javascript">
/* $(document).ready(function(){
	$("#updateHost").click(function(){
		$("input[name=roadAddress]").attr("disabled", false);
		$("input[name=numberAddress]").attr("disabled", false);
		$("input[name=zipcode]").attr("disabled", false);
		$("input[name=h_id]").attr("disabled", false);
		$.ajax({
			url:"${contextPath}/admin/updateHost.do${pageMaker.makeQueryPage(page)}",
			type:"post",
			data:$('#adminHostVO').serialize(),
			success:function(data){
				if(data.success == "success"){
				alert("???????????? ????????? ?????????????????????.");
				location.href="${contextPath}/admin/hostDetail.do${pageMaker.makeQueryPage(page)}&h_id=${hostVO.h_id}";
				}	
			},
			error:function(HttpStatus){
				alert("???????????? ?????? ?????? :" + HttpStatus);
			}
		})	
	});
}); */

</script>
<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form");
	
	$("#updateHost").on("click", function(e){
		e.preventDefault();
		var operation = $(this).data("oper");
		alert(operation);
		if(operation == 'modify'){
			formObj.attr("action","${contextPath}/admin/hostDetail.do").attr("method","post");
			
			var pageNumTag = $("input[name='pageNum']").clone();
			var amountTag = $("input[name='amount']").clone();
			var join_startDateTag = $("input[name='join_startDat']").clone();
			var join_endDateTag = $("input[name='join_endDate']").clone();
			var h_id2Tag = $("input[name='h_id2']").clone();
			var h_del_ynTag = $("input[name='h_del_yn']").clone();
			var h_nameTag = $("input[name='h_name']").clone();
			var h_sellerNumTag = $("input[name='h_sellerNum']").clone();
			
			formObj.empty();
			
			formObj.append(pageNumTag);
			formObj.append(amountTag);
			formObj.append(join_startDateTag);
			formObj.append(join_endDateTag);
			formObj.append(h_id2Tag);
			formObj.append(h_del_ynTag);
			formObj.append(h_nameTag);
			formObj.append(h_sellerNumTag);
		}
		formObj.submit();
	});
});
</script>
<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
$(".a2").on("click",function(e){
	alert("????????????");
	e.preventDefault();
	operForm.append("<input type='hidden' name='h_id' value='"+$(this).attr("value")+"'>");
	operForm.attr("action", "${contextPath}/admin/hostDetail.do");
	operForm.submit();
	});
});
</script>
</body>
</html>