package com.dao;

import com.entity.HuazuojianchaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HuazuojianchaVO;
import com.entity.view.HuazuojianchaView;


/**
 * 画作检查
 * 
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
public interface HuazuojianchaDao extends BaseMapper<HuazuojianchaEntity> {
	
	List<HuazuojianchaVO> selectListVO(@Param("ew") Wrapper<HuazuojianchaEntity> wrapper);
	
	HuazuojianchaVO selectVO(@Param("ew") Wrapper<HuazuojianchaEntity> wrapper);
	
	List<HuazuojianchaView> selectListView(@Param("ew") Wrapper<HuazuojianchaEntity> wrapper);

	List<HuazuojianchaView> selectListView(Pagination page,@Param("ew") Wrapper<HuazuojianchaEntity> wrapper);
	
	HuazuojianchaView selectView(@Param("ew") Wrapper<HuazuojianchaEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params")Map<String, Object> params,@Param("ew") Wrapper<HuazuojianchaEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<HuazuojianchaEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<HuazuojianchaEntity> wrapper);



}
