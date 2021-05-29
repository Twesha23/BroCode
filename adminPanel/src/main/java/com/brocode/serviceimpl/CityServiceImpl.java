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
import com.brocode.model.Admin;
import com.brocode.model.City;
import com.brocode.model.State;
import com.brocode.service.CityService;

@Service("cityService")
@Transactional
@SessionAttributes("admin")
public class CityServiceImpl implements CityService {

	@Autowired
	CityDao cityDao;

	@Autowired
	HttpSession session;
	

	@Override
	public City addCity(City city) {
		Admin ad = (Admin) session.getAttribute("admin");
		city.setCreatedBy(ad.getAdminId());
		city.setCreatedDate(new Date(System.currentTimeMillis()));
		city.setModifiedBy(ad.getAdminId());
		city.setModifiedDate(new Date(System.currentTimeMillis()));
		return cityDao.saveObject(city);
	}

	@Override
	public City getById(int id) {
		return cityDao.getById(City.class, id);
	}

	@Override
	public City updateCity(City city) {
		Admin ad = (Admin) session.getAttribute("admin");
		city.setModifiedBy(ad.getAdminId());
		city.setModifiedDate(new Date(System.currentTimeMillis()));
		return cityDao.updateObject(city);
	}

	@Override
	public List<City> getAll() {
		return cityDao.getActive();
	}
	
	@Override
	public City deleteCity(int id) {
		City city = cityDao.getById(City.class, id);
		city.setIsDeleted(1);
		return cityDao.updateObject(city);
	}

	@Override
	public List<City> getAllCitiesByStateId(int stateId) {
		return cityDao.getAllCitiesByStateId(stateId);
	}
	
	
}
