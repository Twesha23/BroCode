package com.brocode.daoimpl;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.brocode.dao.CityDao;
import com.brocode.dao.StateDao;
import com.brocode.model.City;
import com.brocode.model.State;
import com.brocode.util.DbUtility;

@Repository("cityDao")
public class CityDaoImpl  extends GenericDaoImpl<City> implements CityDao{

	@Override
	public List<City> getActive() {
		
		String query="select c.cityId as cityId,c.cityName as cityName,s.stateName as stateName,"
				+ "c.createdBy as createdBy,c.modifiedBy as modifiedBy ,c.stateId as stateId"
				+ " FROM City c inner join "
				+ "State s ON c.stateId=s.stateId WHERE c.isDeleted=0 and s.isDeleted=0 ";
		return DbUtility.getListData(query, City.class);
	}

	@Override
	public List<City> getAllCitiesByStateId(int stateId) {
		String query="select c.cityId as cityId,c.cityName as cityName,s.stateName as stateName,"
				+ "c.createdBy as createdBy,c.modifiedBy as modifiedBy ,c.stateId as stateId"
				+ " FROM City c inner join "
				+ "State s ON c.stateId=s.stateId WHERE c.isDeleted=0 and s.isDeleted=0 "
				+ "AND c.stateId ="+stateId;
		List<City> list = DbUtility.getListData(query, City.class);
		//return DbUtility.getListData(query, City.class);
		return list;
	}
}
