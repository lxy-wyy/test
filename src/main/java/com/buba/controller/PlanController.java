package com.buba.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.buba.pojo.Dept;
import com.buba.pojo.Plan;
import com.buba.pojo.User;
import com.buba.service.DeptService;
import com.buba.service.PlanService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/plan")
public class PlanController {
@Autowired
private PlanService planService;
@Autowired
private DeptService deptService;
@RequestMapping("/add")
public String add(HttpSession session,Plan plan) {
	User user =(User) session.getAttribute("dl");
	Dept deptall = deptService.deptall(user.getDeptId());
	plan.setDeptId(user.getDeptId());
	plan.setDeptName(deptall.getDeptName());
	plan.setAreaCode(deptall.getAreaCode());
	plan.setAreaId(String.valueOf(deptall.getAreaId()));
	plan.setAvailable(deptall.getAvailable());
	plan.setType(deptall.getType());
	int add = planService.add(plan);
	if(add>0) {		
		return "usermanagerInfo1";
	}
	return "err";

 }
@RequestMapping("/allavailable")
public String allareaid(HttpSession session,int pn,Map map) {
	User user =(User) session.getAttribute("dl");
	int id=user.getDeptId();
	PageHelper.startPage(pn,3);
	List<Plan> list = planService.allavailable(id);
	PageInfo<Plan> pageInfo = new PageInfo<Plan>(list,5);
	map.put("plist", pageInfo);
	return "usermanagerInfo2";
}
@RequestMapping("/allid")
public String allid(HttpSession session,int id) {
	Plan allid = planService.allid(id);
	session.setAttribute("allid", allid);
	session.setAttribute("id",id);
	return "usermanagerInfo3";
}
@RequestMapping("/allareaid")
public String allavailable(HttpSession session,int pn,Map map) {
	User user =(User) session.getAttribute("dl");
	String areaId = String.valueOf(user.getAreaId());
	PageHelper.startPage(pn,3);
	List<Plan> list = planService.allareaid(areaId);
	PageInfo<Plan> pageInfo = new PageInfo<Plan>(list,5);
	map.put("plistt", pageInfo);
	return "usermanagerInfo4";
}
@RequestMapping("/update1")
public String update1(HttpSession session,int id) {
	int update1 = planService.update1(id);
	if(update1>0) {		
		return "redirect:/plan/allareaid?pn=1";
	}
	return "err";
}
@RequestMapping("/update2")
public String update2(HttpSession session,int id) {
	int update2 = planService.update2(id);
	if(update2>0) {		
		return "redirect:/plan/allareaid?pn=1";
	}
	return "err";
}
@RequestMapping("/del")
public String del(HttpSession session,int id) {
	int del = planService.del(id);
	if(del>0) {		
		return "redirect:/plan/allareaid?pn=1";
	}
	return "err";
}
@ResponseBody
@RequestMapping("/allid2")
public Plan allid2(HttpSession session,int id) {
	Plan allid2 = planService.allid(id);
	return allid2;
}
@RequestMapping("/update3")
public String update3(HttpSession session,Plan plan) {
	int update3 = planService.update3(plan);	
	if(update3>0) {		
		return "redirect:/plan/allavailable?pn=1";
	}
	return "err";
}


}
