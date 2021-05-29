package com.brocode.daoimpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.brocode.dao.StateDao;
import com.brocode.model.Admin;
import com.brocode.model.State;


@Repository("stateDao")
public class StateDaoImpl extends GenericDaoImpl<State> implements StateDao{
	@Override
	public List<State> getActive() {
		return (List<State>) super.getByQuery("FROM State s WHERE s.isDeleted=0");
	}
	
}
