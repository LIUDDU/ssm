package com.entity.view;

import com.entity.XueshenghuazuoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 学生画作
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
@TableName("xueshenghuazuo")
public class XueshenghuazuoView  extends XueshenghuazuoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XueshenghuazuoView(){
	}
 
 	public XueshenghuazuoView(XueshenghuazuoEntity xueshenghuazuoEntity){
 	try {
			BeanUtils.copyProperties(this, xueshenghuazuoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
