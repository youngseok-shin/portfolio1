package com.spring.biz;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.vo.BoardImageVO;
import com.spring.biz.vo.BoardVO;
import com.spring.biz.vo.BoardVO2;
import com.spring.biz.vo.CommentVO;
import com.spring.biz.vo.SearchVO;

@Service("BoardService") 
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertNewsBoard(BoardVO boardVO) {
	
		return sqlSession.insert("insertNewsBoard" ,boardVO);
	}

	@Override
	public BoardVO selectNewsBoard(BoardVO boardVO) {
		
		return sqlSession.selectOne("selectNewsBoard" ,boardVO );
	}

	@Override
	public List<BoardVO> selectNewsList() {
		
		return sqlSession.selectList("selectNewsList");
	}

	@Override
	public int recentBoardNum() {
	
		return sqlSession.selectOne("recentBoardNum");
	}

	@Override
	public int insertImage(BoardVO2 boardVO2) {
		
		return sqlSession.insert("boardMapper.insertImage",boardVO2);
	}
	
	@Override
	public List<BoardImageVO> selectImageReview() {
	
		return sqlSession.selectList("selectImageReview");
	}

	@Override
	public int deleteBoard(int boardNum) {
		
		return sqlSession.delete("deleteBoard", boardNum);
	}

	@Override
	public List<BoardVO> selectList(SearchVO searchVO) {
		
		return sqlSession.selectList("boardMapper.selectList",searchVO);
	}

	@Override
	public BoardVO2 selectNewsBoardReview(BoardVO2 boardVO2) {
		
		return sqlSession.selectOne("selectNewsBoardReview",boardVO2);
	}

	@Override
	public List<BoardVO2> selectList2(SearchVO searchVO) {
		
		return sqlSession.selectList("boardMapper.selectList2",searchVO);
	}

	@Override
	public int updateNewsForm(BoardVO boardVO) {
	
		return sqlSession.update("updateNewsForm",boardVO);
	}

	@Override
	public int updateReviewForm(BoardVO2 boardVO2) {
		
		return sqlSession.update("updateReviewForm",boardVO2);
	}

	@Override
	public int deleteBoard2(int boardNum) {
	
		return sqlSession.delete("deleteBoard2",boardNum);
	}

	@Override
	public int updateBoardCnt(BoardVO boardVO) {
		
		return sqlSession.update("updateBoardCnt",boardVO);
	}

	@Override
	public int updateBoardCnt2(BoardVO2 boardVO2) {
		
		return sqlSession.update("updateBoardCnt2",boardVO2);
	}

	@Override
	public int recentBoardNum2() {
	
		return sqlSession.selectOne("recentBoardNum2");
	}

	@Override
	public int insertNoticeBoard(BoardVO boardVO) {
		
		return sqlSession.insert("insertNoticeBoard",boardVO);
	}

	@Override
	public List<BoardVO> selectNoticeList() {
		
		return sqlSession.selectList("selectNoticeList");
	}

	@Override
	public BoardVO selectNoticeBoard(BoardVO boardVO) {
	
		return sqlSession.selectOne("selectNoticeBoard",boardVO);
	}

	@Override
	public int updateBoardCnt3(BoardVO boardVO) {
	
		return sqlSession.update("updateBoardCnt3",boardVO);
	}

	@Override
	public List<BoardVO2> selectList3(SearchVO searchVO) {
		
		return sqlSession.selectList("selectList3",searchVO);
	}

	@Override
	public int updateNoticeForm(BoardVO boardVO) {
	
		return sqlSession.update("updateNoticeForm",boardVO);
	}

	@Override
	public int deleteBoard3(int boardNum) {
	
		return sqlSession.delete("deleteBoard3",boardNum);
	}

	@Override
	public int insertComment(CommentVO commentVO) {
		return sqlSession.insert("insertComment", commentVO);
	}

	@Override
	public List<CommentVO> selectCommentList(BoardVO2 boardVO2) {
		return sqlSession.selectList("selectCommentList", boardVO2);
	}

	@Override
	public int commentDelete(CommentVO commentVO) {
		return sqlSession.delete("commentDelete", commentVO);
	}

	@Override
	public int reviewCommentDelete(int boardNum) {
		return sqlSession.delete("reviewCommentDelete", boardNum);
	}

	@Override
	public List<BoardVO2> campSearchReview(BoardVO2 boardVO2) {
		return sqlSession.selectList("campSearchReview", boardVO2);
	}





	
}












