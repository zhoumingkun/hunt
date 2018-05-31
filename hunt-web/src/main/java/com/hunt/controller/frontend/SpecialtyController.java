package com.hunt.controller.frontend;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.frontend.service.SpecialtyService;
import com.hunt.model.entity.Specialty;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;

import io.swagger.annotations.ApiOperation;

/**
 * 特产控制器
 * @author YAO
 *
 */
@Controller
@RequestMapping("frontend/specialty")
public class SpecialtyController{

	@Autowired
	private SpecialtyService specialtyService;

	
	/**
	 * 新增
	 * 
	 * @param specialty
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public Result save(Specialty specialty) {
		try {
			specialtyService.save(specialty);
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
			specialtyService.delete(id);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	/**
	 * 更新
	 * 
	 * @param specialty
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public Result update(Specialty specialty) {
		try {
			specialtyService.update(specialty);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	/**
	 * 查询全部
	 * 
	 * @param List<Specialty>
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "findAll", method = RequestMethod.POST)
	public List<Specialty> findAll() {
		return specialtyService.findAll();
	}
}
