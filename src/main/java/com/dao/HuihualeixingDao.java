package com.dao;

import com.entity.HuihualeixingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HuihualeixingVO;
import com.entity.view.HuihualeixingView;


/**
 * 绘画类型
 * 
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
public interface HuihualeixingDao extends BaseMapper<HuihualeixingEntity> {
	
	List<HuihualeixingVO> selectListVO(@Param("ew") Wrapper<HuihualeixingEntity> wrapper);
	
	HuihualeixingVO selectVO(@Param("ew") Wrapper<HuihualeixingEntity> wrapper);
	
	List<HuihualeixingView> selectListView(@Param("ew") Wrapper<HuihualeixingEntity> wrapper);

	List<HuihualeixingView> selectListView(Pagination page,@Param("ew") Wrapper<HuihualeixingEntity> wrapper);
	
	HuihualeixingView selectView(@Param("ew") Wrapper<HuihualeixingEntity> wrapper);
	

}
