package com.buba.dao;

import com.buba.pojo.Plan;
import com.buba.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PlanDao {
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
