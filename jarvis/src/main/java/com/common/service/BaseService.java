package com.common.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.common.entity.Page;

/**
 * 
 * @Description: 公共service
 * @author dancer
 * @param @param <T>
 * @param @param <ID> 
 * @return 
 * @throws 
 * @data 2017年4月15日下午2:38:34
 */
public interface BaseService <T> {
	
	//void setBaseDao();

	/**
	 * 删除
	 * 
	 */
	void removeById(Integer id);
	
	void removeByMap(Map<String,Object> params);
	
	void removeByEntity(T t);
	
	/**
	 * 添加
	 * 
	 */
	void add(T t);
	
	/**
	 * 查询
	 */
	T queryById(Integer id);
	
	List<T> queryByMap(Map<String,Object> params);
	
	List<T> queryByEntity(T t);
	
	T queryByName(String name);
	
	/**
	 * 分页查询
	 */
	List<T> queryByPage(Page p);
	
	int queryCount();
	
	int queryCountByEntity(T t);

	int queryCountByMap(Map<String, Object> params);
	
	/**
	 * 更新修改
	 */
	void changeById(T t);
	
	void changeByMap(Map<String,Object> params);
	
}
