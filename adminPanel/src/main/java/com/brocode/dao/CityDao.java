package com.brocode.dao;

import java.util.List;

import com.brocode.model.City;
import com.brocode.model.State;

public interface CityDao extends GenericDAO<City>{

	List<City> getActive();

	List<City> getAllCitiesByStateId(int stateId);
}
