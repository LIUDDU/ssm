package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.HuihuafenxiangDao;
import com.entity.HuihuafenxiangEntity;
import com.service.HuihuafenxiangService;
import com.entity.vo.HuihuafenxiangVO;
import com.entity.view.HuihuafenxiangView;

@Service("huihuafenxiangService")
public class HuihuafenxiangServiceImpl extends ServiceImpl<HuihuafenxiangDao, HuihuafenxiangEntity> implements HuihuafenxiangService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuihuafenxiangEntity> page = this.selectPage(
                new Query<HuihuafenxiangEntity>(params).getPage(),
                new EntityWrapper<HuihuafenxiangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuihuafenxiangEntity> wrapper) {
		  Page<HuihuafenxiangView> page =new Query<HuihuafenxiangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<HuihuafenxiangVO> selectListVO(Wrapper<HuihuafenxiangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public HuihuafenxiangVO selectVO(Wrapper<HuihuafenxiangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<HuihuafenxiangView> selectListView(Wrapper<HuihuafenxiangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuihuafenxiangView selectView(Wrapper<HuihuafenxiangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<HuihuafenxiangEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<HuihuafenxiangEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<HuihuafenxiangEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }



}
