package com.spring.view;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import com.spring.biz.BoardService;
import com.spring.biz.CampSiteService;
import com.spring.biz.MemberService;
import com.spring.biz.vo.BoardVO;
import com.spring.biz.vo.BoardVO2;
import com.spring.biz.vo.CommentVO;
import com.spring.biz.vo.SearchVO;


@Controller
public class BoardController {
	@Resource(name = "BoardService")
	BoardService boardService;

	@Resource(name = "campSiteService")
	CampSiteService campservice;
	
	@Resource(name = "memberService")
	MemberService memberService;

	
	
	// news 메인페이지
	@RequestMapping(value = "/board.do")
	public String selectNewsList(Model model) {
		model.addAttribute("selectNewsList", boardService.selectNewsList());
						
		return "board/news";
	}

	// 리뷰 메인페이지
	@RequestMapping(value = "/board1.do")
	public String selectImageReview(BoardVO2 boardVO2, Model model, HttpSession session) {
		model.addAttribute("vvv", boardService.selectImageReview());
		
		return "board/review";
	}
	
	// 공지사항 메인페이지
	@RequestMapping(value = "/board2.do")
	public String test3(BoardVO boardVO, Model model) {
		model.addAttribute("selectNoticeList", boardService.selectNoticeList());
		return "board/notice";
	}

	// 리뷰 페이지에서 글쓰기
	@RequestMapping(value = "/board3.do")
	public String test4(Model model, String doNm, String sigunguNm, String facltNm) {
		System.out.println(facltNm+"@@@@@@@@@@@@@@@@@@@");
		if (facltNm != null) {
			model.addAttribute("doNms", doNm);
			model.addAttribute("sigunguNms", sigunguNm);
			model.addAttribute("facltNms", facltNm);
		}
		//시, 군, 구 출력
		model.addAttribute("doNmList", campservice.selectDoNm());
		

		
		return "board/reviewBoard";
	}

	// news 페이지에서 글쓴것보기 (제목누르면 쓴글보기)
	@RequestMapping(value = "/board4.do")
	public String selectNewsBoard(BoardVO boardVO, Model model) {
		if (boardVO.getBoardNum() == 0) {

			boardVO.setBoardNum(boardService.recentBoardNum());

		}
		BoardVO vo = boardService.selectNewsBoard(boardVO);
		model.addAttribute("newsBoard", vo);
		boardService.updateBoardCnt(boardVO);

		return "board/newsDetail";
	}

	// 공지사항 글쓴것보기(제목누르면쓴글보기)
	@RequestMapping(value = "/board5.do")
	public String test6() {
		return "board/noticeDetail";
	}

//	 @RequestMapping(value = "/board6.do")
//	@ResponseBody
//	public String test7() throws Exception  {
//	 BoardImageVO boardImageVO,MultipartHttpServletRequest multi
//		List<String> attachedFileNames = attachFile(multi);
//		BoardImageVO vo = new BoardImageVO();
//		
//		List<BoardImageVO> imageList = new ArrayList<>();
//		
//		boardImageVO.setImageList(imageList);
//		boardService.insertImage(boardImageVO);
//	return "board/reviewDetail";
//	}
//
//	/*
//	 * public String attachFile(@RequestParam("fileName") MultipartFile file) {
//	 * 
//	 * System.out.println("파일 이름 : " + file.getOriginalFilename());
//	 * System.out.println("파일 크기 : " + file.getSize());
//	 * 
//	 * 
//	 * try(
//	 * 
//	 * // 윈도우일 경우 FileOutputStream fos = new FileOutputStream("c:/images/" +
//	 * file.getOriginalFilename()); InputStream is = file.getInputStream();
//	 * 
//	 * 
//	 * 
//	 * ){ int readCount = 0; byte[] buffer = new byte[1024]; while((readCount =
//	 * is.read(buffer)) != -1){ fos.write(buffer,0,readCount);
//	 * 
//	 * 
//	 * 
//	 * 
//	 * } }catch(Exception ex){ throw new RuntimeException("file Save Error"); }
//	 * 
//	 * 
//	 * return "board/reviewDetail"; }
//	 */
//-----------------------------
//	@RequestMapping(value = "/board6.do")
//
//	public String test7(BoardVO2 boardVO2) {
//
//		boardService.insertImage(boardVO2);
//
//		return "redirect:board12.do";
//	}

