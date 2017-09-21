package com.hos.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sysd.entity.User;

import com.hos.service.UserService;


public class UserAction
{
    private static final long serialVersionUID = -281275682819237996L;
	
	private User user = new User(); 
	
	private UserService<User> userService;
	
	private List<User> users;
	
	private String searchText;
	
	public String doQuery() throws Exception{
		searchText = getParam("queryText");
		users = userService.queryDoctors(searchText,User.class);
		return "login";
	}
	/////////////////////////////进入科室主页时的医生信息//////////////////////////////////
	public String doDDQuery() throws Exception{
		try{
			String deptId = getParam("deptID");
			int deptID=Integer.parseInt(deptId);
			users = userService.queryDDoctors(deptID,User.class);
			return "jinru";
		}catch (Exception e) {
			e.printStackTrace();
			return "error";
			}
	}
	//////////////////////查询医生/////////////////////////////////////
	public String doDoctorQuery() throws Exception{
		try{
			searchText = getParam("queryText");
			users = userService.queryDoctors(searchText,User.class);
			return "success";
		}catch (Exception e) {
			e.printStackTrace();
			return "error";
			}
	}
/////////////////////////////查询所有医生////////////////////////////////
     public String doAllDoctor() throws Exception{
           try{
                     users = userService.queryDoctors(searchText,User.class);
                     return "success";
                }catch (Exception e) {
             e.printStackTrace();
            return "error";
      }
}
	protected String getParam(String key){
		return ServletActionContext.getRequest().getParameter(key);
	}

	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}

	public UserService<User> getUserService()
	{
		return userService;
	}

	public void setUserService(UserService<User> userService)
	{
		this.userService = userService;
	}

	public List<User> getUsers()
	{
		return users;
	}

	public void setUsers(List<User> users)
	{
		this.users = users;
	}

	public String getSearchText()
	{
		return searchText;
	}

	public void setSearchText(String searchText)
	{
		this.searchText = searchText;
	}
	
}
