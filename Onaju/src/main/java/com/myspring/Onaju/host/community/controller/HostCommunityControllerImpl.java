package com.myspring.Onaju.host.community.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Onaju.common.base.BaseController;
import com.myspring.Onaju.host.community.service.HostCommunityService;
import com.myspring.Onaju.host.community.vo.HostCommunityVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;
import com.myspring.Onaju.host.vo.HostVO;

@Controller("hostCommunityController")
@RequestMapping(value = "/host/community")
public class HostCommunityControllerImpl extends BaseController implements HostCommunityController {
	private static String CURR_IMAGE_REPO_PATH_COMMUNITY = "C:\\onaju\\host_community_image";
	@Autowired
	private HostCommunityVO hostCommunityVO;
	@Autowired
	private HostCommunityService hostCommunityService;

	/* 커뮤니티 글 등록시 첫번째 사업장 정보 나오는 페이지 */
	@RequestMapping(value = "/cmnAticleForm1.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView cmnAticleForm1(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);

		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("h_id : " + h_id);

		List<HostCommunityVO> hostCommunityList = (List<HostCommunityVO>) hostCommunityService
				.selectCommunityList(h_id);
		mav.addObject("hostCommunityList", hostCommunityList);
		System.out.println("hostCommunityList####### " + hostCommunityList);
		return mav;

	}

	/* 커뮤니티 글 등록시 두번째 객실번호에 대한 정보 나오는 페이지 */
	@RequestMapping(value = "/cmnAticleForm2.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView cmnAticleForm2(@RequestParam("room_code") int room_code, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		HttpSession session = request.getSession();
		Map goodsMap = hostCommunityService.selectCommunityView(room_code);
		mav.addObject("goodsMap", goodsMap);
		System.out.println("goodsMap #####: " + goodsMap);
		String h_code = (String) request.getAttribute("h_code");

		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("h_id : " + h_id);

		return mav;
	}

	/* 커뮤니티 글 등록시 디비 보내는 거 */

