package com.sysd.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.opensymphony.xwork2.ActionSupport;
import com.sysd.entity.Docpaiban;
import com.sysd.service.PaiBanService;

@Controller("docpaibanAction")
@Scope("prototype")
public class DocpaibanAction  extends ActionSupport 
{
	private static final long serialVersionUID = -8933581969376771421L;
	private Docpaiban docpaiban=new Docpaiban();
	private List<Docpaiban> paibanlList;
	private PaiBanService paiBanService;
	private Integer idint;
	private HttpServletRequest request=ServletActionContext.getRequest();
	private HttpSession session=request.getSession();
	public String ChangPaiBan()
	{
		String id="";
	    id=request.getParameter("id");
		if(id!=null&&id!=""){setIdint(Integer.parseInt(id));}
		else{id=(String)session.getAttribute("userid");}
		try
		{
			Docpaiban docpaibanls=new Docpaiban();
			Integer docid=Integer.parseInt(id);
			paibanlList=paiBanService.FindPaiBanByDocId(docid);
			if(!paibanlList.isEmpty())
			{
				docpaibanls=paibanlList.get(0);
				docpaiban.setDocId(docid);
				paiBanService.del(docpaibanls);
				docpaibanls=docpaiban;
				try
				{
					paiBanService.SavePaiban(docpaibanls);
				}
				catch (Exception e)
				{
					e.printStackTrace();
					paiBanService.AddPaiBan(docid, null);
				}
				
				session.setAttribute("FindPaiBan", "排班信息更新成功");
			}
			else
			{
				session.setAttribute("FindPaiBan", "该医生排班信息有误");
			}
		
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			session.setAttribute("FindPaiBan", "数据更新失败！");
		}
		
		return SUCCESS;
	}
	public String FindPaiBan()
	{
		String flageString=SUCCESS;
		String id="";
	    id=request.getParameter("id");
		if(id!=null&&id!="")
		{
			setIdint(Integer.parseInt(id));
		}
		else{id=(String)session.getAttribute("userid");}
		try
		{
			Integer docid=Integer.parseInt(id);
			paibanlList=paiBanService.FindPaiBanByDocId(docid);
			if(paibanlList.size()>0)
			{
				docpaiban=paibanlList.get(0);
				session.setAttribute("FindPaiBan", "数据更新成功！");
			}
			else {
				docpaiban=null;
				session.setAttribute("FindPaiBan", "查询排班信息失败：找不到信息");
			}
		}
		catch (Exception e)
		{
			System.out.println("在"+this.getClass().getName()+"类FindPaiBan方法出现了错误");
			e.printStackTrace();
			System.out.println("..........................................................................................................");
		}
	
		return flageString;
	}
	public Docpaiban getDocpaiban()
	{
		return docpaiban;
	}
	public PaiBanService getPaiBanService()
	{
		return paiBanService;
	}
	public void setDocpaiban(Docpaiban docpaiban)
	{
		this.docpaiban = docpaiban;
	}
	@Autowired
	public void setPaiBanService(PaiBanService paiBanService)
	{
		this.paiBanService = paiBanService;
	}
	public List<Docpaiban> getPaibanlList()
	{
		return paibanlList;
	}
	public void setPaibanlList(List<Docpaiban> paibanlList)
	{
		this.paibanlList = paibanlList;
	}
	public Integer getIdint()
	{
		return idint;
	}
	public void setIdint(Integer idint)
	{
		this.idint = idint;
	}
}
