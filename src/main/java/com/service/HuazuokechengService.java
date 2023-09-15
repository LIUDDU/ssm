package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.HuazuokechengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.HuazuokechengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.HuazuokechengView;


/**
 * 画作课程
 *
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
public interface HuazuokechengService extends IService<HuazuokechengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuazuokechengVO> selectListVO(Wrapper<HuazuokechengEntity> wrapper);
   	
   	HuazuokechengVO selectVO(@Param("ew") Wrapper<HuazuokechengEntity> wrapper);
   	
   	List<HuazuokechengView> selectListView(Wrapper<HuazuokechengEntity> wrapper);
   	
   	HuazuokechengView selectView(@Param("ew") Wrapper<HuazuokechengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuazuokechengEntity> wrapper);
   	

}

