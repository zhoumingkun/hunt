package com.hunt.controller.backend;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.swagger.annotations.ApiOperation;

/**
 * 内容管理页面跳转控制器
 * @author BOBO
 *
 */
@Controller
@RequestMapping("content")
public class ContentSkipController {
	
	/**
     * 新闻管理页面跳转
     *
     * @return
     */
    @ApiOperation(value = "跳转至新闻管理模块", httpMethod = "GET", produces = "text/html")
//    @RequiresPermissions("news:list")
    @RequestMapping(value = "news", method = RequestMethod.GET)
    public String news() {
        return "backend/content/news";
    }
}
