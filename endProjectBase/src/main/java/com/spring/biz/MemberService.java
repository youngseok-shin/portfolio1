package com.spring.biz;

import java.util.List;

import com.spring.biz.vo.BoardVO2;
import com.spring.biz.vo.CampSelectVO;
import com.spring.biz.vo.MemberVO;
import com.spring.biz.vo.MessageVO;

public interface MemberService {
	//회원가입
	int insertMember(MemberVO memberVO);
	//로그인
	MemberVO selectMember(MemberVO memberVO);
	//비밀번호 변경(임시 비밀번호 메일 전송 시)
	int changePwd(MemberVO memberVO);
	//내 정보에서 비밀번호 변경조회
	MemberVO inMyInfoSelPw(MemberVO memberVO);
	//관리자페이지에서 회원관리
	List<MemberVO> selectAllMember();
	//선택 회원삭제
	void delMember(MemberVO memberVO);
	//쪽지보내기
	int sendMessage(MessageVO messageVO);
	int reSendMessage(MessageVO messageVO);
	//쪽지 R조회
	List<MessageVO> selectReceiveMsgList(MessageVO messageVO);
	//쪽지 S조회
	List<MessageVO> selectSendMsgList(MessageVO messageVO);
	//새로운 쪽지 개수 조회
	int selectNewMsgCnt(MessageVO messageVO);
	//쪽지 N/Y업데이트
	int updateIsChecked(MessageVO messageVO);
	//쪽지 디테일
	MessageVO selectLetterDetail(MessageVO messageVO);
	//쪽지 개수
	int sMessageCnt(String rId);
	int rMessageCnt(String rId);
	
	//찜 목록 불러오기
	List<CampSelectVO> callSelectCamp(int memberNum);
	//내 후기
	List<BoardVO2> selectMyReview(BoardVO2 boardVO2);
}




















