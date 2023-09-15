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


import com.dao.HuihuatoupiaoDao;
import com.entity.HuihuatoupiaoEntity;
import com.service.HuihuatoupiaoService;
import com.entity.vo.HuihuatoupiaoVO;
import com.entity.view.HuihuatoupiaoView;

@Service("huihuatoupiaoService")
public class HuihuatoupiaoServiceImpl extends ServiceImpl<HuihuatoupiaoDao, HuihuatoupiaoEntity> implements HuihuatoupiaoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuihuatoupiaoEntity> page = this.selectPage(
                new Query<HuihuatoupiaoEntity>(params).getPage(),
                new EntityWrapper<HuihuatoupiaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuihuatoupiaoEntity> wrapper) {
		  Page<HuihuatoupiaoView> page =new Query<HuihuatoupiaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<HuihuatoupiaoVO> selectListVO(Wrapper<HuihuatoupiaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public HuihuatoupiaoVO selectVO(Wrapper<HuihuatoupiaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<HuihuatoupiaoView> selectListView(Wrapper<HuihuatoupiaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuihuatoupiaoView selectView(Wrapper<HuihuatoupiaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
