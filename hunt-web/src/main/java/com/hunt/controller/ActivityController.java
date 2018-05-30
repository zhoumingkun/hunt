package com.hunt.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.model.entity.Activity;

import com.hunt.service.ActivityService;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;
/**
 * 
 *Activity控制器
 * @Author: zmk
 * @Date : 2018/5/30
 */
@Controller
@RequestMapping("/activity")
public class ActivityController {
	@Autowired
	private ActivityService activityService;
	
	@ResponseBody
    @RequestMapping(value = "save", method = RequestMethod.POST)
	public Result save(Activity activity) {
		try {
			activityService.save(activity);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	
	@ResponseBody
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public Result deleteById(int id) {
		try {
			activityService.deleteById(id);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}
	
	@ResponseBody
    @RequestMapping(value = "update", method = RequestMethod.POST)
    public Result update(Activity activity) {
		try {
			activityService.update(activity);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}
	
	 @ResponseBody
	 @RequestMapping(value = "findById", method = RequestMethod.GET)
	 public Activity findById(int id) {
		 return activityService.findById(id);
	 }
	 
	 @ResponseBody
	 @RequestMapping(value = "findAll", method = RequestMethod.GET)
	 public List<Activity> findAll() {
	        List<Activity> list = activityService.findAll();
	        return list;
	    }

}
