package com.hunt.controller.frontend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.swagger.annotations.ApiOperation;

/**
 * 首页控制器
 * @author BOBO
 *
 */
@Controller
@RequestMapping("frontend/index")
public class IndexController {
	/**
	 * 首页跳转
	 * @return
	 */
    @ApiOperation(value = "跳转至首页", httpMethod = "GET", produces = "text/html")
    @RequestMapping(value = "welcome", method = RequestMethod.GET)
    public String index() {
        return "frontend/index";
    }
}
