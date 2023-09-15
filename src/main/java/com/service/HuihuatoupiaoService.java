package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.HuihuatoupiaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.HuihuatoupiaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.HuihuatoupiaoView;


/**
 * 绘画投票
 *
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
public interface HuihuatoupiaoService extends IService<HuihuatoupiaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuihuatoupiaoVO> selectListVO(Wrapper<HuihuatoupiaoEntity> wrapper);
   	
   	HuihuatoupiaoVO selectVO(@Param("ew") Wrapper<HuihuatoupiaoEntity> wrapper);
   	
   	List<HuihuatoupiaoView> selectListView(Wrapper<HuihuatoupiaoEntity> wrapper);
   	
   	HuihuatoupiaoView selectView(@Param("ew") Wrapper<HuihuatoupiaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuihuatoupiaoEntity> wrapper);
   	

}

