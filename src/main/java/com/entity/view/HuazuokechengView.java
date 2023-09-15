package com.entity.view;

import com.entity.HuazuokechengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 画作课程
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
@TableName("huazuokecheng")
public class HuazuokechengView  extends HuazuokechengEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public HuazuokechengView(){
	}
 
 	public HuazuokechengView(HuazuokechengEntity huazuokechengEntity){
 	try {
			BeanUtils.copyProperties(this, huazuokechengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
