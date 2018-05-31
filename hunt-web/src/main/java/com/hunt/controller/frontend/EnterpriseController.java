package com.hunt.controller.frontend;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.model.entity.Enterprise;
import com.hunt.service.EnterpriseService;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;

/**
 * 企业控制器
 * @author YAO
 *
 */
@Controller
@RequestMapping("frontend/enterprise")
public class EnterpriseController {
	
	@Autowired
	private EnterpriseService enterpriseService;

	/**
	 * 新增
	 * 
	 * @param enterprise
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public Result save(Enterprise enterprise) {
		try {
			enterpriseService.save(enterprise);
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
			enterpriseService.delete(id);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	/**
	 * 更新
	 * 
	 * @param enterprise
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public Result update(Enterprise enterprise) {
		try {
			enterpriseService.update(enterprise);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	/**
	 * 查询全部
	 * 
	 * @param List<enterprise>
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "findAll", method = RequestMethod.POST)
	public List<Enterprise> findAll() {
		return enterpriseService.findAll();
	}
}
