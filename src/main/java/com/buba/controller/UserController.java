package com.buba.controller;

import com.buba.pojo.Area;
import com.buba.pojo.User;
import com.buba.service.UserService;
import com.buba.util.MD5Utils;
import com.buba.util.SendSMSUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService us;

    @RequestMapping("login")
    public String fun(String username, String password, HttpSession session) {
        User user = us.selUser(username, password);
        session.setAttribute("user", user);
        return "common/left";
    }


    @RequestMapping("/add1")
    @ResponseBody
    public boolean add1(String name, String pId, String isParent){
        boolean c=true;
        if(isParent.equals("true")) {
            isParent="true";
            int add1 = us.add1(name, pId, isParent);
        }else {
            isParent="xian";
            int add2 = us.add2(name, pId, isParent);
        }
        return c;


    }

    @RequestMapping("/update2")
    @ResponseBody
    public boolean update2(String isParent,int id,String name){
        boolean b=true;
        if(isParent.equals("true")) {
            int update2 = us.update2(id, name);
        }else {
            int update3 = us.update3(id, name);
        }
        return b;


    }

    @RequestMapping("/del1")
    @ResponseBody
    public boolean del(String isParent,int id){
        boolean a=true;
        if(isParent.equals("true")) {
            int del1 = us.del1(id);
        }else {
            int del2 = us.del2(id);
        }
        return a;


    }

    @RequestMapping("/getdept")
    @ResponseBody
    public List<Area> getdept(Integer id, HttpSession session){
        System.out.println(id);
        List<Area> getdept = us.getdept(id);
        session.setAttribute("getdept", getdept);
        System.out.println(getdept);
        return getdept;
    }

    @RequestMapping("/update1")
    @ResponseBody
    public int update1(int id,String usercode,String username,String level){
        int update = us.update1(id,usercode,username,level);
        System.out.println(update);
        return update;
    }

    @RequestMapping("/add")
    public String add(HttpSession session,User user){
        User aa =(User) session.getAttribute("getid");
        user.setAreaId(aa.getAreaId());
        user.setAreaCode(aa.getAreaCode());
        user.setLevel(aa.getLevel());
        String password = MD5Utils.md5(user.getPassword());
        user.setPassword(password);
        int add = us.add(user);
        System.out.println(add);
        return "box";
    }
    @RequestMapping("/del")
    public String del(String username){
        int del = us.del(username);
        System.out.println(del);
        return "box";
    }
    @RequestMapping("/getid")
    @ResponseBody
    public User getid(HttpSession session,String username){
        User getid = us.getid(username);
        session.setAttribute("getid", getid);
        System.out.println(getid);
        return getid;
    }
    @RequestMapping("/all")
    @ResponseBody
    public List<Area> getztree(){
        List<Area> all = us.all();
        System.out.println(all);
        return all;
    }
    @RequestMapping("/getall")
    @ResponseBody
    public List<Area> getall(Integer id){
        System.out.println(id);
        List<Area> getall = us.getall(id);
        System.out.println(getall);
        return getall;
    }
    @RequestMapping("dl")
    @ResponseBody
    public Map<String, Boolean> dl(HttpSession session, String username, String userpwd) {
        /*String md5 = MD5Utils.md5(userpwd);*/
        User dl = us.dl(username, userpwd);
        System.out.println(dl);
        HashMap<String, Boolean> map = new HashMap<String, Boolean>();
        boolean b=false;
        if(dl!=null) {
            session.setAttribute("dl", dl);
            b=true;
        }
        map.put("flag", b);
        return map;
    }

    @RequestMapping("tuichu")
    public String tuichu(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("dl");
        session.invalidate();
        return "login";
    }


    @RequestMapping("fasong")
    @ResponseBody
    public boolean fasong(HttpSession session,String phone) {
        User user =(User) session.getAttribute("dl");
        if(user!=null) {
            int code=(int)((Math.random()*9+1)*1000);
            session.setAttribute("yzm", code);
            System.out.println(code);
            if(String.valueOf(code)!=null) ;
            boolean sendMSM=true;
            return sendMSM;
        }
        return false;

    }
    @RequestMapping("yanzheng")
    @ResponseBody
    public boolean yanzheng(int code,HttpSession session) {
        Integer hao=(Integer)session.getAttribute("yzm");
        System.out.println(hao);
        System.out.println(code);
        if(hao==null) {
            return false;
        }else if(hao!=code){
            return false;
        }else {
            return true;
        }
    }

    @RequestMapping("update")
    private String update(HttpSession session,String password) {
        User user =(User) session.getAttribute("dl");
        String username = user.getUsername();
        int update = us.update(username, password);
        if(update>0) {
            return "redirect:/user/tuichu";
        }
        return "password2";
    }









}
