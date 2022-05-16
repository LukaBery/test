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
<title>비밀번호 찾기</title>

<script type="text/javascript">
function fn_pwdfindform2_check() {
		

		var f = document.pwdFind2_form;
		
		str = f.u_pw.value;
		str = str.trim();
		if(!str){
			alert("비밀번호를 입력해주세요.");
			f.u_pw.focus();
			return;
		}
		
		f.u_pw.value = str;
		str = f.member_repwd.value;
		str = str.trim();
		if(!str){
			alert("비밀번호를 확인해주세요.");
			f.member_repwd.focus();
			return;
		}
		
		f.member_repwd.value = str;
		
		
		var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

		  if (!pwdCheck.test(u_pw.value)) {
		    alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
		    u_pw.focus();
		    return false;
		  };

		  if (member_repwd.value !== u_pw.value) {
		    alert("비밀번호가 일치하지 않습니다..");
		    member_repwd.focus();
		    return false;
		  };
		
		
		f.action = "${contextPath}/member/pwdChange.do";
		f.submit();
}


</script>


<style>
@charset "utf-8";

* {
	margin: 0;
	padding: 0;
}
 
.red_txt {
	color: #ee7272;
}

.blind {
	display: block;
	overflow: hidden;
	position: absolute;
	left: 0;
	top: -5000px
}

.wrap {
	max-width: 1100px;
	min-width: 1100px;
	margin: 0 auto;
}

.wrap.wd668 {
	max-width: 668px;
}

.wrap.wd668.line {
	border: 1px solid #ececec;
	padding: 30px 20px;
}

.container {
	width: 100%;
}

.sub_tit_txt {
	margin: 80px 0 20px 0px;
	color: rgb(252, 78, 130);
    font-size: 30px;
    font-weight: 570;
}

.wrap.wd668.line .sub_tit_txt {
	margin: 0px 0 20px 20px;
}

.con_term .term_txt {
	border: 1px solid #ececec;
	padding: 30px;
	height: 210px;
	overflow-y: auto;
	margin: 0 0 15px;
}

.con_term .term_txt ul li, .con_term .term_txt p, .con_term .term_txt div
	{
	color: #818181;
	font-size: 12px;
	line-height: 17px;
	margin: 0 0 15px;
}

.left_margin {
	margin: 0 0 0 20px;
}

.con_term .term_txt div.txt_bold {
	font-weight: bold;
	margin: 0 0 25px;
}

.btn_wrap1 {
	text-align: center;
	display: inline-block;

}

.btn_wrap {

	color: #fff;
	background-color: #FC4E82;
	font-weight: bold;
	height: 30px;
	line-height: 30px;
	width: 168px;
	display: inline-block;
	text-align: center;
	margin: 50px 30px 30px 50px;
	
}
.btn_wrap a {
	color: #fff;
	background-color: #FC4E82;
	font-weight: bold;
	height: 30px;
	line-height: 30px;
	width: 168px;
	display: block;
	text-align: center;
	margin: 0 auto;
}

.btn_wrap a.wide {
	width: 587px;
	margin: 0 0 0 20px;
}

.find_txt ul li {
	color: #9a9a9a;
	font-size: 13px;
	text-align: center;
	line-height: 17px;
	margin: 0 0 20px;
}

.form_txtInput .checkbox_wrap {
	position: relative;
	padding: 5px;
	text-align: right;
}

