package com.dancer.dao;

import org.apache.ibatis.annotations.Param;

import com.common.dao.BaseDao;
import com.dancer.entity.User;


public interface UserDao extends BaseDao<User>{
	/*public void insertUser(User user);
	public User selectByName(User user);
	public User selectName(String username);
	public void Changepsw(@Param("username")String username,@Param("password")String password);*/
}
