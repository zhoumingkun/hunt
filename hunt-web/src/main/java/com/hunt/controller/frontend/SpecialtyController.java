package com.hunt.controller.frontend;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hunt.controller.util.UploadUtil;
import com.hunt.frontend.service.SpecialtyService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Enterprise;
import com.hunt.model.entity.Specialty;
import com.hunt.util.ResponseCode;
import com.hunt.util.Result;


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
	public Result save(Specialty specialty,MultipartFile file,HttpSession session) {
		try {
			if (UploadUtil.isPicture(file.getOriginalFilename())) {
				// 重命名文件
				String newName = UploadUtil.rename(file.getOriginalFilename());
				// 获取存储路径
				String absolutePath = UploadUtil.getAbsolutePath("image/specialty", session);
				String relativePath = UploadUtil.getRelativePath("image/specialty", session);
				File uploadDir = new File(absolutePath);
				if(!uploadDir.exists()) {
					uploadDir.mkdirs();
				}
				// 先上传文件（绝对路径）
				File targetFile = new File(absolutePath + "/" + newName);
				file.transferTo(targetFile);
				// 保留相对路径的文件信息
				specialty.setImage(relativePath + "/" + newName);
			}
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
	 * 更新
	 * 
	 * @param specialty
	 * @return Result
	 */
	@ResponseBody
	@RequestMapping(value = "updateFile", method = RequestMethod.POST)
	public Result updateFile(Specialty specialty,MultipartFile file,HttpSession session) {
		try {
			if (UploadUtil.isPicture(file.getOriginalFilename())) {
				// 重命名文件
				String newName = UploadUtil.rename(file.getOriginalFilename());
				// 获取存储路径
				String absolutePath = UploadUtil.getAbsolutePath("image/specialty", session);
				String relativePath = UploadUtil.getRelativePath("image/specialty", session);
				File uploadDir = new File(absolutePath);
				if(!uploadDir.exists()) {
					uploadDir.mkdirs();
				}
				// 先上传文件（绝对路径）
				File targetFile = new File(absolutePath + "/" + newName);
				file.transferTo(targetFile);
				// 保留相对路径的文件信息
				specialty.setImage(relativePath + "/" + newName);
			}
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
	
	/**
	 * 分页查询 --前台
	 * 
	 * @param  page 当前页  
	 * @return pageInfo
	 */
	@ResponseBody
	@RequestMapping(value = "data", method = RequestMethod.GET)
	public PageInfo findPage(@RequestParam(value = "current_page") int page) {
		PageInfo pageInfo = specialtyService.findPage(page);
		return pageInfo;
	}
	
	 @ResponseBody
	 @RequestMapping(value = "findById", method = RequestMethod.POST)
	 public Specialty findById(int id) {
		 return specialtyService.findById(id);
	 }
}
