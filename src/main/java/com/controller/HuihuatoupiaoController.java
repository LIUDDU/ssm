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

import com.entity.HuihuatoupiaoEntity;
import com.entity.view.HuihuatoupiaoView;

import com.service.HuihuatoupiaoService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 绘画投票
 * 后端接口
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
@RestController
@RequestMapping("/huihuatoupiao")
public class HuihuatoupiaoController {
    @Autowired
    private HuihuatoupiaoService huihuatoupiaoService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,HuihuatoupiaoEntity huihuatoupiao, 
		HttpServletRequest request){

        EntityWrapper<HuihuatoupiaoEntity> ew = new EntityWrapper<HuihuatoupiaoEntity>();


		String tableName = request.getSession().getAttribute("tableName").toString();
        ew.andNew();
		if(tableName.equals("xuesheng")) {
            ew.eq("xuehao", (String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("xuesheng")) {
            ew.or();
            ew.eq("toupiaozhanghao", (String)request.getSession().getAttribute("username"));
		}
		PageUtils page = huihuatoupiaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huihuatoupiao), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,HuihuatoupiaoEntity huihuatoupiao, 
		HttpServletRequest request){
        EntityWrapper<HuihuatoupiaoEntity> ew = new EntityWrapper<HuihuatoupiaoEntity>();

		PageUtils page = huihuatoupiaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huihuatoupiao), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( HuihuatoupiaoEntity huihuatoupiao){
       	EntityWrapper<HuihuatoupiaoEntity> ew = new EntityWrapper<HuihuatoupiaoEntity>();
      	ew.allEq(MPUtil.allEQMapPre( huihuatoupiao, "huihuatoupiao")); 
        return R.ok().put("data", huihuatoupiaoService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(HuihuatoupiaoEntity huihuatoupiao){
        EntityWrapper< HuihuatoupiaoEntity> ew = new EntityWrapper< HuihuatoupiaoEntity>();
 		ew.allEq(MPUtil.allEQMapPre( huihuatoupiao, "huihuatoupiao")); 
		HuihuatoupiaoView huihuatoupiaoView =  huihuatoupiaoService.selectView(ew);
		return R.ok("查询绘画投票成功").put("data", huihuatoupiaoView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        HuihuatoupiaoEntity huihuatoupiao = huihuatoupiaoService.selectById(id);
        return R.ok().put("data", huihuatoupiao);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        HuihuatoupiaoEntity huihuatoupiao = huihuatoupiaoService.selectById(id);
        return R.ok().put("data", huihuatoupiao);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody HuihuatoupiaoEntity huihuatoupiao, HttpServletRequest request){
    	huihuatoupiao.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(huihuatoupiao);

        huihuatoupiaoService.insert(huihuatoupiao);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody HuihuatoupiaoEntity huihuatoupiao, HttpServletRequest request){
    	huihuatoupiao.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(huihuatoupiao);

        huihuatoupiaoService.insert(huihuatoupiao);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody HuihuatoupiaoEntity huihuatoupiao, HttpServletRequest request){
        //ValidatorUtils.validateEntity(huihuatoupiao);
        huihuatoupiaoService.updateById(huihuatoupiao);//全部更新
        return R.ok();
    }
    
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        huihuatoupiaoService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<HuihuatoupiaoEntity> wrapper = new EntityWrapper<HuihuatoupiaoEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = huihuatoupiaoService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	









}