.form_txtInput .checkbox_wrap input[type="checkbox"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.form_txtInput .checkbox_wrap input[type="checkbox"]+label {
	display: inline-block;
	line-height: 14px;
	position: relative;
	padding-left: 20px;
	font-size: 13px;
	color: #818181;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

.form_txtInput .checkbox_wrap input[type="checkbox"]+label:before {
	content: '';
	position: absolute;
	top: 0px;
	left: 0;
	width: 12px;
	height: 12px;
	text-align: center;
	background: #fff;
	border: 1px solid #c2c2c2;
}

.form_txtInput .checkbox_wrap input[type="checkbox"]+label:active:before,
	.checkbox_wrap input[type="checkbox"]:checked+label:active:before {
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), inset 0px 1px 3px
		rgba(0, 0, 0, 0.1);
}

.form_txtInput .checkbox_wrap input[type="checkbox"]:checked+label:before
	{
	background: #fff;
	border-color: #ddd;
}

.form_txtInput .checkbox_wrap input[type="checkbox"]:checked+label:after
	{
	content: '✓';
	color: #0094ff;
	position: absolute;
	top: 0px;
	left: 2px;
	width: 7px;
	height: 7px;
	font-size: 13px;
	font-weight: bold;
}

.exTxt {
	font-size: 14px;
	color: #9a9a9a;
	display: block;
	margin: 0 0 45px 20px;
}

.join_form {
	width: 50%;
	max-width: 668px;
}

.join_form table {
	border-spacing: 0;
	margin: 0;
	padding: 0;
	border: 0;
	width: 90%;
}

.join_form table input {
	border: 1px solid #ececec;
	font-size: 14px;
	color: #4c4c4c;
	height: 25px;
	padding: 6px;
	width: 100%;
	float: left;
}

.join_form table input.phone1 {
	width: 100px;
	display: inline-block;
}
.join_form table input.phone2 {
	width: 100px;
	display: inline-block;
}
.join_form table input.phone3 {
	width: 100px;
	display: inline-block;
}

.join_form.idpwFind table input {
	width: 519px;
}


.join_form table th span {
	color: #404040;
	font-size: 14px;
	display: inline-block;
	position: relative;
	padding: 0 10px 0 0;
	text-indent: 20px;
}

.join_form table th {
	text-align: left;
}

.join_form table td {
	padding: 6px 0;
	position: relative;
}

.join_form table th span:after {
	/* content: '*'; */
	font-size: 13px;
	color: #f95427;
	position: absolute;
	top: 0;
	right: 0px;
}

.join_form.idpwFind table th span:after {
	content: none;
}

.join_form table td a.btn_confirm {
	font-size: 11pt;
	color: #666;
	text-decoration: none;
	display: inline-block;
	float: left;
	width: 115px;
	height: 35px;
	margin: 5px 0 0 0px;
	border: 1px solid #cfcfcf;
	background: #dedede;
	color: #626262;
	text-align: center;
	/* vertical-align: top; */
	line-height: 30px; 
}

.join_form.idpwFind table td select {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background:
		url(https://secsales.interparkb2b.co.kr/data/G94/main/sele_arr.gif)
		no-repeat 95% 50%;
	text-indent: 20px;
	width: 124px;
	height: 50px;
	border: 1px solid #ececec;
	font-size: 14px;
	color: #ccc;
	float: left;
}

.join_form.idpwFind table td select::-ms-expand {
	display: none;
}

.join_form.idpwFind table td  tr.phone td select {
	text-align: center;
	text-indent: 10px;
}

.join_form.idpwFind table tr.email input:after, .mar10:after, .join_form.idpwFind table td select:after,
	.join_form table td a.btn_confirm:after {
	content: '';
	display: block;
	clear: both;
}

.agree_wrap {
	margin: 36px 0 0;
}

.agree_wrap .checkbox_wrap {
	text-align: left;
}

.mar27 {
	margin: 27px 0 0;
}

.mar10 {
	margin: 14px 5px 0 10px;
	display: inline-block;
	padding: 0;
	float: left;
}

.exform_txt {
	padding: 12px 0 19px 0;
	text-align: right;
	color: #9a9a9a;
	font-size: 13px;
	border-bottom: 1px solid #ececec;
}

.exform_txt span {
	display: inline-block;
	position: relative;
	padding-left: 10px
}

.exform_txt span:after {
	/* content: '*'; */
	position: absolute;
	left: 0;
	top: 0;
	color: #f95427;
	font-size: 13px;
	font-weight: bold;
}

.explan_txt {
	margin: 3px 0 0 22px;
}

.explan_txt li {
	color: #b2b2b2;
	font-size: 13px;
	line-height: 17px;
}

.popWrap {
	border: 1px solid #ececec;
	padding: 30px;
	max-width: 400px;
	width: 100%;
	margin: 30px auto 0;
	display: none;
	position: absolute;
	top: 0;
	left: 50%;
	transform: translateX(-50%);
	background: #fff;
	z-index: 5;
}

.popWrap.is-open {
	display: block;
}

.popWrap .pop_txt_con .pop_exTxt {
	font-size: 14px;
	color: #9a9a9a;
	line-height: 20px;
}

.popWrap .pop_txt_con .pop_exTxt span {
	color: #254ee9
}

.popWrap .pop_btnWrap {
	margin: 30px 0 0;
}

.popWrap .pop_btnWrap a {
	color: #fff;
	background-color: #4380ce;
	font-weight: bold;
	padding: 10px;
	height: 22px;
	line-height: 22px;
	width: 103px;
	display: block;
	text-align: center;
}

.join_form table input.send_number::placeholder {
	text-align: right;
}

.join_form table input.send_number:-ms-input-placeholder {
	text-align: right;
}

.join_form table input.send_number::-ms-input-placeholder {
	text-align: right;
}

.overlayer {
	position: fixed;
	display: none;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 2;
	cursor: pointer;
}

.overlayer.is-open {
	display: block;
}
.social
{
    margin: 25px;
    align-items: center;
    text-align: center;
	margin: 40px 0 30px;
    
}
.social button
{
    width: 45%;
    border-radius: 10px;
    margin-bottom: 15px;
    padding: 5px 10px;
    background: transparent;
    border: 2px solid #222;
    outline: none;
    cursor: pointer;    
    align-items: center;
}
.social button p
{
    color: #4c4c4c;
    font-size: 15px;
    margin-left: 10px;
    letter-spacing: 1px;
}
</style>
</head>
<body>
	<form name="pwdFind2_form" action="${contextPath}/member/pwdFindResult.do" method="post">
	<div class="wrap wd668">
			<div class="container">
				<div class="form_txtInput">
					<h2 class="sub_tit_txt">비밀번호 변경</h2>
					<div class="join_form">
						<table>
							<colgroup>
								<col width="35%"/>
								<col width="*"/>
							</colgroup>
							<tbody>
								<tr>
									<th><span>신규 비밀번호 설정</span></th>
									<td><input type="password" name="u_pw" id="u_pw" placeholder="영문자+숫자+특수조합(8이상)으로 입력해주세요.">
										<input type="hidden" name="u_id" id="u_id" value="${memberInfo.u_id }"/>
											</td>
								</tr>
								<tr>
									<th><span>신규 비밀번호 확인</span></th>
									<td><input type="password" name="member_repwd" id="member_repwd" placeholder="영문자+숫자+특수조합(8이상)으로 입력해주세요."></td>
								</tr>
							
							</tbody>
						</table>
					</div><!-- join_form E  -->
					<div class="btn_wrap1">
						<button type="button" class="btn_wrap" onClick="${contextPath}/main/main.do">취소하기</button>

						<button type="button" class="btn_wrap" onClick="fn_pwdfindform2_check()">변경하기</button>
					</div>
				</div> <!-- form_txtInput E -->
			</div><!-- content E-->
		</div> <!-- container E -->
		</form>
</body>
</html>