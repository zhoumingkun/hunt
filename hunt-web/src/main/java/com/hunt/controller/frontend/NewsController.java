package com.hunt.controller.frontend;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hunt.model.entity.News;
import com.hunt.service.NewsService;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;

import io.swagger.annotations.ApiOperation;

/**
 * 新闻控制器
 * @author YAO
 *
 */
@Controller
@RequestMapping("news")
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
}
