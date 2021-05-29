package com.brocode.service;

import java.util.List;

import com.brocode.model.State;

public interface StateService {
	public State updateState(State state);
	public List<State> getAll();
	State addState(State state);
	State getById(int id);
	State deleteState(int id);
}
