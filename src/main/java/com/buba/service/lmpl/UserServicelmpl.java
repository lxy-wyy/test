package com.buba.service.lmpl;

import com.buba.dao.UserDao;
import com.buba.pojo.User;
import com.buba.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServicelmpl implements UserService {

    @Autowired
    private UserDao ud;

    @Override
    public User selUser(String username, String password) {
        return ud.selUser(username,password);
    }
}
