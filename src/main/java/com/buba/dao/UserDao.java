package com.buba.dao;

import com.buba.pojo.Area;
import com.buba.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {

    User selUser(@Param("name")String username,@Param("pwd")String password);

    User dl (@Param("username") String username,@Param("password") String password);

    int update(@Param("username") String username,@Param("password") String password);

    List<Area> all();

    List<Area> getall(int id);

    User getid(String username);

    int del(String username);

    int add(User user);

    int update1(@Param("id")int id,@Param("usercode")String usercode,@Param("username")String username,@Param("level")String level);

    List<Area> getdept(int id);

    int del1(int id);

    int del2(int id);

    int update2(@Param("id")int id,@Param("name")String name);

    int update3(@Param("id")int id,@Param("name")String name);

    int add1(@Param("name")String name,@Param("pId")String pId,@Param("isParent")String isParent);

    int add2(@Param("name")String name,@Param("pId")String pId,@Param("isParent")String isParent);

}
