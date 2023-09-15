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


import com.dao.HuihualeixingDao;
import com.entity.HuihualeixingEntity;
import com.service.HuihualeixingService;
import com.entity.vo.HuihualeixingVO;
import com.entity.view.HuihualeixingView;

@Service("huihualeixingService")
public class HuihualeixingServiceImpl extends ServiceImpl<HuihualeixingDao, HuihualeixingEntity> implements HuihualeixingService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuihualeixingEntity> page = this.selectPage(
                new Query<HuihualeixingEntity>(params).getPage(),
                new EntityWrapper<HuihualeixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuihualeixingEntity> wrapper) {
		  Page<HuihualeixingView> page =new Query<HuihualeixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<HuihualeixingVO> selectListVO(Wrapper<HuihualeixingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public HuihualeixingVO selectVO(Wrapper<HuihualeixingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<HuihualeixingView> selectListView(Wrapper<HuihualeixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuihualeixingView selectView(Wrapper<HuihualeixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
