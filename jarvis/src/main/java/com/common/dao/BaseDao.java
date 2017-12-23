package com.common.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.common.entity.Page;


/**
 * 
 * @Description: 公共DAO
 * @author dancer
 * @param @param <T>
 * @param @param <ID> 
 * @return 
 * @throws 
 * @data 2017年4月15日下午2:26:17
 */
public interface BaseDao<T> {
	
	/**
	 * 删除
	 * 
	 */
	void deleteById(Integer id);
	
	void deleteByMap(Map<String,Object> params);
	
	void deleteByEntity(T t);
	
	/**
	 * 添加
	 * 
	 */
	void insert(T t);
	
	/**
	 * 查询
	 */
	T selectById(Integer id);
	
	List<T> selectByMap(Map<String,Object> params);
	
	List<T>selectByEntity(T t);
	
	T selectByName(String name);
	
	/**
	 * 分页查询
	 */
	List<T> selectByPage(Page p);
	
	int selectCount();
	
	int selectCountByEntity(T t);

	int selectCountByMap(Map<String, Object> params);
	
	/**
	 * 更新修改
	 */
	void updateById(T t);
	
	void uodateByMap(Map<String,Object> params);
	
}
