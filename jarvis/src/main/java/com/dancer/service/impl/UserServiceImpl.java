package com.dancer.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.common.service.AbstractService;
import com.dancer.dao.UserDao;
import com.dancer.entity.User;
import com.dancer.service.UserService;



@Service
@Transactional
public class UserServiceImpl extends AbstractService<User> implements UserService{
	
	@Autowired
	private UserDao userdao;
	
	public UserServiceImpl(){	
		setBaseDao();
	}
	
	public void setBaseDao() {
		System.out.println(UserDao.class+"----------------"+userdao);
		super.setBaseDao(userdao);
	}

}
