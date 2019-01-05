package net.e4net.s1.shop.web;

import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpSession;

import net.e4net.eiwaf.common.Status;
import net.e4net.eiwaf.service.resource.RequestProperty;
import net.e4net.eiwaf.web.RequestContext;
import net.e4net.eiwaf.web.handler.RuntimeRequestContext;
import net.e4net.eiwaf.web.util.WebUtil;
import net.e4net.s1.comn.LoginController;
import net.e4net.s1.comn.PublicController;
import net.e4net.s1.comn.TestUserEtt;
import net.e4net.s1.main.service.MainService;
import net.e4net.s1.main.vo.RegisterDVO;
import net.e4net.s1.shop.service.ShopService;
import net.e4net.s1.shop.vo.goodsRegisterDVO;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;


@RequestProperty(title = "shop", layout = "empty")
@Controller

public class SellerController extends PublicController{
	private static final long serialVersionUID = 2525244630168443366L;

	@Resource(name = "ShopService")
	private ShopService shopService;

	/**
	 * 임시!!!!!!!!!! 나중에 sellerCont로 옮겨야 함.
	 * @param request
	 * @param requestContext
	 * @return
	 * @throws Exception
	 */
	@RequestProperty(title = "seller main")
	@RequestMapping("/seller/main.do")
	public ModelAndView sellerMainForm(HttpServletRequest request,
			RequestContext requestContext) throws Exception {
		ModelAndView mav = new ModelAndView("shop/seller");
		
		mav.setViewName("shop/seller");
		
		Status status = WebUtil.getAttributeStatus(request);
		if (status.isOk()) {
			return getOkModelAndView(mav,status);
		} else {
			return getFailModelAndView(mav, status);
		}
	}
	
	/**
	 * 임시!!!!!!!!!! 나중에 sellerCont로 옮겨야 함.
	 * 상품등록 Form
	 * @param request
	 * @param requestContext
	 * @return
	 * @throws Exception
	 */
	@RequestProperty(title = "상품등록화면")
	@RequestMapping("/seller/goodsRegisterForm.do")
	public ModelAndView goodsRegisterForm(HttpServletRequest request,
			RequestContext requestContext) throws Exception {
		ModelAndView mav = new ModelAndView("shop/goodsRegister");
		
		mav.setViewName("shop/goodsRegister");
		
		Status status = WebUtil.getAttributeStatus(request);
		if (status.isOk()) {
			return getOkModelAndView(mav,status);
		} else {
			return getFailModelAndView(mav, status);
		}
	}
	
	/**
	 * 상품등록 Action
	 * @param request
	 * @param requestContext
	 * @return
	 * @throws Exception
	 */
	@RequestProperty(title = "상품등록")
	@RequestMapping("/seller/goodsRegister.do")
	public ModelAndView goodsRegister(HttpServletRequest request,
			RuntimeRequestContext requestContext,
			@ModelAttribute("goodsRegisterDVO") goodsRegisterDVO gdsRegisterDVO) throws Exception {

		ModelAndView mav = new ModelAndView("jsonView");
		
//		request.getSession().setAttribute("sessionID", );
		shopService.registerGoods(gdsRegisterDVO);
		
		return getOkModelAndView(mav);
	}
	
	@RequestProperty(title = "shop main")
	@RequestMapping("/shop/shopmain.do")
	public ModelAndView shopMainForm(HttpServletRequest request,
			RequestContext requestContext) throws Exception {
		ModelAndView mav = new ModelAndView("shop/shop");
		
		mav.setViewName("shop/shop");
		
		Status status = WebUtil.getAttributeStatus(request);
		if (status.isOk()) {
			return getOkModelAndView(mav,status);
		} else {
			return getFailModelAndView(mav, status);
		}
	}
	
	@RequestProperty(title = "cart")
	@RequestMapping("/shop/cart.do")
	public ModelAndView cart(HttpServletRequest request,
			RequestContext requestContext) throws Exception {
		ModelAndView mav = new ModelAndView("shop/cart");
		
		mav.setViewName("shop/cart");
		
		Status status = WebUtil.getAttributeStatus(request);
		if (status.isOk()) {
			return getOkModelAndView(mav,status);
		} else {
			return getFailModelAndView(mav, status);
		}
	}
}
