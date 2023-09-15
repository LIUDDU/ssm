package com.dao;

import com.entity.DiscusshuazuokechengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusshuazuokechengVO;
import com.entity.view.DiscusshuazuokechengView;


/**
 * 画作课程评论表
 * 
 * @author 
 * @email 
 * @date 2023-03-25 16:24:47
 */
public interface DiscusshuazuokechengDao extends BaseMapper<DiscusshuazuokechengEntity> {
	
	List<DiscusshuazuokechengVO> selectListVO(@Param("ew") Wrapper<DiscusshuazuokechengEntity> wrapper);
	
	DiscusshuazuokechengVO selectVO(@Param("ew") Wrapper<DiscusshuazuokechengEntity> wrapper);
	
	List<DiscusshuazuokechengView> selectListView(@Param("ew") Wrapper<DiscusshuazuokechengEntity> wrapper);

	List<DiscusshuazuokechengView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusshuazuokechengEntity> wrapper);
	
	DiscusshuazuokechengView selectView(@Param("ew") Wrapper<DiscusshuazuokechengEntity> wrapper);
	

}
