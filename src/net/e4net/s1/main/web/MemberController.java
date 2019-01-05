package net.e4net.s1.main.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.e4net.eiwaf.service.resource.RequestProperty;
import net.e4net.eiwaf.web.handler.RuntimeRequestContext;
import net.e4net.s1.comn.LoginController;
import net.e4net.s1.main.vo.LoginDVO;
import net.e4net.s1.main.vo.LoginPVO;
import net.e4net.s1.main.vo.RegisterDVO;
import net.e4net.s1.member.service.MemberService;

/**
 * 멤버 컨트롤러.
 * 
 * @author E4NET
 * @version 1.0
 */
@RequestProperty(title = "member", layout = "main")
@Controller

public class MemberController extends LoginController {

	private static final long serialVersionUID = 2525244630168443366L;

	@Resource(name = "MemberService")
	private MemberService memberService;

	/**
	 * 로그인 후 마이페이지
	 * 
	 * @param request
	 * @param requestContext
	 * @return
	 * @throws Exception
	 */
	@RequestProperty(title = "마이페이지 화면")
	@RequestMapping("/member/myPageForm.do")
	public ModelAndView myPageForm(HttpServletRequest request, RuntimeRequestContext requestContext) throws Exception {

		ModelAndView mav = new ModelAndView("main/mypage");
		// WebHandlerUtil.setSessionOuterUserEntity(request, requestContext, null);

		return getOkModelAndView(mav);
	}

	@RequestProperty(title = "마이페이지 액션")
	@RequestMapping("/member/myPageAction.do")
	public ModelAndView myPageAction(HttpServletRequest request, RuntimeRequestContext requestContext,
			@ModelAttribute("loginPVO") LoginPVO loginPVO) throws Exception {

		ModelAndView mav = new ModelAndView("main/mypage");
		// mav.setViewName("main/mypage");

		RegisterDVO memInfo = memberService.selectLogin(loginPVO.getUser_id());

		if (memInfo != null) {
			memInfo.
			return getOkModelAndView(mav);
		} else {
			return getFailModelAndView(mav);
		}
	}

}
