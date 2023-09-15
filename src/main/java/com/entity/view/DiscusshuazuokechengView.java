package com.entity.view;

import com.entity.DiscusshuazuokechengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 画作课程评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-25 16:24:47
 */
@TableName("discusshuazuokecheng")
public class DiscusshuazuokechengView  extends DiscusshuazuokechengEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusshuazuokechengView(){
	}
 
 	public DiscusshuazuokechengView(DiscusshuazuokechengEntity discusshuazuokechengEntity){
 	try {
			BeanUtils.copyProperties(this, discusshuazuokechengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
