package com.hunt.controller.frontend;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hunt.controller.util.UploadUtil;
import com.hunt.frontend.service.EnterpriseService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Culture;
import com.hunt.model.entity.Enterprise;
import com.hunt.model.entity.Project;
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
	public Result save(Enterprise enterprise,MultipartFile file,HttpSession session) {
		try {
			if (UploadUtil.isPicture(file.getOriginalFilename())) {
				// 重命名文件
				String newName = UploadUtil.rename(file.getOriginalFilename());
				// 获取存储路径
				String absolutePath = UploadUtil.getAbsolutePath("image/enterprise", session);
				String relativePath = UploadUtil.getRelativePath("image/enterprise", session);
				File uploadDir = new File(absolutePath);
				if(!uploadDir.exists()) {
					uploadDir.mkdirs();
				}
				// 先上传文件（绝对路径）
				File targetFile = new File(absolutePath + "/" + newName);
				file.transferTo(targetFile);
				// 保留相对路径的文件信息
				enterprise.setImage(relativePath + "/" + newName);
			}
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
	 * 更新
	 * 
	 * @param enterprise
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "updateFile", method = RequestMethod.POST)
	public Result updateFile(Enterprise enterprise,MultipartFile file,HttpSession session) {
		try {
			if (UploadUtil.isPicture(file.getOriginalFilename())) {
				// 重命名文件
				String newName = UploadUtil.rename(file.getOriginalFilename());
				// 获取存储路径
				String absolutePath = UploadUtil.getAbsolutePath("image/enterprise", session);
				String relativePath = UploadUtil.getRelativePath("image/enterprise", session);
				File uploadDir = new File(absolutePath);
				if(!uploadDir.exists()) {
					uploadDir.mkdirs();
				}
				// 先上传文件（绝对路径）
				File targetFile = new File(absolutePath + "/" + newName);
				file.transferTo(targetFile);
				// 保留相对路径的文件信息
				enterprise.setImage(relativePath + "/" + newName);
			}
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
		if(trade.equals("") && trade.equals("全部")){
			trade = "";
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
	
	/**
	 *  微信端-查询全部发布企业 根 时间排序
	 * @return List<Project>
	 */
	@ResponseBody
	@RequestMapping(value = "WX_findAll", method = RequestMethod.GET)
	public List<Enterprise> WX_findAll(){
		List<Enterprise> list = enterpriseService.WX_findAll();
		return list;
	}
}
