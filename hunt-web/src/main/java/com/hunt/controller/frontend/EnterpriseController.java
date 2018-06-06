package com.hunt.controller.frontend;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.frontend.service.EnterpriseService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Culture;
import com.hunt.model.entity.Enterprise;
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
	
	/**
	 * 分页查询 --前台
	 * 
	 * @param  page 当前页  state 状态
	 * @return pageInfo
	 * @throws UnsupportedEncodingException 
	 */
	@ResponseBody
	@RequestMapping(value = "data", method = RequestMethod.GET)
	public PageInfo findPage(HttpServletRequest request,@RequestParam(value = "current_page") int page ,@RequestParam(value = "state") int state) throws UnsupportedEncodingException{
		String trade = request.getParameter("trade");
		if(trade.equals("")){
			PageInfo pageInfo = enterpriseService.findPage(page,state,trade);
			return pageInfo;
		}else{
			trade = URLDecoder.decode(trade,"UTF-8");
			PageInfo pageInfo = enterpriseService.findPage(page,state,trade);
			return pageInfo;
		}
	}
	
	/**
	 * 根据ID查询
	 * 
	 * @param  int id 
	 * @return Enterprise
	 */
	@ResponseBody
	@RequestMapping(value = "findById", method = RequestMethod.POST)
	public Enterprise findById(int id) {
		return enterpriseService.findById(id);
	}
}
