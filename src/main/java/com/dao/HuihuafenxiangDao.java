package com.dao;

import com.entity.HuihuafenxiangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HuihuafenxiangVO;
import com.entity.view.HuihuafenxiangView;


/**
 * 绘画分享
 * 
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
public interface HuihuafenxiangDao extends BaseMapper<HuihuafenxiangEntity> {
	
	List<HuihuafenxiangVO> selectListVO(@Param("ew") Wrapper<HuihuafenxiangEntity> wrapper);
	
	HuihuafenxiangVO selectVO(@Param("ew") Wrapper<HuihuafenxiangEntity> wrapper);
	
	List<HuihuafenxiangView> selectListView(@Param("ew") Wrapper<HuihuafenxiangEntity> wrapper);

	List<HuihuafenxiangView> selectListView(Pagination page,@Param("ew") Wrapper<HuihuafenxiangEntity> wrapper);
	
	HuihuafenxiangView selectView(@Param("ew") Wrapper<HuihuafenxiangEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params")Map<String, Object> params,@Param("ew") Wrapper<HuihuafenxiangEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<HuihuafenxiangEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<HuihuafenxiangEntity> wrapper);



}
