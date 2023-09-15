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


import com.dao.XueshenghuazuoDao;
import com.entity.XueshenghuazuoEntity;
import com.service.XueshenghuazuoService;
import com.entity.vo.XueshenghuazuoVO;
import com.entity.view.XueshenghuazuoView;

@Service("xueshenghuazuoService")
public class XueshenghuazuoServiceImpl extends ServiceImpl<XueshenghuazuoDao, XueshenghuazuoEntity> implements XueshenghuazuoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XueshenghuazuoEntity> page = this.selectPage(
                new Query<XueshenghuazuoEntity>(params).getPage(),
                new EntityWrapper<XueshenghuazuoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XueshenghuazuoEntity> wrapper) {
		  Page<XueshenghuazuoView> page =new Query<XueshenghuazuoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XueshenghuazuoVO> selectListVO(Wrapper<XueshenghuazuoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XueshenghuazuoVO selectVO(Wrapper<XueshenghuazuoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XueshenghuazuoView> selectListView(Wrapper<XueshenghuazuoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XueshenghuazuoView selectView(Wrapper<XueshenghuazuoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
