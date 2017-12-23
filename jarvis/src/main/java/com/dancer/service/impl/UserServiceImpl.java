package com.dancer.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.common.entity.Page;
import com.common.service.AbstractService;
import com.dancer.entity.User;
import com.dancer.service.UserService;
import com.dancer.dao.UserDao;

@Service
@Transactional
public class UserServiceImpl //extends AbstractService<User> 
    implements UserService{
	
	@Autowired
	private UserDao userdao;
	

	/*public void setBaseDao() {
		// TODO Auto-generated method stub
		//super.setBaseDao(userdao);
	}*/


	public void removeById(Integer id) {
		// TODO Auto-generated method stub
		
	}


	public void removeByMap(Map<String, Object> params) {
		// TODO Auto-generated method stub
		
	}


	public void removeByEntity(User t) {
		// TODO Auto-generated method stub
		
	}


	public void add(User t) {
		// TODO Auto-generated method stub
		
	}


	public User queryById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}


	public List<User> queryByMap(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return null;
	}


	public List<User> queryByEntity(User t) {
		// TODO Auto-generated method stub
		return null;
	}


	public User queryByName(String name) {
		// TODO Auto-generated method stub
		return userdao.selectByName(name);
	}


	public List<User> queryByPage(Page p) {
		// TODO Auto-generated method stub
		return null;
	}


	public int queryCount() {
		// TODO Auto-generated method stub
		return 0;
	}


	public int queryCountByEntity(User t) {
		// TODO Auto-generated method stub
		return 0;
	}


	public int queryCountByMap(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return 0;
	}


	public void changeById(User t) {
		// TODO Auto-generated method stub
		
	}


	public void changeByMap(Map<String, Object> params) {
		// TODO Auto-generated method stub
		
	}

}
