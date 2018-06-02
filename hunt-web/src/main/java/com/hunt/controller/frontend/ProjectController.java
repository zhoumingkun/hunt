package com.hunt.controller.frontend;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.frontend.service.ProjectService;
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
	 @RequestMapping(value = "findById", method = RequestMethod.GET)
	 public Project findById(int id) {
		 return projectService.findById(id);
	 }
	 
	 @ResponseBody
	 @RequestMapping(value = "findAll", method = RequestMethod.GET)
	 public List<Project> findAll() { 
	        List<Project> list = projectService.findAll();
	        return list;
	    }
	 
	 

}
