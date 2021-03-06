package com.myspring.Onaju.common.email.controller;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myspring.Onaju.common.email.service.MailService;

@Controller("mailController")
public class MailController {
	@Autowired
	private MailService mailService;

	public void setMailService(MailService mailService) {
		this.mailService = mailService;
	}

	@ResponseBody
	@RequestMapping(value = "/checkEmailAjax.do")
	public Map<String, String> sendMail(@RequestBody Map<String, String> map, HttpSession session) {
		System.out.println("/checkEmail.do에 들어옴");
		System.out.println("입력받은 email의 값 : " + map.get("email"));
		int random = new Random().nextInt(100000) + 10000;
		System.out.println("random의 값 : " + random);
		String joinCode = String.valueOf(random);
		System.out.println("joinCode의 값 : " + joinCode);
		session.setAttribute("joinCode", joinCode);
		String subject = "회원가입 인증 코드 입니다.";
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.append("안녕하세요. '오나주'입니다.\r귀하의 인증 코드는 <" + joinCode + "> 입니다.");
		System.out.println(stringBuilder.toString());
		boolean finishSend = this.mailService.send(subject, stringBuilder.toString(), "TongAdmin", map.get("email"));
		System.out.println("성공이냐 실패냐 : " + finishSend);
		map.put("joinCode", joinCode);
		System.out.println(map);
		return map;
	}
}
