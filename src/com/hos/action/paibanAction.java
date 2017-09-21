package com.hos.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.sysd.entity.Order;
import com.hos.service.docpaibanService;
import com.hos.service.orderService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sysd.entity.Docpaiban;
import com.sysd.service.UserService;

import com.hos.action.dateWeek;

@SuppressWarnings("unused")
public class paibanAction extends ActionSupport
{

	private static final long serialVersionUID = 1L;
	private Docpaiban docpaiban = new Docpaiban();
	private List<Docpaiban> docpanbans;
	private HttpServletRequest request = ServletActionContext.getRequest();
	private HttpSession session = request.getSession();
	private dateWeek dt = new dateWeek();

	private List<Docpaiban> list;
	private Order order = new Order();

	private List<Order> ors;
	@SuppressWarnings("rawtypes")
	private orderService orService;

	@SuppressWarnings("rawtypes")
	private docpaibanService pbService;
	private String searchText;

	private UserService userService;

	/************ 查看详细信息 *******/
	@SuppressWarnings("unchecked")
	public String doQuery() throws Exception
	{

		try
		{
			searchText = getParam("num");

			String username = getParam("name");// 获取医生名称
			String n = new String(username.getBytes("ISO8859-1"), "utf-8");
			ActionContext.getContext().getSession().put("docName", n);

			docpanbans = pbService.queryDocpaiban(searchText, Docpaiban.class);
			return "pb";
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return ERROR;
		}

	}

	public String doQuery1(String num) throws Exception
	{

		try
		{

			docpanbans = pbService.queryDocpaiban(num, Docpaiban.class);
			return "pb";
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return ERROR;
		}

	}

	public Docpaiban getDocpaiban()
	{
		return docpaiban;
	}

	public List<Docpaiban> getDocpanbans()
	{
		return docpanbans;
	}

	public Order getOrder()
	{
		return order;
	}

	public List<Order> getOrs()
	{
		return ors;
	}

	public orderService getOrService()
	{
		return orService;
	}

	protected String getParam(String key)
	{
		return ServletActionContext.getRequest().getParameter(key);
	}

	public docpaibanService getPbService()
	{
		return pbService;
	}

	public UserService getUserService()
	{
		return userService;
	}

	public void setDocpaiban(Docpaiban docpaiban)
	{
		this.docpaiban = docpaiban;
	}

	public void setDocpanbans(List<Docpaiban> docpanbans)
	{
		this.docpanbans = docpanbans;
	}

	public void setOrder(Order order)
	{
		this.order = order;
	}

	public void setOrs(List<Order> ors)
	{
		this.ors = ors;
	}

	public void setOrService(orderService orService)
	{
		this.orService = orService;
	}

	public void setPbService(docpaibanService pbService)
	{
		this.pbService = pbService;
	}

	@Autowired
	public void setUserService(UserService userService)
	{
		this.userService = userService;
	}

