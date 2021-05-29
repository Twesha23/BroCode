package com.brocode.serviceimpl;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.brocode.dao.AreaDao;
import com.brocode.dao.CityDao;

import com.brocode.model.Area;
import com.brocode.model.City;
import com.brocode.service.AreaService;

@Service("areaservice")
@Transactional

public class AreaServiceImpl implements AreaService {

	@Autowired
	AreaDao areadao;
	
	

	public List<Area> getAll() {
		return areadao.getAll();
	}



	public List<Area> getAllAreasByCityId(long cityId) {
		return areadao.getAreasByCityId(cityId);
	}

	
}