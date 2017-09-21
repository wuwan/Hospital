package com.sysd.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable
{

	// Fields

	private Integer id;
	private Department department;
	private String userName;
	private String userQq;
	private Integer userAge;
	private String passWord;
	private String userSex;
	private String userPhone;
	private String docBelongHos;
	private String docBelongPart;
	private Integer docBelongPartId;
	private Integer docLevel;
	private String docTitle;
	private String isavailable;
	private Set docpaibans = new HashSet(0);
	private Set roleUsers = new HashSet(0);

	// Constructors

	/** default constructor */
	public User()
	{
	}

	/** full constructor */
	public User(Department department, String userName, String userQq,
			Integer userAge, String passWord, String userSex, String userPhone,
			String docBelongHos, String docBelongPart, Integer docBelongPartId,
			Integer docLevel, String docTitle, String isavailable,
			Set docpaibans, Set roleUsers)
	{
		this.department = department;
		this.userName = userName;
		this.userQq = userQq;
		this.userAge = userAge;
		this.passWord = passWord;
		this.userSex = userSex;
		this.userPhone = userPhone;
		this.docBelongHos = docBelongHos;
		this.docBelongPart = docBelongPart;
		this.docBelongPartId = docBelongPartId;
		this.docLevel = docLevel;
		this.docTitle = docTitle;
		this.isavailable = isavailable;
		this.docpaibans = docpaibans;
		this.roleUsers = roleUsers;
	}

	// Property accessors

	public Integer getId()
	{
		return this.id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public Department getDepartment()
	{
		return this.department;
	}

	public void setDepartment(Department department)
	{
		this.department = department;
	}

	public String getUserName()
	{
		return this.userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public String getUserQq()
	{
		return this.userQq;
	}

	public void setUserQq(String userQq)
	{
		this.userQq = userQq;
	}

	public Integer getUserAge()
	{
		return this.userAge;
	}

	public void setUserAge(Integer userAge)
	{
		this.userAge = userAge;
	}

	public String getPassWord()
	{
		return this.passWord;
	}

	public void setPassWord(String passWord)
	{
		this.passWord = passWord;
	}

	public String getUserSex()
	{
		return this.userSex;
	}

	public void setUserSex(String userSex)
	{
		this.userSex = userSex;
	}

	public String getUserPhone()
	{
		return this.userPhone;
	}

	public void setUserPhone(String userPhone)
	{
		this.userPhone = userPhone;
	}

	public String getDocBelongHos()
	{
		return this.docBelongHos;
	}

	public void setDocBelongHos(String docBelongHos)
	{
		this.docBelongHos = docBelongHos;
	}

	public String getDocBelongPart()
	{
		return this.docBelongPart;
	}

	public void setDocBelongPart(String docBelongPart)
	{
		this.docBelongPart = docBelongPart;
	}

	public Integer getDocBelongPartId()
	{
		return this.docBelongPartId;
	}

	public void setDocBelongPartId(Integer docBelongPartId)
	{
		this.docBelongPartId = docBelongPartId;
	}

	public Integer getDocLevel()
	{
		return this.docLevel;
	}

	public void setDocLevel(Integer docLevel)
	{
		this.docLevel = docLevel;
	}

	public String getDocTitle()
	{
		return this.docTitle;
	}

	public void setDocTitle(String docTitle)
	{
		this.docTitle = docTitle;
	}

	public String getIsavailable()
	{
		return this.isavailable;
	}

	public void setIsavailable(String isavailable)
	{
		this.isavailable = isavailable;
	}

	public Set getDocpaibans()
	{
		return this.docpaibans;
	}

	public void setDocpaibans(Set docpaibans)
	{
		this.docpaibans = docpaibans;
	}

	public Set getRoleUsers()
	{
		return this.roleUsers;
	}

	public void setRoleUsers(Set roleUsers)
	{
		this.roleUsers = roleUsers;
	}

}