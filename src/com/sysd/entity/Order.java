package com.sysd.entity;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order implements java.io.Serializable
{

	// Fields

	private Integer id;
	private String userName;
	private String docId;
	private String docName;
	private String date;
	private String time;
	private String type;

	// Constructors

	/** default constructor */
	public Order()
	{
	}

	/** full constructor */
	public Order(String userName, String docId, String docName, String date,
			String time, String type)
	{
		this.userName = userName;
		this.docId = docId;
		this.docName = docName;
		this.date = date;
		this.time = time;
		this.type = type;
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

	public String getUserName()
	{
		return this.userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public String getDocId()
	{
		return this.docId;
	}

	public void setDocId(String docId)
	{
		this.docId = docId;
	}

	public String getDocName()
	{
		return this.docName;
	}

	public void setDocName(String docName)
	{
		this.docName = docName;
	}

	public String getDate()
	{
		return this.date;
	}

	public void setDate(String date)
	{
		this.date = date;
	}

	public String getTime()
	{
		return this.time;
	}

	public void setTime(String time)
	{
		this.time = time;
	}

	public String getType()
	{
		return this.type;
	}

	public void setType(String type)
	{
		this.type = type;
	}

}