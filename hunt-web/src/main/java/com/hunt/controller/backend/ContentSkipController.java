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
    
    /**
     * 政策管理页面跳转
     *
     * @return
     */
    @ApiOperation(value = "跳转至政策管理模块", httpMethod = "GET", produces = "text/html")
//    @RequiresPermissions("news:list")
    @RequestMapping(value = "policy", method = RequestMethod.GET)
    public String policy() {
        return "backend/content/policy";
    }
    
    /**
     * 活动管理页面跳转
     *
     * @return
     */
    @ApiOperation(value = "跳转至活动管理模块", httpMethod = "GET", produces = "text/html")
//    @RequiresPermissions("news:list")
    @RequestMapping(value = "activity", method = RequestMethod.GET)
    public String activity() {
        return "backend/content/activity";
    }
    
    /**
     * 公告管理页面跳转
     *
     * @return
     */
    @ApiOperation(value = "跳转至公告管理模块", httpMethod = "GET", produces = "text/html")
//    @RequiresPermissions("news:list")
    @RequestMapping(value = "proclamation", method = RequestMethod.GET)
    public String proclamation() {
        return "backend/content/proclamation";
    }
    
    /**
     * 概况管理页面跳转
     *
     * @return
     */
    @ApiOperation(value = "跳转至概况管理模块", httpMethod = "GET", produces = "text/html")
//    @RequiresPermissions("news:list")
    @RequestMapping(value = "summarize", method = RequestMethod.GET)
    public String summarize() {
        return "backend/content/summarize";
    }
    
    /**
     * 文化管理页面跳转
     *
     * @return
     */
    @ApiOperation(value = "跳转至文化管理模块", httpMethod = "GET", produces = "text/html")
//    @RequiresPermissions("news:list")
    @RequestMapping(value = "culture", method = RequestMethod.GET)
    public String culture() {
        return "backend/content/culture";
    }
    
    /**
     * 特产管理页面跳转
     *
     * @return
     */
    @ApiOperation(value = "跳转至特产管理模块", httpMethod = "GET", produces = "text/html")
//    @RequiresPermissions("news:list")
    @RequestMapping(value = "specialty", method = RequestMethod.GET)
    public String specialty() {
        return "backend/content/specialty";
    }
    
    /**
     * 旅游管理页面跳转
     *
     * @return
     */
    @ApiOperation(value = "跳转至旅游管理模块", httpMethod = "GET", produces = "text/html")
//    @RequiresPermissions("news:list")
    @RequestMapping(value = "travel", method = RequestMethod.GET)
    public String travel() {
        return "backend/content/travel";
    }
    
    /**
     * 项目管理页面跳转
     *
     * @return
     */
    @ApiOperation(value = "跳转至项目管理模块", httpMethod = "GET", produces = "text/html")
//    @RequiresPermissions("news:list")
    @RequestMapping(value = "project", method = RequestMethod.GET)
    public String project() {
        return "backend/content/project";
    }
    
    /**
     * 企业管理页面跳转
     *
     * @return
     */
    @ApiOperation(value = "跳转至企业管理模块", httpMethod = "GET", produces = "text/html")
//    @RequiresPermissions("news:list")
    @RequestMapping(value = "enterprise", method = RequestMethod.GET)
    public String enterprise() {
        return "backend/content/enterprise";
    }
    
    /**
     * 指南管理页面跳转
     *
     * @return
     */
    @ApiOperation(value = "跳转至指南管理模块", httpMethod = "GET", produces = "text/html")
//    @RequiresPermissions("news:list")
    @RequestMapping(value = "guide", method = RequestMethod.GET)
    public String guide() {
        return "backend/content/guide";
    }
}
