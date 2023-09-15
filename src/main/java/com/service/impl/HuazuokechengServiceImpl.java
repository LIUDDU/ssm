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


import com.dao.HuazuokechengDao;
import com.entity.HuazuokechengEntity;
import com.service.HuazuokechengService;
import com.entity.vo.HuazuokechengVO;
import com.entity.view.HuazuokechengView;

@Service("huazuokechengService")
public class HuazuokechengServiceImpl extends ServiceImpl<HuazuokechengDao, HuazuokechengEntity> implements HuazuokechengService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuazuokechengEntity> page = this.selectPage(
                new Query<HuazuokechengEntity>(params).getPage(),
                new EntityWrapper<HuazuokechengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuazuokechengEntity> wrapper) {
		  Page<HuazuokechengView> page =new Query<HuazuokechengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<HuazuokechengVO> selectListVO(Wrapper<HuazuokechengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public HuazuokechengVO selectVO(Wrapper<HuazuokechengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<HuazuokechengView> selectListView(Wrapper<HuazuokechengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuazuokechengView selectView(Wrapper<HuazuokechengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
