package com.spring.view;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.biz.BoardService;
import com.spring.biz.CampSiteService;
import com.spring.biz.MemberService;
import com.spring.biz.vo.BoardVO2;
import com.spring.biz.vo.MemberVO;
import com.spring.biz.vo.MessageVO;

@Controller
public class MemberController {
	@Resource(name = "memberService")
	MemberService memberService;
	
	@Resource(name = "campSiteService")
	CampSiteService campservice;
	
	@Resource(name = "BoardService")
	BoardService boardService;
	
	@RequestMapping(value = "/join.do")
	public String join() {
		return "user/msJoin";
	}
	
	@RequestMapping(value = "/realJoin.do")
	public String realJoin(MemberVO memberVO) {
		memberService.insertMember(memberVO);
		return "redirect:main.do";
	}
	
	@RequestMapping(value = "/login.do")
	public String login() {
		return "user/login";
	}
	@RequestMapping(value = "/failLogin.do")
	public String failLogin() {
		return "user/failLogin";
	}
	@RequestMapping(value = "/realLogin.do")
	public String reallogin(MemberVO memberVO, HttpSession session) {
		MemberVO vo = memberService.selectMember(memberVO);
		if (vo != null) {
			session.setAttribute("loginInfo", vo);
			return "redirect:main.do";
		} else {
			return "redirect:failLogin.do";
		}

	}
	
	//내 정보 불러오기
	@RequestMapping(value = "/myPage.do")
	public String myPage(MemberVO memberVO, Model model, HttpSession session, @RequestParam(defaultValue = "subMenu4")String subMenu, BoardVO2 boardVO2) {
		MemberVO vo = (MemberVO)session.getAttribute("loginInfo");
		memberVO.setMemberId(vo.getMemberId());
		model.addAttribute("inMyInfoSelPw", memberService.inMyInfoSelPw(memberVO));
		System.out.println(memberService.inMyInfoSelPw(memberVO));
		model.addAttribute("subMenu", subMenu);
		
		model.addAttribute("callSelectCamp", memberService.callSelectCamp(vo.getMemberNum()));
		boardVO2.setBoardWriter(vo.getMemberId());
		model.addAttribute("selectReview", memberService.selectMyReview(boardVO2));
		
		return "user/myPage";
	}
	
	
	//내정보에서 비밀번호 변경
	@RequestMapping(value = "/updatePwInfo.do")
	public String updatePwInfo(MemberVO memberVO, HttpSession session, String newPw1) {
		MemberVO vo = (MemberVO)session.getAttribute("loginInfo");
		memberVO.setMemberId(vo.getMemberId());
		memberVO.setMemberPassword(newPw1);
		memberService.changePwd(memberVO);
		return "redirect:myPage.do";
	}
	
	@RequestMapping(value = "/logout.do")
	public String logout(MemberVO memberVO, HttpSession session) {
		session.removeAttribute("loginInfo");
		return "redirect:main.do";
	}
	
	//관리자 페이지에서 회원관리
	@RequestMapping(value = "/admin.do")
	public String admin(Model model, @RequestParam(defaultValue = "subMenu3")String subMenu) {
		
		model.addAttribute("selectAllMember", memberService.selectAllMember());
		model.addAttribute("subMenu", subMenu);
		return "admin/adminPage";
	}
	//선택회원 삭제
	@RequestMapping(value = "/delMember.do")
	  public String delMember(String[] memberNums, MemberVO memberVO) {
	      List<String> memberList = Arrays.asList(memberNums);
	      memberVO.setMemberList(memberList);
	      memberService.delMember(memberVO);
	      return "redirect:admin.do";
	}
	
	@RequestMapping(value = "/findPwForm.do")
	public String findPwForm(MemberVO memberVO) {
		return "user/findPassword";
	}

