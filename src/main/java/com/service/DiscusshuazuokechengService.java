package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusshuazuokechengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusshuazuokechengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusshuazuokechengView;


/**
 * 画作课程评论表
 *
 * @author 
 * @email 
 * @date 2023-03-25 16:24:47
 */
public interface DiscusshuazuokechengService extends IService<DiscusshuazuokechengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusshuazuokechengVO> selectListVO(Wrapper<DiscusshuazuokechengEntity> wrapper);
   	
   	DiscusshuazuokechengVO selectVO(@Param("ew") Wrapper<DiscusshuazuokechengEntity> wrapper);
   	
   	List<DiscusshuazuokechengView> selectListView(Wrapper<DiscusshuazuokechengEntity> wrapper);
   	
   	DiscusshuazuokechengView selectView(@Param("ew") Wrapper<DiscusshuazuokechengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusshuazuokechengEntity> wrapper);
   	

}

