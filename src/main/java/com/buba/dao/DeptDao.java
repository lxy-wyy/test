package com.buba.dao;


import com.buba.pojo.Dept;
import org.springframework.stereotype.Repository;

@Repository
public interface DeptDao {
Dept deptall(int id);
}
