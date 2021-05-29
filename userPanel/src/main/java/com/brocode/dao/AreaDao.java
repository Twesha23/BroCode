package com.brocode.dao;

import java.util.List;

import com.brocode.model.Area;

public interface AreaDao extends GenericDAO<Area>{
	public List<Area> getAll();
	public List<Area> getAreasByCityId(long cityId);
	public Area getAllDetails(long areaId);
	
}
