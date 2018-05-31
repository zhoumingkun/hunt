package com.hunt.controller.frontend;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.model.entity.Proclamation;
import com.hunt.service.ProclamationService;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;

/**
 * 公告控制器
 * @author YAO
 *
 */
@Controller
@RequestMapping("proclamation")
public class ProclamationController{

	@Autowired
	private ProclamationService proclamationService;

	/**
	 * 新增
	 * 
	 * @param proclamation
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public Result save(Proclamation proclamation) {
		try {
			proclamationService.save(proclamation);
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
			proclamationService.delete(id);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	/**
	 * 更新
	 * 
	 * @param proclamation
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public Result update(Proclamation proclamation) {
		try {
			proclamationService.update(proclamation);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	/**
	 * 查询全部
	 * 
	 * @param List<Proclamation>
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "findAll", method = RequestMethod.POST)
	public List<Proclamation> findAll() {
		return proclamationService.findAll();
	}
}
