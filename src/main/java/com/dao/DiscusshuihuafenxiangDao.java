package com.dao;

import com.entity.DiscusshuihuafenxiangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusshuihuafenxiangVO;
import com.entity.view.DiscusshuihuafenxiangView;


/**
 * 绘画分享评论表
 * 
 * @author 
 * @email 
 * @date 2023-03-25 16:24:47
 */
public interface DiscusshuihuafenxiangDao extends BaseMapper<DiscusshuihuafenxiangEntity> {
	
	List<DiscusshuihuafenxiangVO> selectListVO(@Param("ew") Wrapper<DiscusshuihuafenxiangEntity> wrapper);
	
	DiscusshuihuafenxiangVO selectVO(@Param("ew") Wrapper<DiscusshuihuafenxiangEntity> wrapper);
	
	List<DiscusshuihuafenxiangView> selectListView(@Param("ew") Wrapper<DiscusshuihuafenxiangEntity> wrapper);

	List<DiscusshuihuafenxiangView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusshuihuafenxiangEntity> wrapper);
	
	DiscusshuihuafenxiangView selectView(@Param("ew") Wrapper<DiscusshuihuafenxiangEntity> wrapper);
	

}
