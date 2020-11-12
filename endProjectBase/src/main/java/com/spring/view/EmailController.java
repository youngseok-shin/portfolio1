package com.spring.view;

import java.util.Map;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.biz.MemberService;
import com.spring.biz.FindUtil.FindUtil;
import com.spring.biz.vo.MemberVO;


@Controller
public class EmailController {
	@Resource(name = "memberService")
	MemberService memberService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@ResponseBody
	@RequestMapping(value="/searchPw.do")
    public void sendEmailAction (@RequestParam Map<String, Object> paramMap, MemberVO memberVO) throws Exception {
 
        String USERNAME = (String) paramMap.get("memberId");
        String EMAIL = (String) paramMap.get("email");
        String PASSWORD = FindUtil.createKey();
        
        memberVO.setMemberId(USERNAME);
        memberVO.setMemberPassword(PASSWORD);
        memberService.changePwd(memberVO);
        
        try {
            MimeMessage msg = mailSender.createMimeMessage();
            MimeMessageHelper messageHelper = new MimeMessageHelper(msg, true, "UTF-8");
             
            messageHelper.setSubject(USERNAME+"님 비밀번호 찾기 메일입니다.");
            messageHelper.setText("비밀번호는 <span style='font-weight:bold;'>"+PASSWORD+"</span>입니다.", true);
            
            messageHelper.setTo(EMAIL);
            msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(EMAIL));
            mailSender.send(msg);
             
        }catch(MessagingException e) {
            System.out.println("MessagingException");
            e.printStackTrace();
        }
//        mv.setViewName("redirect:/emailSuccess");
      //return  "user/login";
    }

}