package com.buba.service.lmpl;

import com.buba.dao.UserDao;
import com.buba.pojo.Area;
import com.buba.pojo.User;
import com.buba.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServicelmpl implements UserService {

    @Autowired
    private UserDao ud;

    @Override
    public User selUser(String username, String password) {
        return ud.selUser(username,password);
    }


    @Override
    public User dl(String username, String password) {
        // TODO Auto-generated method stub
        return ud.dl(username, password);
    }

    @Override
    public int update(String username, String password) {
        // TODO Auto-generated method stub
        return ud.update(username,password);
    }

    @Override
    public List<Area> all() {
        // TODO Auto-generated method stub
        return ud.all();
    }

    @Override
    public List<Area> getall(int id) {
        // TODO Auto-generated method stub
        return ud.getall(id);
    }

    @Override
    public User getid(String username) {
        // TODO Auto-generated method stub
        return ud.getid(username);
    }

    @Override
    public int del(String username) {
        // TODO Auto-generated method stub
        return ud.del(username);
    }

    @Override
    public int add(User user) {
        // TODO Auto-generated method stub
        return ud.add(user);
    }

    @Override
    public int update1(int id, String usercode, String username, String level) {
        // TODO Auto-generated method stub
        return ud.update1(id, usercode, username, level);
    }

    @Override
    public List<Area> getdept(int id) {
        // TODO Auto-generated method stub
        return ud.getdept(id);
    }

    @Override
    public int del1(int id) {
        // TODO Auto-generated method stub
        return ud.del1(id);
    }

    @Override
    public int del2(int id) {
        // TODO Auto-generated method stub
        return ud.del2(id);
    }

    @Override
    public int update2(int id, String name) {
        // TODO Auto-generated method stub
        return ud.update2(id, name);
    }

    @Override
    public int update3(int id, String name) {
        // TODO Auto-generated method stub
        return ud.update3(id, name);
    }

    @Override
    public int add1(String name, String pId, String isParent) {
        // TODO Auto-generated method stub
        return ud.add1(name, pId, isParent);
    }

    @Override
    public int add2(String name, String pId, String isParent) {
        // TODO Auto-generated method stub
        return ud.add2(name, pId, isParent);
    }





}
