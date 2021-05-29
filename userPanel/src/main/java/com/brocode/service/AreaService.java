package com.brocode.service;

import java.util.List;

import com.brocode.model.Area;
import com.brocode.model.City;

public interface AreaService {
	
	
	
	public List<Area> getAll();
	
	public List<Area> getAllAreasByCityId(long cityId);

}
