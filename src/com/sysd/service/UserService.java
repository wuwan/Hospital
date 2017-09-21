package com.sysd.service;

import java.util.List;

import com.sysd.entity.User;

public interface UserService
{
	public User SaveUser(User user);
	public void Delete(User user);
	public  User Login(User  user);
	public User findUserByid(Integer id);
	public List<User> findDoc();
	public List<User> findAll();
	public User change(Integer userid,User user);
	public List <User>findBr();
}
