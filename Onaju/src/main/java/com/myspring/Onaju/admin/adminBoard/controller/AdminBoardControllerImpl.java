package com.myspring.Onaju.admin.adminBoard.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.time.DateFormatUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.admin.admin.vo.AdminVO;
import com.myspring.Onaju.admin.adminBoard.service.AdminBoardService;
import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireReplyVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminEnquireVO;
import com.myspring.Onaju.admin.adminBoard.vo.AdminNoticeVO;

/*
 * 5조 오나주 웹 개발 프로젝트(그린컴퓨터아트학원)
 * 작성자 : 박종설
 * 최종 작성일 : 2022-05-24
 * 관리자 게시판 관리(공지사항, 1대1 문의)
 */
@RestController("adminBoardController")
public class AdminBoardControllerImpl implements AdminBoardController {
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private AdminBoardService adminBoardService;
	@Autowired
	private AdminVO adminVO;
	@Autowired
	private AdminEnquireVO enquireVO;
	
	@Resource(name="adminUploadPath")
	String adminUploadPath;
	
	@Override
	@RequestMapping(value = "/admin/noticeList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView adminNoticeList(AdminNoticeVO noticeVO, HttpServletRequest request, HttpServletResponse response) throws Exception {		
		int total = adminBoardService.noticeListTotal(noticeVO);
		int totalPage = (int) Math.ceil((double)total/10);
		
		int viewPage = noticeVO.getViewPage();
		int startNO = (viewPage - 1) * 10 + 1;
		int endNO = startNO + (10 - 1);
		
		noticeVO.setStartNO(startNO);
		noticeVO.setEndNO(endNO);
		
		
		List<AdminNoticeVO> noticeList = adminBoardService.noticeList(noticeVO);
		ModelAndView mav = new ModelAndView();
		mav.addObject("total", total);
		mav.addObject("totalPage", totalPage);
		mav.addObject("noticeList", noticeList);
		return mav; 
	}
	
	@Override
	@RequestMapping(value = "/admin/noticeDetail.do", method = RequestMethod.GET)
	public ModelAndView adminNoticeDetail(String notice_code) throws Exception {
		logger.debug("===notice_code확인용===");
		ModelAndView mav = new ModelAndView("/admin/noticeDetail.do");
		Map<String, Object> noticeMap = adminBoardService.noticeDetail(notice_code);
		mav.addObject("noticeMap", noticeMap);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/noticeForm.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView adminNoticeForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav =new ModelAndView(); 
		String viewName = (String)request.getAttribute("viewName"); 
		mav.setViewName(viewName); 
		return mav; 
	}

	//공지사항 메소드
	@Override
	@RequestMapping(value = "/admin/insertNotice.do", method = RequestMethod.POST)
	public ModelAndView insertNotice(AdminNoticeVO noticeVO, MultipartFile file, HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView("redirect:/admin/noticeList.do");
		HttpSession session = request.getSession();
		adminVO = (AdminVO)session.getAttribute("adminInfo");
		String a_id = adminVO.getA_id();
		logger.debug("==========vo테스트==========");
		logger.debug("제목 : " + noticeVO.getNotice_title());
		logger.debug("내용 : " + noticeVO.getNotice_content());
		logger.debug("작성자 : " + a_id);
		noticeVO.setA_id(a_id);
		adminBoardService.insertNotice(noticeVO);
		int notice_code = noticeVO.getNotice_code();
		if(notice_code != 0) {
			logger.debug("==========게시번호 확인==========");
			logger.debug("게시번호 : "+ notice_code);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("a_id", a_id);
			map.put("notice_code", notice_code);
			Map<String, Object> imgFile = parseFileInfo(map, file);
			adminBoardService.insertImgFile(imgFile);
		}
		logger.debug("==========시작==========");
		logger.debug("파일이름 : "+ file.getName());
		logger.debug("파일 실제이름 : " + file.getOriginalFilename());
		logger.debug("파일 크기 : " + file.getSize());
		logger.debug("파일 타입 : " + file.getContentType());
		logger.debug("==========끄읕==========");
		
		return mav;
	}

