package com.brocode.serviceimpl;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.brocode.dao.CityDao;
import com.brocode.dao.StateDao;

import com.brocode.model.City;
import com.brocode.model.State;
import com.brocode.service.CityService;

@Service("cityservice")
@Transactional

public class CityServiceImpl implements CityService {

	@Autowired
	CityDao citydao;
	
	public long addCity(City city) {
		if(city.getCityId()<=1)
		{
			city.setCreatedBy(1);
			city.setCreatedDate(new Date(System.currentTimeMillis()));
		}
		else
		{
			city.setModifiedBy(1);
			city.setModifiedDate(new Date(System.currentTimeMillis()));
		}
		
		return citydao.addCity(city);
	}

	public City editCity(long id) {
		// TODO Auto-generated method stub
		return citydao.editCity(id);
	}

	public boolean deleteCity(long id) {
		// TODO Auto-generated method stub
		return citydao.deleteCity(id);
	}

	public List<City> getAll() {
		// TODO Auto-generated method stub
		return citydao.getAll();
	}

	public int updateCity(City city) {
		// TODO Auto-generated method stub
		return 0;
	}

	public City getById(long id) {
		// TODO Auto-generated method stub
		return citydao.getById(id);
	}

	public List<City> getAllCitiesByStateId(long stateId) {
		// TODO Auto-generated method stub
		return citydao.getAllCitiesByStateId(stateId);
	}

}