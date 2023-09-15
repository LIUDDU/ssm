package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.HuihualeixingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.HuihualeixingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.HuihualeixingView;


/**
 * 绘画类型
 *
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
public interface HuihualeixingService extends IService<HuihualeixingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuihualeixingVO> selectListVO(Wrapper<HuihualeixingEntity> wrapper);
   	
   	HuihualeixingVO selectVO(@Param("ew") Wrapper<HuihualeixingEntity> wrapper);
   	
   	List<HuihualeixingView> selectListView(Wrapper<HuihualeixingEntity> wrapper);
   	
   	HuihualeixingView selectView(@Param("ew") Wrapper<HuihualeixingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuihualeixingEntity> wrapper);
   	

}

