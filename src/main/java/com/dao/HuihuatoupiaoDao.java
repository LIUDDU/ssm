package com.dao;

import com.entity.HuihuatoupiaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HuihuatoupiaoVO;
import com.entity.view.HuihuatoupiaoView;


/**
 * 绘画投票
 * 
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
public interface HuihuatoupiaoDao extends BaseMapper<HuihuatoupiaoEntity> {
	
	List<HuihuatoupiaoVO> selectListVO(@Param("ew") Wrapper<HuihuatoupiaoEntity> wrapper);
	
	HuihuatoupiaoVO selectVO(@Param("ew") Wrapper<HuihuatoupiaoEntity> wrapper);
	
	List<HuihuatoupiaoView> selectListView(@Param("ew") Wrapper<HuihuatoupiaoEntity> wrapper);

	List<HuihuatoupiaoView> selectListView(Pagination page,@Param("ew") Wrapper<HuihuatoupiaoEntity> wrapper);
	
	HuihuatoupiaoView selectView(@Param("ew") Wrapper<HuihuatoupiaoEntity> wrapper);
	

}
