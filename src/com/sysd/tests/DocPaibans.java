package com.sysd.tests;
import com.sysd.entity.Docpaiban;
import com.sysd.entity.User;
public class DocPaibans
{
 
	public static  Docpaiban  paiban(Integer id ,User user)
	{
		Docpaiban docpaiban= new Docpaiban();
		docpaiban.setDocId(id);
//		周五
		docpaiban.setFrieve("4");
		docpaiban.setFriam("4");
		docpaiban.setFripm("4");
//		周一
		docpaiban.setMonam("4");
		docpaiban.setMoneve("4");
		docpaiban.setMonpm("4");
//		周六
		docpaiban.setSatam("-1");
		docpaiban.setSateve("-1");
		docpaiban.setSatpm("-1");
//		周日
		docpaiban.setSunam("-1");
		docpaiban.setSuneve("-1");
		docpaiban.setSunpm("-1");
//		周四
		docpaiban.setThuam("4");
		docpaiban.setThupm("4");
		docpaiban.setThueve("4");
//		周三
		docpaiban.setWenam("4");
		docpaiban.setWeneve("4");
		docpaiban.setWenpm("4");
//		周二
		docpaiban.setTueam("4");
		docpaiban.setTuepm("4");
		docpaiban.setTueeve("4");
		return docpaiban;
		
	}
}
