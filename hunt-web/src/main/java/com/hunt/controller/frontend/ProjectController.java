package com.hunt.controller.frontend;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.frontend.service.ProjectService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Project;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;
/**
 * 
 *招商项目控制器
 * @Author: zmk
 * @Date : 2018/5/30
 */



@Controller
@RequestMapping("frontend/project")
public class ProjectController {
	@Autowired
	private ProjectService projectService;
	
	@ResponseBody
    @RequestMapping(value = "save", method = RequestMethod.POST)
	public Result save(Project project) {
		try {
			projectService.save(project);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}	
	@ResponseBody
    @RequestMapping(value = "deleteById", method = RequestMethod.POST)
    public Result deleteById(int id) {
		try {
			projectService.deleteById(id);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}	
	
	@ResponseBody
    @RequestMapping(value = "update", method = RequestMethod.POST)
    public Result update(Project project) {
		try {
			projectService.update(project);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}	
	
	 @ResponseBody
	 @RequestMapping(value = "findById", method = RequestMethod.POST)
	 public Project findById(int id) {
		 return projectService.findById(id);
	 }
	 
	 @ResponseBody
	 @RequestMapping(value = "findAll", method = RequestMethod.GET)
	 public List<Project> findAll() { 
	        List<Project> list = projectService.findAll();
	        return list;
	    }
	 
	 
	 /**
	 * 分页查询 --前台
	 * 
	 * @param  page 当前页  type 类型
	 * @return pageInfo
	 */
	@ResponseBody
	@RequestMapping(value = "data", method = RequestMethod.GET)
	public PageInfo findPage(HttpServletRequest request,@RequestParam(value = "current_page") int page ,@RequestParam(value = "state") int state,@RequestParam(value = "type") int type) {
			PageInfo pageInfo = projectService.findPage(page,state,type);
			return pageInfo;
	}

}
