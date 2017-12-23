package com.common.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.common.entity.Page;


/**
 * 
 * @Description: ����DAO
 * @author dancer
 * @param @param <T>
 * @param @param <ID> 
 * @return 
 * @throws 
 * @data 2017��4��15������2:26:17
 */
public interface BaseDao<T> {
	
	/**
	 * ɾ��
	 * 
	 */
	void deleteById(Integer id);
	
	void deleteByMap(Map<String,Object> params);
	
	void deleteByEntity(T t);
	
	/**
	 * ���
	 * 
	 */
	void insert(T t);
	
	/**
	 * ��ѯ
	 */
	T selectById(Integer id);
	
	List<T> selectByMap(Map<String,Object> params);
	
	List<T>selectByEntity(T t);
	
	T selectByName(String name);
	
	/**
	 * ��ҳ��ѯ
	 */
	List<T> selectByPage(Page p);
	
	int selectCount();
	
	int selectCountByEntity(T t);

	int selectCountByMap(Map<String, Object> params);
	
	/**
	 * �����޸�
	 */
	void updateById(T t);
	
	void uodateByMap(Map<String,Object> params);
	
}
