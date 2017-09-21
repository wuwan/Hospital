package com.sysd.tests;
import java.util.ArrayList;
import java.util.List;
import com.sysd.entity.Page;
public class PageUtil
{
	//所有数据-------页面对象------每页显示多少条数据
	public static Page setPageInfo( List<?> reslutList, int CurrentPage,int  span)
	{
		Page page=new Page();
		//总的记录数
		int totalRecord = reslutList.size();
		if(totalRecord!=0)
		{
			//总页数
			int totalPage;
			//设置当前页
			page.setCurrentPage(CurrentPage);
			page.setSpan(span);
			if((totalRecord % page.getSpan()) == 0)
			{
				totalPage = totalRecord / page.getSpan();
			}
			else
			{
				totalPage = (totalRecord /span) + 1;
			}//总页数计算

			Object[] dataArray =reslutList.toArray();//转换成数组

			@SuppressWarnings("unchecked")
			List<Object> dataList = new ArrayList();
			//显示的页数超出了范围
			if(page.getCurrentPage() <= 0)//当前页码<0
			{
				page.setCurrentPage(1);
			}
			if(page.getCurrentPage() >= totalPage)//当前页码大于最大分页数
			{
				page.setCurrentPage(totalPage);
			}
			//这一页要显示的数据的起始数据点
			int index = (page.getCurrentPage() - 1) * (page.getSpan());//从哪一条数据开始显示数据
			//数据还够page.getSpan()条 可以   完整的显示一页
			if((dataArray.length - page.getSpan()) >= index)
			{
				int j = 0;
				//获取要显示的数据
				for(int i = index;j < page.getSpan();i++,j++)
				{
					Object ins = (dataArray[i]);
					dataList.add(ins);
				}
			}
			else
			{
				for(int i = index;i < dataArray.length;i++)
				{
					Object ins = (dataArray[i]);
					dataList.add(ins);
				}
			}
			page.setTotalRecord(totalRecord);//总记录数
			page.setTotalPage(totalPage);//总页数
			page.setDataList(dataList);//页面数据
			return page;
		}
		else
		{
			return null;
		}
	}
	public PageUtil(){}//构造函数

}