	public String yuyue() throws Exception
	{
		String nameString = (String) session.getAttribute("loginuser");
		searchText = getParam("num");
		String day = getParam("day");

		String time = getParam("time");
		String date = getParam("date");
		String week;
		String monam = null, monpm = null, moneve = null, tueam = null, tuepm = null, tueeve = null, wenam = null, wenpm = null, weneve = null;
		String thuam = null, thupm = null, thueve = null, friam = null, fripm = null, frieve = null, satam = null, satpm = null, sateve = null, sunam = null, sunpm = null, suneve = null;

		try
		{
			week = dt.getWeek(day);
			System.out.print("+++++++++++++" + week);
			list = pbService.findByLoginUserId(Integer.parseInt(searchText));
			Docpaiban docpaibans = new Docpaiban();
			docpaibans = list.get(0);
			for (Docpaiban docpaiban : list)
			{
				monam = docpaiban.getMonam();
				monpm = docpaiban.getMonpm();
				moneve = docpaiban.getMoneve();
				tueam = docpaiban.getTueam();
				tuepm = docpaiban.getTuepm();
				tueeve = docpaiban.getTueeve();
				wenam = docpaiban.getWenam();
				wenpm = docpaiban.getWenpm();
				weneve = docpaiban.getWeneve();
				thuam = docpaiban.getThuam();
				thupm = docpaiban.getThupm();
				thueve = docpaiban.getThueve();
				friam = docpaiban.getFriam();
				fripm = docpaiban.getFripm();
				frieve = docpaiban.getFrieve();
				satam = docpaiban.getSatam();
				satpm = docpaiban.getSatpm();
				sateve = docpaiban.getSateve();
				sunam = docpaiban.getSunam();
				sunpm = docpaiban.getSunpm();
				suneve = docpaiban.getSuneve();
			}
			docpaiban.setDocId(Integer.parseInt(searchText));
			docpaiban.setMonam(monam);
			docpaiban.setMonpm(monpm);
			docpaiban.setMoneve(moneve);
			docpaiban.setTueam(tueam);
			docpaiban.setTuepm(tuepm);
			docpaiban.setTueeve(tueeve);
			docpaiban.setWenam(wenam);
			docpaiban.setWenpm(wenpm);
			docpaiban.setWeneve(weneve);
			docpaiban.setThuam(thuam);
			docpaiban.setThupm(thupm);
			docpaiban.setThueve(thueve);
			docpaiban.setFriam(friam);
			docpaiban.setFripm(fripm);
			docpaiban.setFrieve(frieve);
			docpaiban.setSatam(satam);
			docpaiban.setSatpm(satpm);
			docpaiban.setSateve(sateve);
			docpaiban.setSunam(sunam);
			docpaiban.setSunpm(sunpm);
			docpaiban.setSuneve(suneve);
			System.out.println("-----" + docpaiban.getMonam());
			/* 修改排班信息 */
			if ("星期一".equals(week))
			{
				if ("am".equals(time)) docpaiban.setMonam((Integer
						.parseInt(monam) - 1) + "");
				else if ("pm".equals(time)) docpaiban.setMonpm((Integer
						.parseInt(monpm) - 1) + "");
				else docpaiban.setMoneve((Integer.parseInt(moneve) - 1) + "");
			}
			else if ("星期二".equals(week))
			{
				if ("am".equals(time)) docpaiban.setTueam((Integer
						.parseInt(tueam) - 1) + "");
				else if ("pm".equals(time)) docpaiban.setTuepm((Integer
						.parseInt(tuepm) - 1) + "");
				else docpaiban.setTueeve((Integer.parseInt(tueeve) - 1) + "");
			}
			else if ("星期三".equals(week))
			{
				if ("am".equals(time)) docpaiban.setWenam((Integer
						.parseInt(wenam) - 1) + "");
				else if ("pm".equals(time)) docpaiban.setWenpm((Integer
						.parseInt(wenpm) - 1) + "");
				else docpaiban.setWeneve((Integer.parseInt(weneve) - 1) + "");
			}
			else if ("星期四".equals(week))
			{
				if ("am".equals(time)) docpaiban.setThuam((Integer
						.parseInt(thuam) - 1) + "");
				else if ("pm".equals(time)) docpaiban.setThupm((Integer
						.parseInt(thupm) - 1) + "");
				else docpaiban.setThueve((Integer.parseInt(thueve) - 1) + "");
			}
			else if ("星期五".equals(week))
			{
				if ("am".equals(time)) docpaiban.setFriam((Integer
						.parseInt(friam) - 1) + "");
				else if ("pm".equals(time)) docpaiban.setFripm((Integer
						.parseInt(fripm) - 1) + "");
				else docpaiban.setFrieve((Integer.parseInt(frieve) - 1) + "");
				System.out.print("______________" + docpaiban.getFriam());
			}
			else if ("星期六".equals(week))
			{
				if ("am".equals(time)) docpaiban.setSatam((Integer
						.parseInt(satam) - 1) + "");
				else if ("pm".equals(time)) docpaiban.setSatpm((Integer
						.parseInt(satpm) - 1) + "");
				else docpaiban.setSateve((Integer.parseInt(sateve) - 1) + "");
			}
			else if ("星期日".equals(week))
			{
				if ("am".equals(time)) docpaiban.setSunam((Integer
						.parseInt(sunam) - 1) + "");
				else if ("pm".equals(time)) docpaiban.setSunpm((Integer
						.parseInt(sunpm) - 1) + "");
				else docpaiban.setSuneve((Integer.parseInt(suneve) - 1) + "");
			}

			/* 患者预约单 */
			
			String docn = (String) ActionContext.getContext().getSession()
					.get("docName");
			String docn1=new String(docn.getBytes("ISO8859-1"),"utf-8");
			String type = "请及时前往医院就诊！";
			order.setUserName(nameString);
			order.setDocId(searchText);
			order.setDocName(docn);
			if ("am".equals(time))
			{
				if ("4".equals(date))
				{
					order.setTime("上午:8:00-9:00");
				}
				else if ("3".equals(date)) order.setTime("上午:9:00-10:00");
				else if ("2".equals(date)) order.setTime("上午:10:00-11:00");
				else if ("1".equals(date)) order.setTime("上午:11:00-12:00");
				else order.setTime("上午");
			}
			else if ("pm".equals(time))
			{
				if ("3".equals(date))
				{
					order.setTime("下午:3:00-4:00");
				}
				else if ("2".equals(date)) order.setTime("下午:4:00-5:00");
				else if ("1".equals(date)) order.setTime("下午:5:00-6:00");
				else order.setTime("下午");
			}
			else if ("eve".equals(time))
			{
				order.setTime("晚上:7:00-8:00");
			}
			order.setDate(day);
			order.setType(type);
			pbService.delpaiban(docpaibans);
			pbService.modifyUser(docpaiban);// 修改排班
			orService.addOrder(order);
		}
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return doQueryOrder(nameString);
	}

	public String doQueryOrder(String num) throws Exception
	{
		try
		{
			ors = orService.queryOrder(num, Order.class);
			return "orderSuc";
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return ERROR;
		}

	}

	public void cancel()
	{
		String id = getParam("id");
		Order orderlinshi;
		try
		{
			Integer idInteger = Integer.parseInt(id);
			orderlinshi = orService.FindByUserId(idInteger);
			if(orderlinshi!=null)
			{
				orService.delorder(orderlinshi);
				
			}
			else
			{
				request.setAttribute("reslut", "没有预订信息");
			}
		
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

	}
}
