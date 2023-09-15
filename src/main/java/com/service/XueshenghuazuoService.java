package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XueshenghuazuoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XueshenghuazuoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XueshenghuazuoView;


/**
 * 学生画作
 *
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
public interface XueshenghuazuoService extends IService<XueshenghuazuoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XueshenghuazuoVO> selectListVO(Wrapper<XueshenghuazuoEntity> wrapper);
   	
   	XueshenghuazuoVO selectVO(@Param("ew") Wrapper<XueshenghuazuoEntity> wrapper);
   	
   	List<XueshenghuazuoView> selectListView(Wrapper<XueshenghuazuoEntity> wrapper);
   	
   	XueshenghuazuoView selectView(@Param("ew") Wrapper<XueshenghuazuoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XueshenghuazuoEntity> wrapper);
   	

}