	@Override
	@RequestMapping(value = "/addNewCommunity.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ResponseEntity addNewCommunity(@ModelAttribute("hostCommunityVO") HostCommunityVO hostCommunityVO,
			MultipartHttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("컨트롤러 진입");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		String h_id = hostVO.getH_id();
		hostCommunityVO.setH_id(h_id);
		
		// 이미지 업로드
		String roomCode = request.getParameter("room_code");
		MultipartFile image = request.getFile("cmnImage");

		String originFileName = image.getOriginalFilename(); // 원본 파일 명
		long fileSize = image.getSize(); // 파일 사이즈
		hostCommunityVO.setCmn_image(originFileName);
		System.out.println("originFileName : " + originFileName);

		File file = new File(CURR_IMAGE_REPO_PATH_COMMUNITY + "\\" + roomCode + "\\" + originFileName);
		if (image.getSize() != 0) { // File Null Check
			if (!file.exists()) {
				if (file.mkdirs()) {
					file.createNewFile();
				}
			}
			image.transferTo(new File(CURR_IMAGE_REPO_PATH_COMMUNITY + "\\" + roomCode + "\\" + originFileName));
		}
//이미지 업로드 끝	

		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		try {
			hostCommunityService.addNewCommunity(hostCommunityVO);
			message = "<script>";
			message += " alert('커뮤니티 게시글 디비 저장 완료');";
			message += " location.href='" + request.getContextPath() + "/host/community/hostAllCommunityList.do';";
			message += " </script>";

		} catch (Exception e) {
			message = "<script>";
			message += " alert('커뮤니티 게시글 디비 등록 실패');";
			message += " location.href='" + request.getContextPath() + "/host/main.do';";
			message += " </script>";
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}

	/* 커뮤니티 리스트 목록 나오는 페이지 */
	@Override
	@RequestMapping(value = "/hostAllCommunityList.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView hostAllCommunityList(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		System.out.println("컨트롤러 viewName : " + viewName);

		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("hostVO의 h_id : " + h_id);

		List<HostCommunityVO> hostAllCommunityList = hostCommunityService.hostAllCommunityList(h_id);
		mav.addObject("hostAllCommunityList", hostAllCommunityList);
		System.out.println("hostAllCommunityList####### " + hostAllCommunityList);
		return mav;
	}

	/* 게시글 클릭하면 보여지는 완성 화면 */

	@Override
	@RequestMapping(value = "/confirmCmnAticle.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView confirmCmnAticle(@RequestParam("cmnNum") int cmnNum, @RequestParam("room_code") int room_code,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("h_id : " + h_id);

		hostCommunityVO = hostCommunityService.modCommunity(cmnNum);
		System.out.println("커뮤니티 글 modCommunity :" + hostCommunityVO);
		mav.addObject("hostCommunityVO", hostCommunityVO);
		Map goodsMap = hostCommunityService.selectCommunityView(room_code);
		mav.addObject("goodsMap", goodsMap);

		return mav;
	}

	@Override
	@RequestMapping("/download2")
	public void download2(@RequestParam("fileName") String fileName, @RequestParam("room_code") int room_code,
			HttpServletResponse response) throws Exception {
		// 이미지
		OutputStream out = response.getOutputStream();
		String filePath2 = CURR_IMAGE_REPO_PATH_COMMUNITY + "\\" + room_code + "\\" + fileName;

		File image = new File(filePath2);

		response.setHeader("Cache-Control", "no-cache");
		response.addHeader("Content-disposition", "attachment; fileName=" + fileName);
		FileInputStream in = new FileInputStream(image);
		byte[] buffer = new byte[1024 * 8];
		while (true) {
			int count = in.read(buffer);
			if (count == -1)
				break;
			out.write(buffer, 0, count);
		}
		in.close();
		out.close();
	}
	// 이미지끝

	/* 수정 할 화면 */
	
	@Override
	@RequestMapping(value = "/modCmnAticleForm.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView modCmnAticleForm(@RequestParam("cmnNum") int cmnNum, @RequestParam("room_code") int room_code,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("h_id : " + h_id);

		hostCommunityVO = hostCommunityService.modCommunity(cmnNum);
		System.out.println("커뮤니티 글 modCommunity :" + hostCommunityVO);
		mav.addObject("hostCommunityVO", hostCommunityVO);
		Map goodsMap = hostCommunityService.selectCommunityView(room_code);
		mav.addObject("goodsMap", goodsMap);

		return mav;
	}
		
	/* 수정 디비 저장 화면 */	
	@RequestMapping(value = "/modingCmnAticleForm.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView modingCmnAticleForm(@RequestParam("room_code") int room_code, @RequestParam("cmnNum") int cmnNum,
			MultipartHttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("h_id : " + h_id);
		
		

		
		// 이미지 업로드
				String src = request.getParameter("src");
				String roomCode = request.getParameter("room_code");
				MultipartFile image =  request.getFile("cmnImage");
				
				
				String originFileName = image.getOriginalFilename(); // 원본 파일 명
				long fileSize = image.getSize(); // 파일 사이즈
				hostCommunityVO.setCmn_image(originFileName);
				System.out.println("originFileName : " + originFileName);
				
				//폴더 안의 파일 삭제
				String path=CURR_IMAGE_REPO_PATH_COMMUNITY ;
				File folder = new File(path);
				    if (folder.exists()) {
				  	  FileUtils.cleanDirectory(folder);//하위 폴더와 파일 모두 삭제
				  	  //isDirectory()경로에 있는 객체가 folder이면 true아니면 false
				    if (folder.isDirectory()) {
				      folder.delete(); // 대상폴더 삭제
				      System.out.println(folder + "폴더가 삭제되었습니다.");
				    }
				    }else {
				    	System.out.println("대실패");
				    }
				
				File file = new File(CURR_IMAGE_REPO_PATH_COMMUNITY + "\\" + roomCode + "\\" + originFileName);
					if (image.getSize() != 0) { // File Null Check
						if (!file.exists()) {
							if (file.mkdirs()) {
								file.createNewFile();
							}
						}
						image.transferTo(new File(CURR_IMAGE_REPO_PATH_COMMUNITY + "\\" + roomCode + "\\" + originFileName));
					}
				      
				// 이미지 업로드 끝
					String bigTitle = request.getParameter("bigTitle");
					String smallTitle = request.getParameter("smallTitle");
					String content = request.getParameter("content");
					hostCommunityVO.setBigTitle(bigTitle);
					hostCommunityVO.setSmallTitle(smallTitle);
					hostCommunityVO.setContent(content);
				String message = null;

				try {
					hostCommunityService.updateHostCommunity(hostCommunityVO);
					message = "<script>";
					message += " alert('커뮤니티 게시글 디비 저장 완료');";
					message += " location.href='" + request.getContextPath() + "/host/community/confirmCmnAticle.do';";
					message += " </script>";

				} catch (Exception e) {
					message = "<script>";
					message += " alert('커뮤니티 게시글 디비 등록 실패');";
					message += " location.href='" + request.getContextPath() + "/host/main.do';";
					message += " </script>";
					e.printStackTrace();
				}
				mav.addObject("message", message);
				mav.setViewName("forward:/host/community/hostAllCommunityList.do");
				return mav;
			}
	/* 게시글 삭제 */
	@RequestMapping(value = "/deleteHostCommunity.do",  method = { RequestMethod.GET, RequestMethod.POST })
	public ResponseEntity deleteHostCommunity(@RequestParam("cmnNum") int cmnNum, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		HttpSession session = request.getSession();
		HostVO hostVO = (HostVO) session.getAttribute("hostInfo");
		System.out.println("hostVO의 VO : " + hostVO);
		String h_id = hostVO.getH_id();
		System.out.println("h_id : " + h_id);
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		try {
			hostCommunityService.deleteHostCommunity(cmnNum);
			message = "<script>";
			message += " alert('커뮤니티 게시글 삭제 완료');";
			message += " location.href='" + request.getContextPath() + "/host/community/hostAllCommunityList.do';";
			message += " </script>";

		} catch (Exception e) {
			message = "<script>";
			message += " alert('커뮤니티 게시글 삭제 실패');";
			message += " location.href='" + request.getContextPath() + "/host/community/hostAllCommunityList.do';";
			message += " </script>";
			e.printStackTrace();
		}
		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	@Override
	@RequestMapping(value = "/addLike.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView addLike(@RequestBody Map<String, String> map, HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String _like_state = (String)map.get("like_state");  // 0 삭제 1 등록
		String room_code = (String)map.get("room_code");  // 객실 번호
		String like_yn = (String)map.get("like_yn");  //true or false 기존에 좋아요 유무


		
		
		HttpSession session = request.getSession();
		session = request.getSession();
		ModelAndView mav = new ModelAndView();
		return mav;
	
	}
}