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
 * 画作检查
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-25 16:24:46
 */
@TableName("huazuojiancha")
public class HuazuojianchaEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public HuazuojianchaEntity() {
		
	}
	
	public HuazuojianchaEntity(T t) {
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
	 * 教师工号
	 */
					
	private String jiaoshigonghao;
	
	/**
	 * 教师姓名
	 */
					
	private String jiaoshixingming;
	
	/**
	 * 检查时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date jianchashijian;
	
	/**
	 * 反馈建议
	 */
					
	private String fankuijianyi;
	
	/**
	 * 打分
	 */
					
	private Integer dafen;
	
	/**
	 * 成绩
	 */
					
	private Float chengji;
	
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
	 * 设置：教师工号
	 */
	public void setJiaoshigonghao(String jiaoshigonghao) {
		this.jiaoshigonghao = jiaoshigonghao;
	}
	/**
	 * 获取：教师工号
	 */
	public String getJiaoshigonghao() {
		return jiaoshigonghao;
	}
	/**
	 * 设置：教师姓名
	 */
	public void setJiaoshixingming(String jiaoshixingming) {
		this.jiaoshixingming = jiaoshixingming;
	}
	/**
	 * 获取：教师姓名
	 */
	public String getJiaoshixingming() {
		return jiaoshixingming;
	}
	/**
	 * 设置：检查时间
	 */
	public void setJianchashijian(Date jianchashijian) {
		this.jianchashijian = jianchashijian;
	}
	/**
	 * 获取：检查时间
	 */
	public Date getJianchashijian() {
		return jianchashijian;
	}
	/**
	 * 设置：反馈建议
	 */
	public void setFankuijianyi(String fankuijianyi) {
		this.fankuijianyi = fankuijianyi;
	}
	/**
	 * 获取：反馈建议
	 */
	public String getFankuijianyi() {
		return fankuijianyi;
	}
	/**
	 * 设置：打分
	 */
	public void setDafen(Integer dafen) {
		this.dafen = dafen;
	}
	/**
	 * 获取：打分
	 */
	public Integer getDafen() {
		return dafen;
	}
	/**
	 * 设置：成绩
	 */
	public void setChengji(Float chengji) {
		this.chengji = chengji;
	}
	/**
	 * 获取：成绩
	 */
	public Float getChengji() {
		return chengji;
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
