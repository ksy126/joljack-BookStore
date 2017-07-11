package cmd.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * 메인 컨트롤러
 */
@Controller("main")
@RequestMapping("/main")
public class MainController {

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
		
		mav.addObject("pageName", "main");
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

		ModelAndView mav = new ModelAndView("service/main/notice");
		mav.addObject("pageName", "notice");
		return mav;
	}

}
