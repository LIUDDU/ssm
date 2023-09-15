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


import com.dao.HuazuojianchaDao;
import com.entity.HuazuojianchaEntity;
import com.service.HuazuojianchaService;
import com.entity.vo.HuazuojianchaVO;
import com.entity.view.HuazuojianchaView;

@Service("huazuojianchaService")
public class HuazuojianchaServiceImpl extends ServiceImpl<HuazuojianchaDao, HuazuojianchaEntity> implements HuazuojianchaService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuazuojianchaEntity> page = this.selectPage(
                new Query<HuazuojianchaEntity>(params).getPage(),
                new EntityWrapper<HuazuojianchaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuazuojianchaEntity> wrapper) {
		  Page<HuazuojianchaView> page =new Query<HuazuojianchaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<HuazuojianchaVO> selectListVO(Wrapper<HuazuojianchaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public HuazuojianchaVO selectVO(Wrapper<HuazuojianchaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<HuazuojianchaView> selectListView(Wrapper<HuazuojianchaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuazuojianchaView selectView(Wrapper<HuazuojianchaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<HuazuojianchaEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<HuazuojianchaEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<HuazuojianchaEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }



}
