package com.spring.biz;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.vo.BoardVO2;
import com.spring.biz.vo.CampSelectVO;
import com.spring.biz.vo.MemberVO;
import com.spring.biz.vo.MessageVO;

@Service("memberService") 
public class MemberServiceImpl implements MemberService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertMember(MemberVO memberVO) {
		return sqlSession.insert("insertMember", memberVO);
	}

	@Override
	public MemberVO selectMember(MemberVO memberVO) {
		return sqlSession.selectOne("selectMember", memberVO);
	}

	@Override
	public int changePwd(MemberVO memberVO) {
		return sqlSession.update("changePwd", memberVO);
	}

	@Override
	public int sendMessage(MessageVO messageVO) {
		return sqlSession.insert("sendMessage", messageVO);
	}

	@Override
	public List<MessageVO> selectReceiveMsgList(MessageVO messageVO) {
		return sqlSession.selectList("selectReceiveMsgList", messageVO);
	}

	@Override
	public int selectNewMsgCnt(MessageVO messageVO) {
		return sqlSession.selectOne("selectNewMsgCnt", messageVO);
	}

	@Override
	public int updateIsChecked(MessageVO messageVO) {
		return sqlSession.update("updateIsChecked", messageVO);
	}

	@Override
	public MessageVO selectLetterDetail(MessageVO messageVO) {
		return sqlSession.selectOne("selectLetterDetail", messageVO);
	}

	@Override
	public List<MessageVO> selectSendMsgList(MessageVO messageVO) {
		return sqlSession.selectList("selectSendMsgList", messageVO);
	}

	@Override
	public MemberVO inMyInfoSelPw(MemberVO memberVO) {
		return sqlSession.selectOne("inMyInfoSelPw", memberVO);
	}

	@Override
	public List<MemberVO> selectAllMember() {
		return sqlSession.selectList("selectAllMember");
	}

	@Override
	public void delMember(MemberVO memberVO) {
		sqlSession.delete("delMember", memberVO);
	}
	@Override
	public int rMessageCnt(String rId) {
		return sqlSession.selectOne("rMessageCnt", rId);
	}
	
	@Override
	public int sMessageCnt(String sId) {
		return sqlSession.selectOne("sMessageCnt", sId);
	}
	
	@Override
	public List<CampSelectVO> callSelectCamp(int memberNum) {
		return sqlSession.selectList("callSelectCamp", memberNum);
	}
	@Override
	public List<BoardVO2> selectMyReview(BoardVO2 boardVO2) {
		return sqlSession.selectList("selectMyReview", boardVO2);
	}

	@Override
	public int reSendMessage(MessageVO messageVO) {
		// TODO Auto-generated method stub
		return sqlSession.insert("reSendMessage", messageVO);
	}
}












