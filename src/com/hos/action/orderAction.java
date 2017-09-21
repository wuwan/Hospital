package com.hos.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.sysd.entity.Order;
import com.hos.service.orderService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("unused")
public class orderAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private   Order order = new Order(); 

	private orderService orService;
	
	private List<Order> ors;

	private String searchText;
	
	private List<Order> list;

	
	
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public orderService getOrService() {
		return orService;
	}

	public void setOrService(orderService orService) {
		this.orService = orService;
	}

	public List<Order> getOrs() {
		return ors;
	}

	public void setOrs(List<Order> ors) {
		this.ors = ors;
	}

	/************查看详细信息*******/
//	
	protected String getParam(String key){
		return ServletActionContext.getRequest().getParameter(key);
	}
	
	
	
}
