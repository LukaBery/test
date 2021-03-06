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
	border: 1px solid #666666; 
	text-decoration: none;
	background: #ffffff;
	color: #666666;	
}

#deleteHost{
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
		<div class="mem-item1"><div><h3>????????? ?????? ??????</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>?????????</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_id }</div></div>
				<div class="mem-item2-chil-1"><div>???????????????</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.joinDate }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????????</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_name }</div></div>
				<div class="mem-item2-chil-1"><div>?????????????????????</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_birth_y }???${hostVO.h_birth_m }???${hostVO.h_birth_d }??? </div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_phone }</div></div>
				<div class="mem-item2-chil-1"><div>????????? ?????????</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.h_email1 }${hostVO.h_email2 }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ??????</div></div>
				<div class="mem-item2-chil-3"><div>${hostVO.zipcode }</div><div>${hostVO.roadAddress }${hostVO.numberAddress }${hostVO.restAddress }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????? ??????</div></div>
				<c:choose>
					<c:when test="${hostVO.del_yn == 'n' || hostVO.del_yn == 'n' }">
						<div class="mem-item2-chil-2"><div>??????</div></div>
					</c:when>
					<c:when test="${hostVO.del_yn == 'y' || hostVO.del_yn == 'Y' }">
						<div class="mem-item2-chil-2"><div>????????????</div></div>
					</c:when>
					<c:otherwise>
						<div class="mem-item2-chil-2"><div>?????????</div></div>
					</c:otherwise>
				</c:choose>
				<div class="mem-item2-chil-1"><div>????????? ??????</div></div>
				<c:choose>
					<c:when test="${hostVO.h_gender == 'm' || hostVO.h_gender == 'M' }">
						<div class="mem-item2-chil-2"><div>??????</div></div>
					</c:when>
					<c:when test="${hostVO.h_gender == 'w' || hostVO.h_gender == 'W' }">
						<div class="mem-item2-chil-2"><div>??????</div></div>
					</c:when>
					<c:otherwise>
						<div class="mem-item2-chil-2"><div>?????????</div></div>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>????????? ?????? ??????</div></div>
				<div class="mem-item2-chil-5"><div>${hostVO.h_service_01 }${hostVO.h_service_01 }</div></div>
				<div class="mem-item2-chil-4"><div>?????? ?????????</div></div>
				<div class="mem-item2-chil-5"><div>${hostVO.joinDate }</div></div>
			</div>		
		</div>
		
		
		<div class="mem-item1"><div><h3>????????? ?????? ??????</h3></div></div>
		<div class="mem-item2">
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-1"><div>????????????</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.deputy_name }</div></div>
				<div class="mem-item2-chil-1"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-2"><div>${hostVO.deputy_birth }</div></div>
			</div>
			<div class="mem-item2-chil">
				<div class="mem-item2-chil-4"><div>????????? ????????????</div></div>
				<div class="mem-item2-chil-5"><div>${hostVO.deputy_phone }</div></div>
				<div class="mem-item2-chil-4"><div>??????????????? ??????</div></div>
				<div class="mem-item2-chil-5"><div>${hostVO.deputy_department }</div></div>
			</div>
		</div>
		
		<div class="mem-item5">
			<div><a class="a1" href='<c:out value="${hostVO.h_id }" />'>????????????</a></div>
			<div><button type="submit" id="deleteHost" data-oper="remove">????????????</button></div>
			<input type="hidden" id="h_id" value="${hostVO.h_id }">
			<div><button class="a2" type="submit" id="hostList" data-oper="list">????????????</button></div>
		</div>	
	</section>
	<form id="operForm" action="${contextPath }/admin/hostList.do" method="get">
		
		<input type="hidden" id="pageNum" name="pageNum" value="${cri.pageNum }">
		<input type="hidden" id="amount" name="amount" value="${cri.amount }">
		<input type="hidden" name="join_startDate" value='<c:out value="${cri.join_startDate }" />' >
		<input type="hidden" name="join_endDate" value='<c:out value="${cri.join_endDate }" />'>
		<input type="hidden" name="h_del_yn" value='<c:out value="${cri.h_del_yn }" />'>
		<input type="hidden" name="h_sellerNum" value='<c:out value="${cri.h_sellerNum }" />'>
		<input type="hidden" name="h_id2" value='<c:out value="${cri.h_id2 }" />'>
		<input type="hidden" name="h_name" value='<c:out value="${cri.h_name }" />'>
	</form>
<script type="text/javascript">
$(document).ready(function fn_deleteHost(){
	$("#deleteHost").click(function(){
	var _id = document.getElementById("h_id").value;
	$.ajax({		
		url: '${contextPath}/admin/deleteHost.do',
		data: {"h_id" : _id},
		dataType : 'text',
		type:'get',
		async : false,
		success: function(data){
				alert("?????? ????????? ?????????????????????.");
				location.href="${contextPath}/admin/hostList.do";	
		},
		error:function(data){
			alert("?????? ????????? ???????????? ???????????????.");
		}
	})
	})
})
</script>
<script type="text/javascript">

$(document).ready(function(){
	var operForm = $("#operForm");
	$(".a2").on("click",function(e){
		
		e.preventDefault();
		var operation = $(this).data("oper");
		operForm.attr("action", "${contextPath}/admin/hostList.do").attr("method","get");
		
		var pageNumTag = $("input[name='pageNum']").clone();
		var amountTag = $("input[name='amount']").clone();
		var join_startDateTag = $("input[name='join_startDat']").clone();
		var join_endDateTag = $("input[name='join_endDate']").clone();
		var h_id2Tag = $("input[name='h_id2']").clone();
		var h_del_ynTag = $("input[name='h_del_yn']").clone();
		var h_nameTag = $("input[name='h_name']").clone();
		var h_sellerNumTag = $("input[name='h_sellerNum']").clone();
		
		operForm.empty();
		
		operForm.append(pageNumTag);
		operForm.append(amountTag);
		operForm.append(join_startDateTag);
		operForm.append(join_endDateTag);
		operForm.append(h_del_ynTag);
		operForm.append(h_nameTag);
		operForm.append(h_id2Tag);
		operForm.append(h_sellerNumTag);
		alert("????????????");
		operForm.submit();
	});
});

</script>
<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
	$("#hostList").on("click", function(e){
		operForm.attr("action", "${contextPath}/admin/hostList.do").submit();
	});
});
</script>
<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form");
	
	$("#deleteHost").on("click", function(e){
		e.preventDefault();
		var operation = $(this).data("oper");
		alert(operation);
		if(operation == 'remove'){
			formObj.attr("action","${contextPath}/admin/hostDetail.do").attr("method","get");
			
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
$(".a1").on("click",function(e){
	alert("????????????");
	e.preventDefault();
	operForm.append("<input type='hidden' name='h_id' value='"+$(this).attr("href")+"'>");
	operForm.attr("action", "${contextPath}/admin/hostModify.do");
	operForm.submit();
	});
});
</script>
</body>
</html>