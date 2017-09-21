package com.hos.service;

import java.util.List;

import com.hos.dao.UserDao;
import com.sysd.entity.User;

public class UserService<T>
{
	private UserDao dao;
	public List<User> query(Class<User> clazz) throws Exception{	
	    return dao.getUsers();
    }
	
	public List<User> queryDoctors(String userName,Class<User> clazz) throws Exception{
		if(userName == null || "".equals(userName))
			return dao.getAllObjects(clazz);
		String queryString = "SELECT u FROM User u WHERE u.userName = '"+userName+"'";
		return dao.getObjects(queryString);
	}
	public List<User> queryDDoctors(int deptID,Class<User> clazz) throws Exception{
		String queryString = "SELECT u FROM User u WHERE u.department.id = "+deptID;
		return dao.getObjects(queryString);
	}

	public UserDao getDao()
	{
		return dao;
	}

	public void setDao(UserDao dao)
	{
		this.dao = dao;
	}
	
}
