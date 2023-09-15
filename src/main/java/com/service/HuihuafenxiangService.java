package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.HuihuafenxiangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.HuihuafenxiangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.HuihuafenxiangView;


/**
 * 绘画分享
 *
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
public interface HuihuafenxiangService extends IService<HuihuafenxiangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuihuafenxiangVO> selectListVO(Wrapper<HuihuafenxiangEntity> wrapper);
   	
   	HuihuafenxiangVO selectVO(@Param("ew") Wrapper<HuihuafenxiangEntity> wrapper);
   	
   	List<HuihuafenxiangView> selectListView(Wrapper<HuihuafenxiangEntity> wrapper);
   	
   	HuihuafenxiangView selectView(@Param("ew") Wrapper<HuihuafenxiangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuihuafenxiangEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<HuihuafenxiangEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<HuihuafenxiangEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<HuihuafenxiangEntity> wrapper);



}