	// 리뷰자세히보기 제목클릭
	@RequestMapping(value = "/board12.do")
	public String test8(BoardVO2 boardVO2, Model model, String facltNm) {

		if (boardVO2.getBoardNum() == 0) {
			boardVO2.setBoardNum(boardService.recentBoardNum2());
		}

		
		model.addAttribute("commentList", boardService.selectCommentList(boardVO2));
		BoardVO2 vo = boardService.selectNewsBoardReview(boardVO2);
		model.addAttribute("vv", vo);
		boardService.updateBoardCnt2(boardVO2);

		return "board/reviewDetail";
	}

	@RequestMapping("/board6.do")
	public String imageUpload( BoardVO2 boardVO2, Model model,MultipartHttpServletRequest multi) throws Exception {
		
		List<String> fileNames = attachFile(multi);
	
		if (fileNames.size() != 0) {
			
			boardVO2.setMainImg(fileNames.get(0));
			
		}
		boardService.insertImage(boardVO2);
		
		return "redirect:board12.do";
	}

	 
	public List<String> attachFile(MultipartHttpServletRequest multi) throws Exception {
		// 첨부파일이 여러개여서 리스트로

		// 원본 첨부파일 이름이 담길 변수
		String originFileName = "";
		// 현재 시간 데이터를 담을 변수
		String nowDate = getNowDateTime();

		// return 시킬 첨부파일명이 담긴 list 생성
		List<String> fileList = new ArrayList<>();

		multi.setCharacterEncoding("UTF-8");

		// multipartRequest에서 첨부파일에 대한 데이터를 받아온다.
		Iterator<String> enu = multi.getFileNames();

		// 첨부파일 데이터가 존재하면 첨부파일 개수만큼 반복한다.
		while (enu.hasNext()) {
			// 첨부파일을 하나씩 차례대로 꺼낸다
			String fileName = enu.next();

			// 단일첨부파일일때
			if (fileName.equals("file1")) {

				//
				String realName = "";
				// 하나씩 꺼낸 정보를 통해 실제 파일을 받아온다.
				MultipartFile mf = multi.getFile(fileName);
				// 실제 받아온 첨부파일 정보에서 원ㅂ논파일의 이름을 받아온다.
				originFileName = mf.getOriginalFilename();

				realName = nowDate + "_" + originFileName;

				File file = new File("D:/uploadFile/teamBoardImage/");

				// 첨부파일의 용량이 0이 아니면
				if (mf.getSize() != 0) {

					if (!file.exists()) {
						System.out.println("!!!!");
						file.mkdirs();
					}
					// 해당하는 경로에 첨부파일을 업로드한다.

					mf.transferTo(new File("D:/uploadFile/teamBoardImage/" + realName));
					fileList.add(realName);
				}

			}
	
		}
		return fileList;
	}
	// 현재 날짜 및 시분초
	public String getNowDateTime() {
		Calendar cal = Calendar.getInstance();
		String year = cal.get(Calendar.YEAR) + "";
		String month = cal.get(Calendar.MONTH) + 1 + "";
		String day = cal.get(Calendar.DAY_OF_MONTH) + "";
		String hour = cal.get(Calendar.HOUR) + "";
		String minute = cal.get(Calendar.MINUTE) + "";
		String second = cal.get(Calendar.SECOND) + "";

		return year + month + day + hour + minute + second;
	}

	
	// 관리자만 소식 페이지에서 글쓰는곳 news.jsp
	@RequestMapping(value = "/board7.do")
	public String test8() {
		return "board/adminBoard";
	}

	// 리다이렉트 글쓴거 보기
	@RequestMapping(value = "/board77.do")
	public String insertNewsBoard(BoardVO boardVO, Model model) {
		boardService.insertNewsBoard(boardVO);
		return "redirect:board4.do";
	}

	// 리뷰자세히보기 제목클릭
	@RequestMapping(value = "/board9.do")
	public String test10() {
		return "board/reviewDetail";
	}

	// 뉴스 삭제
	@RequestMapping(value = "/board10.do")
	public String test11(int boardNum, Model model, BoardVO boardVO) {
		boardService.deleteBoard(boardNum);
		return "redirect:board.do";
	}

