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

import com.entity.HuazuokechengEntity;
import com.entity.view.HuazuokechengView;

import com.service.HuazuokechengService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 画作课程
 * 后端接口
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
@RestController
@RequestMapping("/huazuokecheng")
public class HuazuokechengController {
    @Autowired
    private HuazuokechengService huazuokechengService;


    @Autowired
    private StoreupService storeupService;

    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,HuazuokechengEntity huazuokecheng, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			huazuokecheng.setJiaoshigonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<HuazuokechengEntity> ew = new EntityWrapper<HuazuokechengEntity>();


		PageUtils page = huazuokechengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huazuokecheng), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,HuazuokechengEntity huazuokecheng, 
		HttpServletRequest request){
        EntityWrapper<HuazuokechengEntity> ew = new EntityWrapper<HuazuokechengEntity>();

		PageUtils page = huazuokechengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huazuokecheng), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( HuazuokechengEntity huazuokecheng){
       	EntityWrapper<HuazuokechengEntity> ew = new EntityWrapper<HuazuokechengEntity>();
      	ew.allEq(MPUtil.allEQMapPre( huazuokecheng, "huazuokecheng")); 
        return R.ok().put("data", huazuokechengService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(HuazuokechengEntity huazuokecheng){
        EntityWrapper< HuazuokechengEntity> ew = new EntityWrapper< HuazuokechengEntity>();
 		ew.allEq(MPUtil.allEQMapPre( huazuokecheng, "huazuokecheng")); 
		HuazuokechengView huazuokechengView =  huazuokechengService.selectView(ew);
		return R.ok("查询画作课程成功").put("data", huazuokechengView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        HuazuokechengEntity huazuokecheng = huazuokechengService.selectById(id);
		huazuokecheng.setClicknum(huazuokecheng.getClicknum()+1);
		huazuokecheng.setClicktime(new Date());
		huazuokechengService.updateById(huazuokecheng);
        return R.ok().put("data", huazuokecheng);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        HuazuokechengEntity huazuokecheng = huazuokechengService.selectById(id);
		huazuokecheng.setClicknum(huazuokecheng.getClicknum()+1);
		huazuokecheng.setClicktime(new Date());
		huazuokechengService.updateById(huazuokecheng);
        return R.ok().put("data", huazuokecheng);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R thumbsup(@PathVariable("id") String id,String type){
        HuazuokechengEntity huazuokecheng = huazuokechengService.selectById(id);
        if(type.equals("1")) {
        	huazuokecheng.setThumbsupnum(huazuokecheng.getThumbsupnum()+1);
        } else {
        	huazuokecheng.setCrazilynum(huazuokecheng.getCrazilynum()+1);
        }
        huazuokechengService.updateById(huazuokecheng);
        return R.ok();
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody HuazuokechengEntity huazuokecheng, HttpServletRequest request){
    	huazuokecheng.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(huazuokecheng);

        huazuokechengService.insert(huazuokecheng);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody HuazuokechengEntity huazuokecheng, HttpServletRequest request){
    	huazuokecheng.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(huazuokecheng);

        huazuokechengService.insert(huazuokecheng);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody HuazuokechengEntity huazuokecheng, HttpServletRequest request){
        //ValidatorUtils.validateEntity(huazuokecheng);
        huazuokechengService.updateById(huazuokecheng);//全部更新
        return R.ok();
    }
    
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        huazuokechengService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<HuazuokechengEntity> wrapper = new EntityWrapper<HuazuokechengEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			wrapper.eq("jiaoshigonghao", (String)request.getSession().getAttribute("username"));
		}

		int count = huazuokechengService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,HuazuokechengEntity huazuokecheng, HttpServletRequest request,String pre){
        EntityWrapper<HuazuokechengEntity> ew = new EntityWrapper<HuazuokechengEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicknum");
        
        params.put("order", "desc");
		PageUtils page = huazuokechengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huazuokecheng), params), params));
        return R.ok().put("data", page);
    }


    /**
     * 协同算法（按收藏推荐）
     */
    @RequestMapping("/autoSort2")
    public R autoSort2(@RequestParam Map<String, Object> params,HuazuokechengEntity huazuokecheng, HttpServletRequest request){
        String userId = request.getSession().getAttribute("userId").toString();
        String inteltypeColumn = "huihualeixing";
        List<StoreupEntity> storeups = storeupService.selectList(new EntityWrapper<StoreupEntity>().eq("type", 1).eq("userid", userId).eq("tablename", "huazuokecheng").orderBy("addtime", false));
        List<String> inteltypes = new ArrayList<String>();
        Integer limit = params.get("limit")==null?10:Integer.parseInt(params.get("limit").toString());
        List<HuazuokechengEntity> huazuokechengList = new ArrayList<HuazuokechengEntity>();
        //去重
        if(storeups!=null && storeups.size()>0) {
            for(StoreupEntity s : storeups) {
                huazuokechengList.addAll(huazuokechengService.selectList(new EntityWrapper<HuazuokechengEntity>().eq(inteltypeColumn, s.getInteltype())));
            }
        }
        EntityWrapper<HuazuokechengEntity> ew = new EntityWrapper<HuazuokechengEntity>();
        params.put("sort", "id");
        params.put("order", "desc");
        PageUtils page = huazuokechengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huazuokecheng), params), params));
        List<HuazuokechengEntity> pageList = (List<HuazuokechengEntity>)page.getList();
        if(huazuokechengList.size()<limit) {
            int toAddNum = (limit-huazuokechengList.size())<=pageList.size()?(limit-huazuokechengList.size()):pageList.size();
            for(HuazuokechengEntity o1 : pageList) {
                boolean addFlag = true;
                for(HuazuokechengEntity o2 : huazuokechengList) {
                    if(o1.getId().intValue()==o2.getId().intValue()) {
                        addFlag = false;
                        break;
                    }
                }
                if(addFlag) {
                    huazuokechengList.add(o1);
                    if(--toAddNum==0) break;
                }
            }
        } else if(huazuokechengList.size()>limit) {
            huazuokechengList = huazuokechengList.subList(0, limit);
        }
        page.setList(huazuokechengList);
        return R.ok().put("data", page);
    }







}
