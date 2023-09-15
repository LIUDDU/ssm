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


import com.dao.DiscusshuihuafenxiangDao;
import com.entity.DiscusshuihuafenxiangEntity;
import com.service.DiscusshuihuafenxiangService;
import com.entity.vo.DiscusshuihuafenxiangVO;
import com.entity.view.DiscusshuihuafenxiangView;

@Service("discusshuihuafenxiangService")
public class DiscusshuihuafenxiangServiceImpl extends ServiceImpl<DiscusshuihuafenxiangDao, DiscusshuihuafenxiangEntity> implements DiscusshuihuafenxiangService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusshuihuafenxiangEntity> page = this.selectPage(
                new Query<DiscusshuihuafenxiangEntity>(params).getPage(),
                new EntityWrapper<DiscusshuihuafenxiangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusshuihuafenxiangEntity> wrapper) {
		  Page<DiscusshuihuafenxiangView> page =new Query<DiscusshuihuafenxiangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusshuihuafenxiangVO> selectListVO(Wrapper<DiscusshuihuafenxiangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusshuihuafenxiangVO selectVO(Wrapper<DiscusshuihuafenxiangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusshuihuafenxiangView> selectListView(Wrapper<DiscusshuihuafenxiangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusshuihuafenxiangView selectView(Wrapper<DiscusshuihuafenxiangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
