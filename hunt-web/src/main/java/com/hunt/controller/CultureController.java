package com.hunt.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.model.entity.Culture;
import com.hunt.service.CultureService;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;

import io.swagger.annotations.ApiOperation;

/**文化控制器
 * @author YAO
 *
 */
@Controller
@RequestMapping("culture")
public class CultureController{

	@Autowired
	private CultureService cultureService;

	
	/**
	 * 新增
	 * 
	 * @param culture
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public Result save(Culture culture) {
		try {
			cultureService.save(culture);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	/**
	 * 删除
	 * 
	 * @param id
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "delete", method = RequestMethod.POST)
	public Result delete(int id) {
		try {
			cultureService.delete(id);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	/**
	 * 更新
	 * 
	 * @param culture
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public Result update(Culture culture) {
		try {
			cultureService.update(culture);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	/**
	 * 查询全部
	 * 
	 * @param List<Culture>
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "findAll", method = RequestMethod.POST)
	public List<Culture> findAll() {
		return cultureService.findAll();
	}
}
