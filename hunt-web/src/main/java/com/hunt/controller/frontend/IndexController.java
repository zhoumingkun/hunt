package com.hunt.controller.frontend;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.druid.util.StringUtils;

import io.swagger.annotations.ApiOperation;

/**
 * 首页控制器
 * @author BOBO
 *
 */
@Controller
@RequestMapping("/frontend")
public class IndexController {
	
	@RequestMapping(value = "/{module}/{page}")
	public ModelAndView page(@PathVariable String module, @PathVariable String page, HttpServletRequest request) throws UnsupportedEncodingException {	
		ModelAndView mv;
		if(page.equals("details")) {
			mv = new ModelAndView("frontend/details/details");
			mv.addObject("module", module);
			if (!StringUtils.isEmpty(request.getParameter("id"))) {
				mv.addObject("id", request.getParameter("id"));
			}
			if (!StringUtils.isEmpty(request.getParameter("type"))) {
				mv.addObject("type", request.getParameter("type"));
			}
		} else {
			mv = new ModelAndView("frontend/" + module + "/" + page);
			mv.addObject("module", module);
			if (!StringUtils.isEmpty(request.getParameter("ids"))) {
				mv.addObject("ids", request.getParameter("ids"));
			}
			if (!StringUtils.isEmpty(request.getParameter("type"))) {
				mv.addObject("type", request.getParameter("type"));
			}
			if (!StringUtils.isEmpty(request.getParameter("projectName"))) {
				mv.addObject("projectName", URLDecoder.decode(request.getParameter("projectName"),"UTF-8"));
			}
		}
		return mv;
	}
	
	
	/*@RequestMapping(value = "/{module}/{page}/ById")
	public ModelAndView view(@PathVariable String module, @PathVariable String page, HttpServletRequest request) {	
		ModelAndView mv;
		if(page.equals("details")) {
			mv = new ModelAndView("frontend/details/details");
			mv.addObject("module", module);
			if (!StringUtils.isEmpty(request.getParameter("id"))) {
				mv.addObject("id", request.getParameter("id"));
			}
		} else {
			mv = new ModelAndView("frontend/" + module + "/" + page);
			mv.addObject("module", module);
			if (!StringUtils.isEmpty(request.getParameter("ids"))) {
				System.out.println("ids--------------------------------------"+request.getParameter("ids"));
				mv.addObject("ids", request.getParameter("ids"));
			}
		}
		return mv;
	}*/
	
	@RequestMapping(value = "/index")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView("frontend/index");
		mv.addObject("module","index");
		return mv;
	}
	/**
	 * 首页跳转
	 * @return
	 */
//    @ApiOperation(value = "跳转至首页", httpMethod = "GET", produces = "text/html")
//    @RequestMapping(value = "index")
//    public String index() {
//        return "frontend/index";
//    }
//    
//    /**
//	 * 走进娄烦
//	 * @return
//	 */
//    @ApiOperation(value = "跳转至走进娄烦", httpMethod = "GET", produces = "text/html")
//    @RequestMapping(value = "summarize", method = RequestMethod.GET)
//    public String summarize() {
//        return "frontend/resources/common";
//    }
//	    
//    /**
//   	 * 招商政策
//   	 * @return
//   	 */
//    @ApiOperation(value = "跳转至招商政策", httpMethod = "GET", produces = "text/html")
//    @RequestMapping(value = "policy", method = RequestMethod.GET)
//    public String policy() {
//    	return "frontend/policy/policy";
//	}
//    
//    /**
//   	 * 招商项目
//   	 * @return
//   	 */
//    @ApiOperation(value = "跳转至招商项目", httpMethod = "GET", produces = "text/html")
//    @RequestMapping(value = "project", method = RequestMethod.GET)
//    public String project() {
//    	return "frontend/project/project";
//	}
//    
//    /**
//   	 * 招商项目
//   	 * @return
//   	 */
//    @ApiOperation(value = "跳转至招商活动", httpMethod = "GET", produces = "text/html")
//    @RequestMapping(value = "activity", method = RequestMethod.GET)
//    public String activity() {
//    	return "frontend/investmentActivities/investmentActivities";
//	}
//    
//    /**
//   	 * 新闻动态
//   	 * @return
//   	 */
//    @ApiOperation(value = "跳转至新闻动态", httpMethod = "GET", produces = "text/html")
//    @RequestMapping(value = "news", method = RequestMethod.GET)
//    public String news() {
//    	return "frontend/newsInformation/newsInformation";
//	}
//    
//    /**
//   	 * 企业展示
//   	 * @return
//   	 */
//    @ApiOperation(value = "跳转至企业展示", httpMethod = "GET", produces = "text/html")
//    @RequestMapping(value = "enterprise", method = RequestMethod.GET)
//    public String enterprise() {
//    	return "frontend/enterpriseDisplay/enterpriseDisplay";
//	}
//    
//    /**
//   	 * 投资指南
//   	 * @return
//   	 */
//    @ApiOperation(value = "跳转至投资指南", httpMethod = "GET", produces = "text/html")
//    @RequestMapping(value = "guide", method = RequestMethod.GET)
//    public String guide() {
//    	return "frontend/investmentGuide/investmentGuide";
//	}
//    
//    /**
//   	 * 联系我们
//   	 * @return
//   	 */
//    @ApiOperation(value = "跳转至联系我们", httpMethod = "GET", produces = "text/html")
//    @RequestMapping(value = "contactUs", method = RequestMethod.GET)
//    public String contactUs() {
//    	return "frontend/contactUs/contactUs";
//	}
}
