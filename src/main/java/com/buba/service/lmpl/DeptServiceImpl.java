package com.buba.service.lmpl;

import com.buba.pojo.Dept;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buba.dao.DeptDao;
import com.buba.service.DeptService;

@Service
public class DeptServiceImpl implements DeptService{
@Autowired
private DeptDao deptDao;

@Override
public Dept deptall(int id) {
	return deptDao.deptall(id);
}
}
