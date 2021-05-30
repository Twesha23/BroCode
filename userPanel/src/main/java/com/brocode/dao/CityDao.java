package com.brocode.dao;

import java.util.List;

import com.brocode.model.City;
import com.brocode.model.State;

public interface CityDao extends GenericDAO<City>{
	public List<City> getAll();
	public City getById(long id);
	public boolean deleteCity(long id);
	public long addCity(City city);
	public City editCity(long id);
	public List<City> getAllCitiesByStateId(long stateId);
	
	
}