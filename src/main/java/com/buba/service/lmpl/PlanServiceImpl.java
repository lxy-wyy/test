package com.buba.service.lmpl;

import java.util.List;

import com.buba.pojo.Plan;
import com.buba.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buba.dao.PlanDao;
import com.buba.service.PlanService;

@Service
public class PlanServiceImpl implements PlanService{
@Autowired
private PlanDao planDao;

@Override
public int add(Plan plan) {
	// TODO Auto-generated method stub
	return planDao.add(plan);
}

@Override
public List<Plan> allavailable(int id) {
	// TODO Auto-generated method stub
	return planDao.allavailable(id);
}

@Override
public Plan allid(int id) {
	return planDao.allid(id);
}

@Override
public List<Plan> allareaid(String areaId) {
	// TODO Auto-generated method stub
	return planDao.allareaid(areaId);
}

@Override
public int update1(int id) {
	// TODO Auto-generated method stub
	return planDao.update1(id);
}

@Override
public int update2(int id) {
	// TODO Auto-generated method stub
	return planDao.update2(id);
}

@Override
public int del(int id) {
	// TODO Auto-generated method stub
	return planDao.del(id);
}

@Override
public int update3(Plan plan) {
	// TODO Auto-generated method stub
	return planDao.update3(plan);
}

@Override
public User email(String areaId) {
	// TODO Auto-generated method stub
	return planDao.email(areaId);
}

@Override
public User email1(int deptId) {
	// TODO Auto-generated method stub
	return planDao.email1(deptId);
}





}