	// 제목검색
	@RequestMapping(value = "/board11.do")
	public String test11(SearchVO searchVO, Model model) {
		model.addAttribute("selectNewsList", boardService.selectList(searchVO));
		return "board/news";
	}

	// 제목검색2리뷰
	@RequestMapping(value = "/board13.do")
	public String test12(SearchVO searchVO, Model model) {
		
		model.addAttribute("vvv", boardService.selectList2(searchVO));
		return "board/review";
	}

	// 제목검색3공지사항
	@RequestMapping(value = "/board23.do")
	public String test22(SearchVO searchVO, Model model) {
		model.addAttribute("vvv", boardService.selectList3(searchVO));
		return "board/notice";
	}

	// 뉴스 글쓰기 수정
	@RequestMapping(value = "/board14.do")
	public String test13(Model model, BoardVO boardVO) {
		BoardVO vo = boardService.selectNewsBoard(boardVO);
		model.addAttribute("newsBoard", vo);
		return "board/newsRewriteForm";
	}

	// 뉴스 글쓰기 수정 등록 update
	@RequestMapping(value = "/board15.do")
	public String test14(Model model, BoardVO boardVO) {
		boardService.updateNewsForm(boardVO);
		return "redirect:board.do";
	}

	// 후기 글쓰기 수정
	@RequestMapping(value = "/board16.do")
	public String test15(Model model, BoardVO2 boardVO2) {
		BoardVO2 vo = boardService.selectNewsBoardReview(boardVO2);
		model.addAttribute("vv", vo);
		model.addAttribute("doNmList", campservice.selectDoNm());
		return "board/reviewRewriteForm";
	}

	// 리뷰 글쓰기 수정 등록 update
	@RequestMapping(value = "/board17.do")
	public String test16(Model model, BoardVO2 boardVO2) {
		boardService.updateReviewForm(boardVO2);
		return "redirect:board1.do";
	}

	// 리뷰 삭제
	@RequestMapping(value = "/board18.do")
	public String test17(int boardNum) {
		boardService.deleteBoard2(boardNum);
		boardService.reviewCommentDelete(boardNum);
		return "redirect:board1.do";
	}

	// 공지사항 글작성
	@RequestMapping(value = "/board19.do")
	public String test18() {
		return "board/noticeAdminBoard";
	}

	// 공지사항 글등록
	@RequestMapping(value = "/board20.do")
	public String test19(BoardVO boardVO) {
		boardService.insertNoticeBoard(boardVO);
		return "redirect:board2.do";
	}

	// 공지사항 글수정 등록
	@RequestMapping(value = "/board21.do")
	public String test20(BoardVO boardVO, Model model) {
		boardService.updateNoticeForm(boardVO);
		return "redirect:board2.do";
	}

	// 공지글쓴거 디테일보기
	@RequestMapping(value = "/board22.do")
	public String test21(BoardVO boardVO, Model model) {
		BoardVO vo = boardService.selectNoticeBoard(boardVO);
		model.addAttribute("vv", vo);
		boardService.updateBoardCnt3(boardVO);
		return "board/noticeDetail";
	}

	// 공지사항 글쓰기 수정 하는곳
	@RequestMapping(value = "/board24.do")
	public String test23(Model model, BoardVO boardVO) {
		BoardVO vo = boardService.selectNoticeBoard(boardVO);
		model.addAttribute("vv", vo);
		return "board/noticeRewriteForm";
	}

	// 공지사항 삭제
	@RequestMapping(value = "/board25.do")
	public String test24(int boardNum) {
		boardService.deleteBoard3(boardNum);
		return "redirect:board2.do";
	}
	
	// 댓글달기
	@RequestMapping(value = "/comment.do")
	public String comment(CommentVO commentVO, Model model) {
		
		boardService.insertComment(commentVO);
		model.addAttribute("boardNum", commentVO.getBoardNum());
		return "redirect:board12.do";
	}

	// 댓글삭제
	@RequestMapping(value = "/commentDelete.do")
	public String commentDelete(CommentVO commentVO, Model model) {
		boardService.commentDelete(commentVO);
		model.addAttribute("boardNum", commentVO.getBoardNum());
		return "redirect:board12.do";
	}

}
