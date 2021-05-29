package com.brocode.dao;

import java.util.List;

import com.brocode.model.State;

public interface StateDao extends GenericDAO<State>{

	List<State> getActive();

}
