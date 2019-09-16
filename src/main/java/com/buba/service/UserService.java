package com.buba.service;

import com.buba.pojo.Area;
import com.buba.pojo.User;

import java.util.List;

public interface UserService {

    User selUser(String username, String password);

    User dl ( String username, String password);
    int update(String username, String password);
    List<Area> all();
    List<Area> getall(int id);
    User getid(String username);
    int del(String username);
    int add(User user);
    int update1(int id,String usercode,String username,String level);
    List<Area> getdept(int id);
    int del1(int id);
    int del2(int id);
    int update2(int id,String name);
    int update3(int id,String name);
    int add1(String name,String pIdString,String isParent);
    int add2(String name,String pId,String isParent);


}
