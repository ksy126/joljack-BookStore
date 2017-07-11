package cmd.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * MemberController
 */
@Controller("member")
@RequestMapping("/member")
public class MemberController {

	/**
	 * 로그인 페이지 이동
	 * 
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, @RequestParam Map<String, Object> map) throws Exception {

		ModelAndView mav = new ModelAndView("service/member/login");
		return mav;
	}

}
