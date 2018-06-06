package com.hunt.controller.frontend;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.frontend.service.GuideService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Guide;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;
/**
 * 
 *服务指南控制器
 * @Author: zmk
 * @Date : 2018/5/30
 */



@Controller
@RequestMapping("frontend/guide")
public class GuideController {
	@Autowired
	private GuideService guideService;
	
	@ResponseBody
    @RequestMapping(value = "save", method = RequestMethod.POST)
	public Result save(Guide guide) {
		try {
			guideService.save(guide);
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
			guideService.deleteById(id);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}
	
	@ResponseBody
    @RequestMapping(value = "update", method = RequestMethod.POST)
    public Result update(Guide guide) {
		try {
			guideService.update(guide);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}
	
	 @ResponseBody
	 @RequestMapping(value = "findById", method = RequestMethod.POST)
	 public Guide findById(int id) {
		 return guideService.findById(id);
	 }
	 
	 @ResponseBody
	 @RequestMapping(value = "findAll", method = RequestMethod.GET)
	 public List<Guide> findAll() {
	        List<Guide> list = guideService.findAll();
	        return list;
	    }

	 /**
	 * 分页查询 --前台
	 * 
	 * @param  page 当前页  state 状态
	 * @return pageInfo
	 */
	@ResponseBody
	@RequestMapping(value = "data", method = RequestMethod.GET)
	public PageInfo findPage(@RequestParam(value = "current_page") int page) {
		PageInfo pageInfo = guideService.findPage(page);
		return pageInfo;
	}
}
