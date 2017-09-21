package com.sysd.tests;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test
{
	@org.junit.Test
	public void tests()
	{
		BeanFactory beanFactory=new ClassPathXmlApplicationContext("applicationContext.xml");
		System.out.println(beanFactory.getBean("sessionFactory").getClass());
		System.out.println(beanFactory.getBean("rolePrivilegeServiceImpl").getClass());
		System.out.println(beanFactory.getBean("roleUserServiceImpl").getClass());
		System.out.println(beanFactory.getBean("userServiceImpl").getClass());
		System.out.println("s".equals(null));
	}
}
