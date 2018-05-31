package com.hunt.controller.frontend;
/**
 * 
 *summarize实现类
 * @Author: zmk
 * @Date : 2018/5/30
 */
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.frontend.service.SummarizeService;
import com.hunt.model.entity.Summarize;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;

/**
 * 
 *概况控制器
 * @Author: zmk
 * @Date : 2018/5/30
 */


@Controller
@RequestMapping("frontend/summarize")
public class SummarizeController {
	@Autowired
	private SummarizeService summarizeService;
	
	@ResponseBody
    @RequestMapping(value = "save", method = RequestMethod.POST)
	public Result save(Summarize summarize) {
		try {
			summarizeService.save(summarize);
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
			summarizeService.deleteById(id);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}
	
	@ResponseBody
    @RequestMapping(value = "update", method = RequestMethod.POST)
    public Result update(Summarize summarize) {
		try {
			summarizeService.update(summarize);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}
	
	 @ResponseBody
	 @RequestMapping(value = "findById", method = RequestMethod.GET)
	 public Summarize findById(int id) {
		 return summarizeService.findById(id);
	 }
	 
	 @ResponseBody
	 @RequestMapping(value = "findAll", method = RequestMethod.GET)
	 public List<Summarize> findAll() {
	        List<Summarize> list = summarizeService.findAll();
	        return list;
	    }

}
