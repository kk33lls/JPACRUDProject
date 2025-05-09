package com.skilldistillery.fourteeners.data;

import java.util.List;

import com.skilldistillery.fourteeners.entities.Fourteener;

public interface FourteenerDAO {
	public Fourteener findById(int mtId);
	public List<Fourteener> getList();
	public List<Fourteener> findByKeyword(String name);
	
	 void create(Fourteener newMt);
	 Fourteener update(int id, Fourteener updateMt);
	 void delete(Fourteener mtToDelete);
}
