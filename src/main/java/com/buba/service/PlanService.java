package com.buba.service;

import com.buba.pojo.Plan;
import com.buba.pojo.User;

import java.util.List;


public interface PlanService {
	int add(Plan plan);
	List<Plan> allavailable(int id);
	Plan allid(int id);
	List<Plan> allareaid(String areaId);
	int update1(int id);
	int update2(int id);
	int del(int id);
	int update3(Plan plan);
	User email(String areaId);
	User email1(int deptId); 
}
