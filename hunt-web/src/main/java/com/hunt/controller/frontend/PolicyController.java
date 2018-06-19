package com.hunt.controller.frontend;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.frontend.service.PolicyService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Policy;
import com.hunt.model.entity.Project;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;

import io.swagger.annotations.ApiOperation;

/**
 * 招商政策控制器
 * @author YAO
 *
 */
@Controller
@RequestMapping("frontend/policy")
public class PolicyController{

	@Autowired
	private PolicyService policyService;

	
	/**
	 * 新增
	 * 
	 * @param policy
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public Result save(Policy policy) {
		try {
			policyService.save(policy);
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
			policyService.delete(id);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	/**
	 * 更新
	 * 
	 * @param policy
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public Result update(Policy policy) {
		try {
			policyService.update(policy);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	/**
	 * 查询全部
	 * 
	 * @param List<Policy>
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "findAll", method = RequestMethod.POST)
	public List<Policy> findAll() {
		return policyService.findAll();
	}
	
	/**
	 * 根据ID查询
	 * 
	 * @param List<Policy>
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "findById", method = RequestMethod.POST)
	public Policy findById(int id) {
		return policyService.findById(id);
	}
	
	/**
	 * 分页查询 --前台
	 * 
	 * @param page 当前页  state 状态
	 * @return PageInfo
	 */
	@ResponseBody
	@RequestMapping(value = "data", method = RequestMethod.GET)
	public PageInfo findPage(@RequestParam(value = "current_page") int page ,@RequestParam(value = "state") int state,@RequestParam(value = "state2") int state2) {
		PageInfo pageInfo = policyService.findPage(page,state,state2);
		return pageInfo;
	}
	/**
	 * 微信查询招商政策
	 * 
	 *
	 * 
	 */
	@ResponseBody
	@RequestMapping(value = "WX_findAll", method = RequestMethod.GET)
	public List<Policy> WX_findAll() {
		List<Policy> list = policyService.WX_findAll();
		return list;
	}
}
