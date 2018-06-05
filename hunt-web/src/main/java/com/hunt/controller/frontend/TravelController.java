package com.hunt.controller.frontend;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.frontend.service.TravelService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Travel;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;
/**
 * 
 *旅游控制器
 * @Author: zmk
 * @Date : 2018/5/30
 */



@Controller
@RequestMapping("frontend/travel")
public class TravelController {
	@Autowired
	private TravelService travelService;
	
	@ResponseBody
    @RequestMapping(value = "save", method = RequestMethod.POST)
	public Result save(Travel travel) {
		try {
			travelService.save(travel);
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
			travelService.deleteById(id);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}
	
	@ResponseBody
    @RequestMapping(value = "update", method = RequestMethod.POST)
    public Result update(Travel travel) {
		try {
			travelService.update(travel);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}
	
	
	/**
	 * 根据ID查询
	 * 
	 * @param  int id 
	 * @return Specialty
	 */
	 @ResponseBody
	 @RequestMapping(value = "findById", method = RequestMethod.POST)
	 public Travel findById(int id) {
		 return travelService.findById(id);
	 }
	 
	 @ResponseBody
	 @RequestMapping(value = "findAll", method = RequestMethod.GET)
	 public List<Travel> findAll() {
	        List<Travel> list = travelService.findAll();
	        return list;
	    }

	 /**
	 * 分页查询 --前台
	 * 
	 * @param  page 当前页  
	 * @return pageInfo
	 */
	@ResponseBody
	@RequestMapping(value = "data", method = RequestMethod.GET)
	public PageInfo findPage(@RequestParam(value = "current_page") int page) {
		PageInfo pageInfo = travelService.findPage(page);
		return pageInfo;
	}
}
