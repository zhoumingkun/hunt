package com.hunt.controller.frontend;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.frontend.service.NewsService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.News;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;

import io.swagger.annotations.ApiOperation;

/**
 * 新闻控制器
 * @author YAO
 *
 */
@Controller
@RequestMapping("frontend/news")
public class NewsController{

	@Autowired
	private NewsService newsService;

	/**
	 * 新增
	 * 
	 * @param News
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public Result save(News news) {
		try {
			newsService.save(news);
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
			newsService.delete(id);
			return Result.success();
		} catch (Exception e) {
			e.printStackTrace();
			return Result.error(ResponseCode.error.getMsg());
		}
	}

	/**
	 * 更新
	 * 
	 * @param News
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public Result update(News news) {
		try {
			newsService.update(news);
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
	public List<News> findAll() {
		return newsService.findAll();
	}
	
	
	/**
	 * 根据ID查询
	 * 
	 * @param List<Policy>
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "findById", method = RequestMethod.POST)
	public News findById(int id) {
		return newsService.findById(id);
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
		PageInfo pageInfo = newsService.findPage(page,state,state2);
		return pageInfo;
	}
}
