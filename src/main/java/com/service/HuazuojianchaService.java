package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.HuazuojianchaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.HuazuojianchaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.HuazuojianchaView;


/**
 * 画作检查
 *
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
public interface HuazuojianchaService extends IService<HuazuojianchaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuazuojianchaVO> selectListVO(Wrapper<HuazuojianchaEntity> wrapper);
   	
   	HuazuojianchaVO selectVO(@Param("ew") Wrapper<HuazuojianchaEntity> wrapper);
   	
   	List<HuazuojianchaView> selectListView(Wrapper<HuazuojianchaEntity> wrapper);
   	
   	HuazuojianchaView selectView(@Param("ew") Wrapper<HuazuojianchaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuazuojianchaEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<HuazuojianchaEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<HuazuojianchaEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<HuazuojianchaEntity> wrapper);



}

