package com.hos.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.sysd.dao.OrderDAO;
import com.sysd.entity.Docpaiban;
import com.sysd.entity.Order;

public class orderService<T>
{
	private OrderDAO orderdao;

	@SuppressWarnings("unchecked")
	public List<Order> queryOrder(String num, Class<Order> clazz)
			throws Exception
	{
		if (num == null || "".equals(num)) return orderdao.findAll();
		return orderdao.findByProperty("userName", num);
	}
	public Order FindByUserId(Integer id)
	{
		return orderdao.findById(id);
	}
	public void addOrder(Order order) throws Exception
	{
		System.out.print("addOrder" + order.getId());
		orderdao.save(order);
	}

// 邵文正的代码开始
	@SuppressWarnings("unchecked")
	public List<Order> FindOrderByDocID(String DocId)
	{
		return orderdao.findByProperty("docId", DocId);
	}

// 邵文正的代码结束
	public OrderDAO getOrderdao()
	{
		return orderdao;
	}

	@Autowired
	public void setOrderdao(OrderDAO orderdao)
	{
		this.orderdao = orderdao;
	}

	public void delorder(Order order)
	{
		orderdao.delete(order);
	}

}
