package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.XueshenghuazuoEntity;
import com.entity.view.XueshenghuazuoView;

import com.service.XueshenghuazuoService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 学生画作
 * 后端接口
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
@RestController
@RequestMapping("/xueshenghuazuo")
public class XueshenghuazuoController {
    @Autowired
    private XueshenghuazuoService xueshenghuazuoService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,XueshenghuazuoEntity xueshenghuazuo, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			xueshenghuazuo.setXuehao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<XueshenghuazuoEntity> ew = new EntityWrapper<XueshenghuazuoEntity>();


		PageUtils page = xueshenghuazuoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xueshenghuazuo), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,XueshenghuazuoEntity xueshenghuazuo, 
		HttpServletRequest request){
        EntityWrapper<XueshenghuazuoEntity> ew = new EntityWrapper<XueshenghuazuoEntity>();

		PageUtils page = xueshenghuazuoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xueshenghuazuo), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( XueshenghuazuoEntity xueshenghuazuo){
       	EntityWrapper<XueshenghuazuoEntity> ew = new EntityWrapper<XueshenghuazuoEntity>();
      	ew.allEq(MPUtil.allEQMapPre( xueshenghuazuo, "xueshenghuazuo")); 
        return R.ok().put("data", xueshenghuazuoService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(XueshenghuazuoEntity xueshenghuazuo){
        EntityWrapper< XueshenghuazuoEntity> ew = new EntityWrapper< XueshenghuazuoEntity>();
 		ew.allEq(MPUtil.allEQMapPre( xueshenghuazuo, "xueshenghuazuo")); 
		XueshenghuazuoView xueshenghuazuoView =  xueshenghuazuoService.selectView(ew);
		return R.ok("查询学生画作成功").put("data", xueshenghuazuoView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        XueshenghuazuoEntity xueshenghuazuo = xueshenghuazuoService.selectById(id);
        return R.ok().put("data", xueshenghuazuo);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        XueshenghuazuoEntity xueshenghuazuo = xueshenghuazuoService.selectById(id);
        return R.ok().put("data", xueshenghuazuo);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody XueshenghuazuoEntity xueshenghuazuo, HttpServletRequest request){
    	xueshenghuazuo.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xueshenghuazuo);

        xueshenghuazuoService.insert(xueshenghuazuo);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody XueshenghuazuoEntity xueshenghuazuo, HttpServletRequest request){
    	xueshenghuazuo.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xueshenghuazuo);

        xueshenghuazuoService.insert(xueshenghuazuo);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody XueshenghuazuoEntity xueshenghuazuo, HttpServletRequest request){
        //ValidatorUtils.validateEntity(xueshenghuazuo);
        xueshenghuazuoService.updateById(xueshenghuazuo);//全部更新
        return R.ok();
    }
    
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        xueshenghuazuoService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<XueshenghuazuoEntity> wrapper = new EntityWrapper<XueshenghuazuoEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			wrapper.eq("xuehao", (String)request.getSession().getAttribute("username"));
		}

		int count = xueshenghuazuoService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	









}
