package com.common.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.common.entity.Page;

/**
 * 
 * @Description: ����service
 * @author dancer
 * @param @param <T>
 * @param @param <ID> 
 * @return 
 * @throws 
 * @data 2017��4��15������2:38:34
 */
public interface BaseService <T> {
	
	//void setBaseDao();

	/**
	 * ɾ��
	 * 
	 */
	void removeById(Integer id);
	
	void removeByMap(Map<String,Object> params);
	
	void removeByEntity(T t);
	
	/**
	 * ���
	 * 
	 */
	void add(T t);
	
	/**
	 * ��ѯ
	 */
	T queryById(Integer id);
	
	List<T> queryByMap(Map<String,Object> params);
	
	List<T> queryByEntity(T t);
	
	T queryByName(String name);
	
	/**
	 * ��ҳ��ѯ
	 */
	List<T> queryByPage(Page p);
	
	int queryCount();
	
	int queryCountByEntity(T t);

	int queryCountByMap(Map<String, Object> params);
	
	/**
	 * �����޸�
	 */
	void changeById(T t);
	
	void changeByMap(Map<String,Object> params);
	
}
