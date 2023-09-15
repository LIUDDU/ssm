package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 绘画投票
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
@TableName("huihuatoupiao")
public class HuihuatoupiaoEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public HuihuatoupiaoEntity() {
		
	}
	
	public HuihuatoupiaoEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 绘画名称
	 */
					
	private String huihuamingcheng;
	
	/**
	 * 绘画类型
	 */
					
	private String huihualeixing;
	
	/**
	 * 学号
	 */
					
	private String xuehao;
	
	/**
	 * 学生姓名
	 */
					
	private String xueshengxingming;
	
	/**
	 * 票数
	 */
					
	private Integer piaoshu;
	
	/**
	 * 投票账号
	 */
					
	private String toupiaozhanghao;
	
	/**
	 * 投票人
	 */
					
	private String toupiaoren;
	
	/**
	 * 投票时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date toupiaoshijian;
	
	/**
	 * 投票理由
	 */
					
	private String toupiaoliyou;
	
	/**
	 * 跨表用户id
	 */
					
	private Long crossuserid;
	
	/**
	 * 跨表主键id
	 */
					
	private Long crossrefid;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：绘画名称
	 */
	public void setHuihuamingcheng(String huihuamingcheng) {
		this.huihuamingcheng = huihuamingcheng;
	}
	/**
	 * 获取：绘画名称
	 */
	public String getHuihuamingcheng() {
		return huihuamingcheng;
	}
	/**
	 * 设置：绘画类型
	 */
	public void setHuihualeixing(String huihualeixing) {
		this.huihualeixing = huihualeixing;
	}
	/**
	 * 获取：绘画类型
	 */
	public String getHuihualeixing() {
		return huihualeixing;
	}
	/**
	 * 设置：学号
	 */
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	/**
	 * 获取：学号
	 */
	public String getXuehao() {
		return xuehao;
	}
	/**
	 * 设置：学生姓名
	 */
	public void setXueshengxingming(String xueshengxingming) {
		this.xueshengxingming = xueshengxingming;
	}
	/**
	 * 获取：学生姓名
	 */
	public String getXueshengxingming() {
		return xueshengxingming;
	}
	/**
	 * 设置：票数
	 */
	public void setPiaoshu(Integer piaoshu) {
		this.piaoshu = piaoshu;
	}
	/**
	 * 获取：票数
	 */
	public Integer getPiaoshu() {
		return piaoshu;
	}
	/**
	 * 设置：投票账号
	 */
	public void setToupiaozhanghao(String toupiaozhanghao) {
		this.toupiaozhanghao = toupiaozhanghao;
	}
	/**
	 * 获取：投票账号
	 */
	public String getToupiaozhanghao() {
		return toupiaozhanghao;
	}
	/**
	 * 设置：投票人
	 */
	public void setToupiaoren(String toupiaoren) {
		this.toupiaoren = toupiaoren;
	}
	/**
	 * 获取：投票人
	 */
	public String getToupiaoren() {
		return toupiaoren;
	}
	/**
	 * 设置：投票时间
	 */
	public void setToupiaoshijian(Date toupiaoshijian) {
		this.toupiaoshijian = toupiaoshijian;
	}
	/**
	 * 获取：投票时间
	 */
	public Date getToupiaoshijian() {
		return toupiaoshijian;
	}
	/**
	 * 设置：投票理由
	 */
	public void setToupiaoliyou(String toupiaoliyou) {
		this.toupiaoliyou = toupiaoliyou;
	}
	/**
	 * 获取：投票理由
	 */
	public String getToupiaoliyou() {
		return toupiaoliyou;
	}
	/**
	 * 设置：跨表用户id
	 */
	public void setCrossuserid(Long crossuserid) {
		this.crossuserid = crossuserid;
	}
	/**
	 * 获取：跨表用户id
	 */
	public Long getCrossuserid() {
		return crossuserid;
	}
	/**
	 * 设置：跨表主键id
	 */
	public void setCrossrefid(Long crossrefid) {
		this.crossrefid = crossrefid;
	}
	/**
	 * 获取：跨表主键id
	 */
	public Long getCrossrefid() {
		return crossrefid;
	}

}
