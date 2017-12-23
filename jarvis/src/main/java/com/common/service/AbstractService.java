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
		// TODO Auto-generated method stub
		this.baseDao = basedao;
	}
	
	public void removeById(Integer id) {
		// TODO Auto-generated method stub
		baseDao.deleteById(id);
	}

	public void removeByMap(Map<String, Object> params) {
		// TODO Auto-generated method stub
		baseDao.deleteByMap(params);
	}

	public void removeByEntity(T t) {
		// TODO Auto-generated method stub
		baseDao.deleteByEntity(t);
	}

	public void add(T t) {
		// TODO Auto-generated method stub
		baseDao.insert(t);
	}

	public T queryById(Integer id) {
		// TODO Auto-generated method stub
		return baseDao.selectById(id);
	}

	public List<T> queryByMap(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return baseDao.selectByMap(params);
	}

	public List<T> queryByEntity(T t) {
		// TODO Auto-generated method stub
		return baseDao.selectByEntity(t);
	}

	public T queryByName(String name) {
		// TODO Auto-generated method stub
		return baseDao.selectByName(name);
	}

	public List<T> queryByPage(Page p) {
		// TODO Auto-generated method stub
		return baseDao.selectByPage(p);
	}

	public int queryCount() {
		// TODO Auto-generated method stub
		return baseDao.selectCount();
	}

	public int queryCountByEntity(T t) {
		// TODO Auto-generated method stub
		return baseDao.selectCountByEntity(t);
	}

	public int queryCountByMap(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return baseDao.selectCountByMap(params);
	}

	public void changeById(T t) {
		// TODO Auto-generated method stub
		baseDao.updateById(t);
	}

	public void changeByMap(Map<String, Object> params) {
		// TODO Auto-generated method stub
		baseDao.uodateByMap(params);
	}


	
}
