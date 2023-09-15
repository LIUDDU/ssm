package com.dao;

import com.entity.HuazuokechengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HuazuokechengVO;
import com.entity.view.HuazuokechengView;


/**
 * 画作课程
 * 
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
public interface HuazuokechengDao extends BaseMapper<HuazuokechengEntity> {
	
	List<HuazuokechengVO> selectListVO(@Param("ew") Wrapper<HuazuokechengEntity> wrapper);
	
	HuazuokechengVO selectVO(@Param("ew") Wrapper<HuazuokechengEntity> wrapper);
	
	List<HuazuokechengView> selectListView(@Param("ew") Wrapper<HuazuokechengEntity> wrapper);

	List<HuazuokechengView> selectListView(Pagination page,@Param("ew") Wrapper<HuazuokechengEntity> wrapper);
	
	HuazuokechengView selectView(@Param("ew") Wrapper<HuazuokechengEntity> wrapper);
	

}
