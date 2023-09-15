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


import com.dao.DiscusshuazuokechengDao;
import com.entity.DiscusshuazuokechengEntity;
import com.service.DiscusshuazuokechengService;
import com.entity.vo.DiscusshuazuokechengVO;
import com.entity.view.DiscusshuazuokechengView;

@Service("discusshuazuokechengService")
public class DiscusshuazuokechengServiceImpl extends ServiceImpl<DiscusshuazuokechengDao, DiscusshuazuokechengEntity> implements DiscusshuazuokechengService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusshuazuokechengEntity> page = this.selectPage(
                new Query<DiscusshuazuokechengEntity>(params).getPage(),
                new EntityWrapper<DiscusshuazuokechengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusshuazuokechengEntity> wrapper) {
		  Page<DiscusshuazuokechengView> page =new Query<DiscusshuazuokechengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusshuazuokechengVO> selectListVO(Wrapper<DiscusshuazuokechengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusshuazuokechengVO selectVO(Wrapper<DiscusshuazuokechengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusshuazuokechengView> selectListView(Wrapper<DiscusshuazuokechengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusshuazuokechengView selectView(Wrapper<DiscusshuazuokechengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
