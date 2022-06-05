
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">

<c:if test='${ not empty message }'>
	<script>
		window.onload = function() {
			result();
		}

		function result() {
			alert("${message}");			
		}
	</script>
</c:if>
<script type="text/javascript">
function fn_delete_member() {

	document.frm_del_member.submit(); 
}	
</script>

<style>
.hb_rec_order_1 {
	display: inline-block;
	width: 450px;
	height: 350px;
	border-radius: 20px;
	border: 1px solid #CCCCCC;
	padding: 0px 20px 0px 20px;
	margin: 5px 10px 5px 10px;
}

.hb_section_total {
	width: 1100px;
	height: 100%
}

.hb_section_order_title {
	padding: 70px 4px 50px 20px;
	display: inline-block;
	width: 1100px;
	height: 210px;
}

.order_divider {
	margin-bottom: 15px;
	display: block;
	width: 100%;
	height: 0px;
	border-top: 0.5px solid #CCCCCC;
	display: block;
}

#h1_order_title {
	margin: 10px 0px 10px 0px;
	color: rgb(252, 78, 130);
	opacity: 90%;
	font-weight: 550;
	text-align: center;
	font-size: 25px;
}

.inputWrap_order {
	margin-top: 10px;
	position: relative;
	display: block;
	width: 100%;
	height: 50px;
	border: 1px solid #eee;
	border-radius: 20px;
	background: #FBFCFC;
}

.inputWrap_order input {
	display: block;
	padding: 0 20px;
	width: 100%;
	height: 100%;
	background: #FBFCFC;
	font-size: 16px;
	color: #000;
	border: none;
	border-radius: 20px;
	outline: none;
}

.hb_order_a {
	display: block;
	margin-top: 10px;
	position: relative;
	width: 100%;
	height: 30px;
}

.hb_order_submit {
	font-weight: 550;
	font-size: 16px;
	line-height: 40px;
	border: 1px solid rgb(252, 96, 143);
	width: 100%;
	height: 40px;
	vertical-align: middle;
	margin: 0px 0px 10px 0px;
}
</style>
</head>
<body>
	<section class="hb_section_total">

		<section class="hb_section_order_title">
			<a href="${contextPath}/main/main.do"> <img
				src="${contextPath}/resources/image/onajulogo.png" width="150px"
				height="100px"></a>
		</section>

	<form name="frm_del_member" action="${contextPath}/mypage/deleteMember.do" method="post" >

			<div class="hb_rec_order_1" >
				<p id="h1_order_title">회원 탈퇴</p>
				<div class="order_divider"></div>

	<span class="inputWrap_order"> <input type="text" name="u_id"
					id="u_id" value="${memberInfo.u_id }" tabindex="1" placeholder="아이디">
				</span> <span class="inputWrap_order"> <input type="password"
					 id="u_pw" tabindex="1" placeholder="비밀번호"name="u_pw" >
					
				</span> 
		
				<span class="hb_order_a"> 정말로 회원 탈퇴 하시겠습니까?

				</span> 
				<a class="hb_order_submit"  style="background-color: rgb(252, 96, 143); color: white;" href="${contextPath}/main/main.do">돌아가기</a>
				 <a class="hb_order_submit" style="background-color:white; color:rgb(252, 96, 143);"  href="javascript:fn_delete_member();">회원 탈퇴</a>
				 	

			</div>
			</form>
		</section>

</body>

</html>
