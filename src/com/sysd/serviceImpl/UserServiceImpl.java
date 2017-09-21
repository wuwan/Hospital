package com.sysd.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.sysd.dao.UserDAO;
import com.sysd.entity.Role;
import com.sysd.entity.RoleUser;
import com.sysd.entity.User;
import com.sysd.service.UserService;
@Component
public class UserServiceImpl implements UserService {
	private UserDAO userDAO;
	private List<User> userlist;
	private List<User> returnuserlist=new ArrayList<User>(0);
	private Set<RoleUser> roleset;
	@Override
	public void Delete(User user)
	{
		try
		{
			userDAO.delete(user);
		} catch (Exception e)
		{
			System.out.println("在"+this.getClass().getName()+"类，执行delete方法的时候出现了如下错误：");
			e.printStackTrace();
			System.out.println("******************************************************************");
		}
	}
	public UserDAO getUserDAO() {
		return userDAO;
	}
	@Override
	public User Login(User user)
	{
		Integer length=-1;
		try
		{
			String username=user.getUserName();
			System.out.println("username"+username);
			if(username!=null)
			{
				username=username.trim();
				@SuppressWarnings("unchecked")
				List<User> userlist=userDAO.findByUserName(username);
				length=userlist.size();
				if(length==1)
				{
					return userlist.get(0);
				}
			}
		} 
		catch (Exception e)
		{
			System.out.println("在"+this.getClass().getName()+"类，执行 Login  方法的时候出现了如下错误：");
			e.printStackTrace();
			System.out.println("******************************************************************");
		}
		return null;
	}
	@Override
	public User SaveUser(User user) 
	{
		if(user!=null)
		{
			user.setDepartment(null);
			user.setIsavailable("是");
			try 
			{
				userDAO.save(user);
			} 
			catch (Exception e)
			{
				System.out.println("在"+this.getClass().getName()+"类，执行save方法的时候出现了如下错误：");
				e.printStackTrace();
				System.out.println("******************************************************************");
			}
		}
		return user;
	}
	@Autowired
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	@Override
	public User findUserByid(Integer id)
	{
		return userDAO.findById(id);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<User> findDoc()
	{
		returnuserlist.clear();
		userlist=userDAO.findAll();
		for (User user : userlist)
		{
			roleset=user.getRoleUsers();
			for (RoleUser roleuser : roleset)
			{
				if("医生".equals(roleuser.getRole().getRoleName().trim()))
				{
					returnuserlist.add(user);
				}
			}
		}
		return returnuserlist;
	}
	public List<User> getUserlist()
	{
		return userlist;
	}
	public void setUserlist(List<User> userlist)
	{
		this.userlist = userlist;
	}
	public List<User> getReturnuserlist()
	{
		return returnuserlist;
	}
	public void setReturnuserlist(List<User> returnuserlist)
	{
		this.returnuserlist = returnuserlist;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<User> findAll()
	{
		return userDAO.findAll();
	}
	@Override
	public User change(Integer userid, User user)
	{
		User olduser=this.findUserByid(userid);
		if(user!=null&&olduser!=null)
		{
			olduser.setUserName(user.getUserName());
			olduser.setUserAge(user.getUserAge());
			olduser.setUserPhone(user.getUserPhone());
			olduser.setDocTitle(user.getDocTitle());
			olduser.setDocBelongHos(user.getDocBelongHos());
			olduser.setUserSex(user.getUserSex());
			olduser.setUserQq(user.getUserQq());
			olduser.setDocLevel(100);
			try
			{
				userDAO.save(olduser);
			}
			catch (Exception e)
			{
				System.out.println("修改用户信息出错...");
				e.printStackTrace();
				System.out.println(".........................................................");
			}
		}

		return olduser;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<User> findBr()
	{
		returnuserlist.clear();
		userlist=userDAO.findAll();
		for (User user : userlist)
		{
			roleset=user.getRoleUsers();
			for (RoleUser roleuser : roleset)
			{
				if("普通用户".equals(roleuser.getRole().getRoleName().trim()))
				{
					returnuserlist.add(user);
				}
			}
		}
		return returnuserlist;
	}

}
