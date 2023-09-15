package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusshuihuafenxiangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusshuihuafenxiangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusshuihuafenxiangView;


/**
 * 绘画分享评论表
 *
 * @author 
 * @email 
 * @date 2023-03-25 16:24:47
 */
public interface DiscusshuihuafenxiangService extends IService<DiscusshuihuafenxiangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusshuihuafenxiangVO> selectListVO(Wrapper<DiscusshuihuafenxiangEntity> wrapper);
   	
   	DiscusshuihuafenxiangVO selectVO(@Param("ew") Wrapper<DiscusshuihuafenxiangEntity> wrapper);
   	
   	List<DiscusshuihuafenxiangView> selectListView(Wrapper<DiscusshuihuafenxiangEntity> wrapper);
   	
   	DiscusshuihuafenxiangView selectView(@Param("ew") Wrapper<DiscusshuihuafenxiangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusshuihuafenxiangEntity> wrapper);
   	

}

