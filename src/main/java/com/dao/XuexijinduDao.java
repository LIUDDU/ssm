package com.dao;

import com.entity.XuexijinduEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XuexijinduVO;
import com.entity.view.XuexijinduView;


/**
 * 学习进度
 * 
 * @author 
 * @email 
 * @date 2023-03-25 16:24:47
 */
public interface XuexijinduDao extends BaseMapper<XuexijinduEntity> {
	
	List<XuexijinduVO> selectListVO(@Param("ew") Wrapper<XuexijinduEntity> wrapper);
	
	XuexijinduVO selectVO(@Param("ew") Wrapper<XuexijinduEntity> wrapper);
	
	List<XuexijinduView> selectListView(@Param("ew") Wrapper<XuexijinduEntity> wrapper);

	List<XuexijinduView> selectListView(Pagination page,@Param("ew") Wrapper<XuexijinduEntity> wrapper);
	
	XuexijinduView selectView(@Param("ew") Wrapper<XuexijinduEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params")Map<String, Object> params,@Param("ew") Wrapper<XuexijinduEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XuexijinduEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XuexijinduEntity> wrapper);



}
