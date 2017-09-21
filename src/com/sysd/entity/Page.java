package com.sysd.entity;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Page {

	//总页数
	private int totalPage;
	//总记录数
	private int totalRecord;
	//当前页数
	private int currentPage;
	//每页显示的记录数
	private int span=50;
	//要显示的数据
	private List<?> dataList;
	public Page()
	{
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public List<?> getDataList() {
		return dataList;
	}
	public int getSpan() {
		return span;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public void setDataList(List<Object> dataList) {
		this.dataList = dataList;
	}
	public void setSpan(int span) {
		this.span = span;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}




}
