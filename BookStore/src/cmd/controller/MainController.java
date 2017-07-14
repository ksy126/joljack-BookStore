package cmd.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cmd.service.MainService;

/**
 * 메인 컨트롤러
 */
@Controller("main")
@RequestMapping("/main")
public class MainController {

	@Resource(name = "mainService")
	private MainService mainService;

	/**
	 * 메인 페이지 이동 type = 검색조건 (best) 페이징 po = 페이지 번호 / ps = 갯수
	 * 
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/main.do")
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response, @RequestParam Map<String, Object> pMap) throws Exception {
		ModelAndView mav = new ModelAndView("service/main/main");

		List<Object> noticeList;
		List<Object> qaList;

		// 공지사항 리스트
		pMap.put("po", 0);
		pMap.put("ps", 4);
		noticeList = mainService.noticeList(pMap);

		// 문의사항 리스트
		pMap.put("po", 0);
		pMap.put("ps", 4);
		qaList = mainService.qaList(pMap);

		mav.addObject("pageName", "main");
		mav.addObject("noticeList", noticeList);
		mav.addObject("qaList", qaList);

		return mav;
	}

	/**
	 * 쇼핑몰 공지 페이지 이동
	 * 
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/notice.do")
	public ModelAndView notice(HttpServletRequest request, HttpServletResponse response, @RequestParam(value = "po", required = false, defaultValue = "0") int po,
			@RequestParam Map<String, Object> pMap) throws Exception {
		// 기본 페이지 리스트 갯수
		int DefaultPs = 12;
		int poSet = po * DefaultPs;

		List<Object> noticeList;
		pMap.put("po", poSet);
		pMap.put("ps", DefaultPs);

		noticeList = mainService.noticeList(pMap);

		ModelAndView mav = new ModelAndView("service/main/notice");

		mav.addObject("pageName", "notice");
		mav.addObject("noticeList", noticeList);
		mav.addObject("po", po);
		return mav;
	}

	/**
	 * 쇼핑몰 문의하기 페이지 이동
	 * 
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/qa.do")
	public ModelAndView qa(HttpServletRequest request, HttpServletResponse response, @RequestParam(value = "po", required = false, defaultValue = "0") int po, @RequestParam Map<String, Object> pMap)
			throws Exception {
		// 기본 페이지 리스트 갯수
		int DefaultPs = 12;
		int poSet = po * DefaultPs;

		List<Object> qaList;
		pMap.put("po", poSet);
		pMap.put("ps", DefaultPs);

		qaList = mainService.qaList(pMap);

		ModelAndView mav = new ModelAndView("service/main/qa");
		mav.addObject("qaList", qaList);
		mav.addObject("po", po);
		return mav;
	}

}
