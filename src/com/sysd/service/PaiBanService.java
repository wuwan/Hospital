package com.sysd.service;

import java.util.List;

import com.sysd.entity.Docpaiban;
import com.sysd.entity.User;

public interface PaiBanService
{
		public Docpaiban AddPaiBan(Integer docid,User user);
		public boolean ChangePaiban(Integer docid);
		public List<Docpaiban> FindPaiBanByDocId(Integer docid);
		public void SavePaiban(Docpaiban docpaiban);
		public void del(Docpaiban docpaiban);
}
