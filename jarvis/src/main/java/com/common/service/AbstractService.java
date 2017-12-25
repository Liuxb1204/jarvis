package com.common.service;

import java.util.List;
import java.util.Map;

import com.common.dao.BaseDao;
import com.common.entity.Page;


/**
 * 
 * @Description: 公共实现类
 * @author dancer
 * @param @param <T> 
 * @return 
 * @throws 
 * @data 2017年4月15日下午4:14:13
 */
public abstract class AbstractService<T> implements BaseService<T> {

	private BaseDao<T> baseDao;
	
	public void setBaseDao(BaseDao<T> basedao) {

		this.baseDao = basedao;
	}
	
	public void removeById(Integer id) {
		baseDao.deleteById(id);
	}

	public void removeByMap(Map<String, Object> params) {
		baseDao.deleteByMap(params);
	}

	public void removeByEntity(T t) {
		baseDao.deleteByEntity(t);
	}

	public void add(T t) {
		baseDao.insert(t);
	}

	public T queryById(Integer id) {
		return baseDao.selectById(id);
	}

	public List<T> queryByMap(Map<String, Object> params) {
		return baseDao.selectByMap(params);
	}

	public List<T> queryByEntity(T t) {
		return baseDao.selectByEntity(t);
	}

	public T queryByName(String name) {
		return baseDao.selectByName(name);
	}

	public List<T> queryByPage(Page p) {
		return baseDao.selectByPage(p);
	}

	public int queryCount() {
		return baseDao.selectCount();
	}

	public int queryCountByEntity(T t) {
		return baseDao.selectCountByEntity(t);
	}

	public int queryCountByMap(Map<String, Object> params) {
		return baseDao.selectCountByMap(params);
	}

	public void changeById(T t) {
		baseDao.updateById(t);
	}

	public void changeByMap(Map<String, Object> params) {
		baseDao.uodateByMap(params);
	}


	
}