	//공지사항 이미지 저장
	public Map<String, Object> parseFileInfo(Map<String, Object> map, MultipartFile file) throws Exception {
		
		String noticeCode = String.valueOf(map.get("notice_code"));
		String creID = (String)map.get("a_id");
		
		Map<String, Object> imgFile = new HashMap<String, Object>();
		
		File target = new File(adminUploadPath);
		if(!target.exists()) target.mkdirs();
		
		String orgFileName = file.getOriginalFilename();
		String orgFileExtension = orgFileName.substring(orgFileName.lastIndexOf("."));
		String saveFileName = UUID.randomUUID().toString().replace("-", "") + orgFileExtension;
		Long saveFileSize = file.getSize();
		
		logger.debug("==========파일전송 시작 ==========");
		logger.debug("파일 실제 이름 : " + orgFileName);
		logger.debug("파일 저장 이름 : " + saveFileName);
		logger.debug("파일 크기 : " + saveFileSize);
		logger.debug("파일 타입 : " + file.getContentType());
		logger.debug("==========파일전송 종료 ==========");
		
		target = new File(adminUploadPath, saveFileName);
		file.transferTo(target);
		
		imgFile.put("notice_code", noticeCode);
		imgFile.put("Org_File_Name", orgFileName);
		imgFile.put("Save_File_Name", saveFileName);
		imgFile.put("File_Size", saveFileSize);
		imgFile.put("creID", creID);
		
		return imgFile;
	}
	
	//이미지 파일 불러오기
	@Override
	@RequestMapping(value = "/admin/imgFile.do", method= RequestMethod.GET)
	public void imgFile(String creID, String notice_code, HttpServletResponse response) throws Exception {
		OutputStream out = response.getOutputStream();
		Map<String, Object> imgInfoMap = new HashMap<String, Object>();
		imgInfoMap.put("a_id", creID);
		imgInfoMap.put("notice_code", notice_code);
		String save_File_Name = adminBoardService.getImgFile(imgInfoMap);
		String filePath = adminUploadPath +"\\"+ save_File_Name;
		
		File img = new File(filePath);
		FileInputStream in = new FileInputStream(img);
		
		byte[] buffer = new byte[1024*8];
		while (true) {
			int count = in.read(buffer);
			if(count == -1) 
				break;
			out.write(buffer,0,count);
		}
		in.close();
		out.close();	
	}

	@Override
	@RequestMapping(value = "/admin/searchNotice.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView adminSearchNoticeList(AdminNoticeVO searchVO) throws Exception {
		
		
		if(searchVO.getWrite_endDate() != null && searchVO.getWrite_endDate() != "") {
			String endDate = searchVO.getWrite_endDate();
		
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date date = format.parse(endDate);
			Date plus_endDate = new Date(date.getTime() + (1000*60*60*24));
			String write_endDate = DateFormatUtils.format(plus_endDate, "yyyy-MM-dd");
	
			searchVO.setWrite_endDate(write_endDate);
		}
		
		
		int total = adminBoardService.noticeListTotal(searchVO);
		int totalPage = (int) Math.ceil((double)total/10);
		
		int viewPage = searchVO.getViewPage();
		int startNO = (viewPage - 1) * 10 + 1;
		int endNO = startNO + (10 - 1);
		
		searchVO.setStartNO(startNO);
		searchVO.setEndNO(endNO);
		
		List<AdminNoticeVO> searchNoticeList =  adminBoardService.searchNotice(searchVO);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/noticeList");
		mav.addObject("noticeList", searchNoticeList);
		mav.addObject("total", total);
		mav.addObject("totalPage", totalPage);
		return mav; 
	}

	@Override
	@RequestMapping(value = "/admin/enquireBoard.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView enquireBoardList(AdminEnquireVO enquireVO) throws Exception {
		ModelAndView mav = new ModelAndView();
		List<Map<String, Object>> enquireList = adminBoardService.enquireBoardList(enquireVO);
		mav.addObject("enquireList", enquireList);
		return mav;
	}

	@Override
	@RequestMapping(value = "/admin/enquireDetail.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView enquireBoardDetail(AdminEnquireVO enquireVO) throws Exception {
		
		adminBoardService.updateHit(enquireVO);
		
		ModelAndView mav = new ModelAndView();
		List<Map<String, Object>> enquireDetail = adminBoardService.enquireBoardDetail(enquireVO);
		
		mav.addObject("enquireDetail", enquireDetail);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "admin/newReply.do", method = RequestMethod.POST)
	public ResponseEntity<String> insertEnquireReply(@ModelAttribute("replyVO") AdminEnquireReplyVO replyVO, HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		adminVO = (AdminVO)session.getAttribute("adminInfo");
		replyVO.setA_id(adminVO.getA_id());
		int insertReply = adminBoardService.insertEnquireReply(replyVO);
		return insertReply == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(value = "/admin/enquireReplyList.do", method = {RequestMethod.GET, RequestMethod.POST} )
	public ResponseEntity<List<Map<String, Object>>> ajaxcommentList(AdminEnquireReplyVO replyVO){
		List<Map<String, Object>> replysList = adminBoardService.enquireReplyDetail(replyVO);
		return new ResponseEntity<>(replysList, HttpStatus.OK);
	}
}