	@RequestMapping(value = "/letterSendForm.do")
	public String letterSendForm(MessageVO messageVO) {
		memberService.sendMessage(messageVO);
		return "main/main";
	}
	//사용자 쪽지함
	@RequestMapping(value = "/userLetterInbox.do")
	public String userLetterInbox(MessageVO messageVO, Model model, HttpSession session, @RequestParam(defaultValue = "subMenu1")String subMenu
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range) {
		
		model.addAttribute("subMenu", subMenu);
		MemberVO vo = (MemberVO)session.getAttribute("loginInfo");
		
		//페이징 처리 코드
		int rlistCnt = memberService.rMessageCnt(vo.getMemberId());
		int slistCnt = memberService.sMessageCnt(vo.getMemberId());
		//받은 쪽지함 페이징 정보 세팅
		messageVO.pageInfo(page, range, rlistCnt);
		//보낸 쪽지함 페이징 정보 세팅
		MessageVO mv = new MessageVO();
		mv.setsId(vo.getMemberId());
		mv.pageInfo(page, range, slistCnt);
		
		model.addAttribute("rlistCnt", rlistCnt);
		model.addAttribute("slistCnt", slistCnt);
		model.addAttribute("mv", mv);
		//받은쪽지목록
		messageVO.setrId(vo.getMemberId());
		model.addAttribute("selectReceiveMsgList", memberService.selectReceiveMsgList(messageVO));
		//보낸쪽지 목록
		messageVO.setsId(vo.getMemberId());
		model.addAttribute("selectSendMsgList", memberService.selectSendMsgList(mv));
		return "letter/userLetterInbox";
	}
	//관리자 쪽지함
	@RequestMapping(value = "/adminLetterInbox.do")
	public String adminLetterInbox(MessageVO messageVO, Model model, HttpSession session, @RequestParam(defaultValue = "subMenu1")String subMenu,
			  @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			//, @RequestParam(required = false, defaultValue = "rInbox") String inboxType
			) {
		model.addAttribute("subMenu", subMenu);
		MemberVO vo = (MemberVO)session.getAttribute("loginInfo");
		
		//페이징 처리 코드
		int rlistCnt = memberService.rMessageCnt(vo.getMemberId());
		int slistCnt = memberService.sMessageCnt(vo.getMemberId());
		
		//받은 쪽지함 페이징 정보 세팅
		messageVO.pageInfo(page, range, rlistCnt);
		//보낸 쪽지함 페이징 정보 세팅
		MessageVO mv = new MessageVO();
		mv.setsId(vo.getMemberId());
		mv.pageInfo(page, range, slistCnt);

		model.addAttribute("rlistCnt", rlistCnt);
		model.addAttribute("slistCnt", slistCnt);
		model.addAttribute("mv", mv);
		
		//받은 쪽지 목록
		messageVO.setrId(vo.getMemberId());
		model.addAttribute("selectReceiveMsgList", memberService.selectReceiveMsgList(messageVO));
		//보낸쪽지 목록
		messageVO.setsId(vo.getMemberId());
		model.addAttribute("selectSendMsgList", memberService.selectSendMsgList(mv));
		return "letter/adminLetterInbox";
	}
	
	@RequestMapping(value = "/letterDetail.do")
	public String letterDetailForm(MessageVO messageVO, Model model, HttpSession session) {
//		MemberVO vo = (MemberVO)session.getAttribute("loginInfo");
//		messageVO.setrId(vo.getMemberId());
		model.addAttribute("messageInfo", memberService.selectLetterDetail(messageVO));
		memberService.updateIsChecked(messageVO);
		return "letter/letterDetail";
	}
	
	@RequestMapping(value = "/answerMsg.do")
	public String answerMsg(MessageVO messageVO) {
		memberService.reSendMessage(messageVO);
		return "redirect:adminLetterInbox.do";
	}
	
//	@RequestMapping(value = "/letterDetail.do")
//	public String letterDetail() {
//		memberService.updateIsChecked();
//		
//		return "letter/letterDetail";
//	}
	
	//admin의 새로운 쪽지가 있는지 검사
	@ResponseBody
	@RequestMapping(value = "/isNewMsg.do")
	public int letterDetail(MessageVO messageVO, HttpSession session) {
		MemberVO vo = (MemberVO)session.getAttribute("loginInfo");
		messageVO.setrId(vo.getMemberId());
		return memberService.selectNewMsgCnt(messageVO);
	}
	
	
	
	
//	@RequestMapping(value = "/findPw.do")
//	@ResponseBody
//	public String findPw(MemberVO memberVO, String inputCode, HttpSession session) throws Exception {
//		String keyCode = (String)session.getAttribute("keyCode");
//		
//		if(!inputCode.equals(keyCode)) {
//			return "discordance";
//		}
//		
//		session.removeAttribute("keyCode");
//		
//		String newPwd = FindUtil.getNewPwd();
//		memberService.changePwd(memberVO);
//		String subject = "[CAMP] 임시 비밀번호 발급 안내";
//		
//		String msg = "";
//		msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
//		msg += "<h3 style='color:blue;'><strong>" + memberVO.getMemberId();
//		msg += "님</strong>의 임시 비밀번호입니다. 로그인 후 비밀번호를 변경하세요.</h3>";
//		msg += "<p>임시 비밀번호 : <strong>"+ newPwd +"</strong></p></div>";
//				
//		
//		return "success";
//	}
}










