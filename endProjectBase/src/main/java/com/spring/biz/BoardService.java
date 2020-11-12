package com.spring.biz;

import java.util.List;

import com.spring.biz.vo.BoardImageVO;
import com.spring.biz.vo.BoardVO;
import com.spring.biz.vo.BoardVO2;
import com.spring.biz.vo.CommentVO;
import com.spring.biz.vo.SearchVO;

public interface BoardService {
	
	int insertNewsBoard(BoardVO boardVO);
	
	//공지사항글쓰기
	int insertNoticeBoard(BoardVO boardVO);
	
	BoardVO selectNewsBoard(BoardVO boardVO);
	
	List<BoardVO> selectNewsList();
	
	int recentBoardNum();
	int recentBoardNum2();
	
		//사진
	
	int insertImage(BoardVO2 boardVO2);
	
	
	List<BoardImageVO> selectImageReview();

	
	int deleteBoard(int boardNum);
	int deleteBoard2(int boardNum);
	int deleteBoard3(int boardNum);

	
	
	//제목검색
	List<BoardVO> selectList(SearchVO searchVO);
	
	List<BoardVO2> selectList2(SearchVO searchVO);
	List<BoardVO2> selectList3(SearchVO searchVO);
	
	BoardVO2 selectNewsBoardReview(BoardVO2 boardVO2);
	
	
	
	int updateNewsForm(BoardVO boardVO);
	int updateReviewForm(BoardVO2 boardVO2);
	int updateNoticeForm(BoardVO boardVO);
	
	
	//조회수
	 int updateBoardCnt(BoardVO boardVO);
	 int updateBoardCnt2(BoardVO2 boardVO2);
	 int updateBoardCnt3(BoardVO boardVO);
	 
	 //공지사항 첫 리스트
	 List<BoardVO> selectNoticeList();
	 
	 BoardVO selectNoticeBoard(BoardVO boardVO);
	 
	 //댓글달기
	 int insertComment(CommentVO commentVO);
	 
	 //댓글 불러오기
	 List<CommentVO> selectCommentList(BoardVO2 boardVO2);
	 //댓글 삭제
	 int commentDelete(CommentVO commentVO);
	 //글삭제시 댓글도 같이 삭제
	 int reviewCommentDelete(int boardNum);
	 
	 List<BoardVO2> campSearchReview(BoardVO2 boardVO2);
}




















