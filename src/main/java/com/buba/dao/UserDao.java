package com.buba.dao;

import com.buba.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

    User selUser(@Param("name")String username,@Param("pwd")String password);

}
