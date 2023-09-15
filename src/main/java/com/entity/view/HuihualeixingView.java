package com.entity.view;

import com.entity.HuihualeixingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 绘画类型
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
@TableName("huihualeixing")
public class HuihualeixingView  extends HuihualeixingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public HuihualeixingView(){
	}
 
 	public HuihualeixingView(HuihualeixingEntity huihualeixingEntity){
 	try {
			BeanUtils.copyProperties(this, huihualeixingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
