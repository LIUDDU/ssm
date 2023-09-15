package com.dao;

import com.entity.XueshenghuazuoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XueshenghuazuoVO;
import com.entity.view.XueshenghuazuoView;


/**
 * 学生画作
 * 
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
public interface XueshenghuazuoDao extends BaseMapper<XueshenghuazuoEntity> {
	
	List<XueshenghuazuoVO> selectListVO(@Param("ew") Wrapper<XueshenghuazuoEntity> wrapper);
	
	XueshenghuazuoVO selectVO(@Param("ew") Wrapper<XueshenghuazuoEntity> wrapper);
	
	List<XueshenghuazuoView> selectListView(@Param("ew") Wrapper<XueshenghuazuoEntity> wrapper);

	List<XueshenghuazuoView> selectListView(Pagination page,@Param("ew") Wrapper<XueshenghuazuoEntity> wrapper);
	
	XueshenghuazuoView selectView(@Param("ew") Wrapper<XueshenghuazuoEntity> wrapper);
	

}
