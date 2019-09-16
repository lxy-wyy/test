package com.buba.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.buba.pojo.Items;
import com.buba.pojo.Plan;
import com.buba.pojo.User;
import com.buba.service.ItemsService;
import com.github.pagehelper.PageInfo;
import com.mysql.fabric.xmlrpc.base.Data;

@Controller
@RequestMapping("/items")
public class ItemsController {
    @Autowired
    private ItemsService itemsService;

    @ResponseBody
    @RequestMapping("/daochu")
    public boolean all(HttpSession session, String time1, String time2) throws IOException {
        session.setAttribute("time1", time1);
        session.setAttribute("time2", time2);
        User user = (User) session.getAttribute("dl");
        String username = user.getUsername();
        String temp = "hebeiTemp.xlsx";
        temp = session.getServletContext().getRealPath("aa") + File.separator + temp;
        String target = "D:\\jh\\hebeiTemp.xlsx";
        SimpleDateFormat sf = new SimpleDateFormat();
        Data data = new Data();
        String[] params = new String[9];
        params[0] = time1;
        params[1] = time2;
        params[2] = username;
        params[3] = sf.format(new Date());
        List<String> headersId = name();
        int deptId = user.getDeptId();
        List<Items> dtoList = itemsService.daochu(deptId, time1, time2);
        System.out.println(dtoList);
        return true;
    }

    private List<String> name() {
        List<String> aa = new ArrayList();
        aa.add("username");
        aa.add("createtime");
        aa.add("deptId");
        aa.add("numActivities");
        aa.add("numActual");
        aa.add("zxl");
        aa.add("newClient");
        aa.add("oldClient");
        aa.add("yxClient");
        aa.add("money");
        return aa;


    }


    @ResponseBody
    @RequestMapping("/daochu2")
    public boolean daochu2(HttpSession session, String time3, String time4) throws IOException {
        session.setAttribute("time3", time3);
        session.setAttribute("time4", time4);
        User user = (User) session.getAttribute("dl");
        String username = user.getUsername();
        String temp = "hebeiTemp.xlsx";
        temp = session.getServletContext().getRealPath("aa") + File.separator + temp;
        String target = "D:\\java\\酒会\\hebeiTemp.xlsx";
        SimpleDateFormat sf = new SimpleDateFormat();
        Data data = new Data();
        String[] params = new String[9];
        params[0] = time3;
        params[1] = time4;
        params[2] = username;
        params[3] = sf.format(new Date());
        List<String> headersId = name2();
        int areaId = user.getAreaId();
        List<Items> dtoList = itemsService.daochu2(areaId, time3, time4);
        System.out.println(dtoList);
        return true;
    }

    private List<String> name2() {
        List<String> aa = new ArrayList();
        aa.add("deptName");
        aa.add("createtime");
        aa.add("deptId");
        aa.add("numActivities");
        aa.add("numActual");
        aa.add("zxl");
        aa.add("newClient");
        aa.add("oldClient");
        aa.add("yxClient");
        aa.add("money");
        return aa;


    }

    @ResponseBody
    @RequestMapping("/daochu3")
    public boolean daochu3(HttpSession session, String time5, String time6) throws IOException {
        session.setAttribute("time5", time5);
        session.setAttribute("time6", time6);
        User user = (User) session.getAttribute("dl");
        String username = user.getUsername();
        String temp = "hebeiTemp.xlsx";
        temp = session.getServletContext().getRealPath("aa") + File.separator + temp;
        String target = "D:\\jh\\hebeiTemp.xlsx";
        SimpleDateFormat sf = new SimpleDateFormat();
        Data data = new Data();
        String[] params = new String[9];
        params[0] = time5;
        params[1] = time6;
        params[2] = username;
        params[3] = sf.format(new Date());
        List<String> headersId = name3();
        List<Items> dtoList = itemsService.daochu3(time5, time6);
        System.out.println(dtoList);
        return true;
    }

    private List<String> name3() {
        List<String> aa = new ArrayList();
        aa.add("areaName");
        aa.add("createtime");
        aa.add("areaId");
        aa.add("numActivities");
        aa.add("numActual");
        aa.add("zxl");
        aa.add("newClient");
        aa.add("oldClient");
        aa.add("yxClient");
        aa.add("money");
        return aa;


    }


    @RequestMapping("/add")
    public String add(HttpSession session, Items items) {
        User user = (User) session.getAttribute("dl");
        Plan plan = (Plan) session.getAttribute("allid");
        items.setDeptId(plan.getDeptId());
        items.setAreaId(Integer.parseInt(plan.getAreaId()));
        items.setAvailable(String.valueOf(plan.getAvailable()));
        items.setAreaCode(plan.getAreaCode());
        items.setUserId(user.getId());
        items.setUserCode(user.getUsercode());
        int add = itemsService.add(items);
        session.setAttribute("item", items);
        if (add > 0) {
            return "imageUpload";
        }
        return "err";

    }

    /*@RequestMapping("/all")
    public String all(HttpSession session,int pn,Map map) {
        User user =(User) session.getAttribute("dl");
        int deptId = user.getDeptId();
        PageHelper.startPage(pn,3);
        List<Items> list = itemsService.all(deptId);
        PageInfo<Items> pageInfo = new PageInfo<Items>(list,5);
        map.put("plistt", pageInfo);
        return "usermanagerInfo5";
    }*/
    @RequestMapping("/mohu/{page}/{row}")
    public String mohu(Model m, HttpSession session, Map map, String time1, String time2, @PathVariable int page, @PathVariable int row) {
        session.setAttribute("time1", time1);
        session.setAttribute("time2", time2);
        User user = (User) session.getAttribute("dl");
        int deptId = user.getDeptId();
        PageInfo<Items> getlike = itemsService.getlike(deptId, time1, time2, page, row);
        m.addAttribute("plistt", getlike);
        return "usermanagerInfo5";
    }

    @RequestMapping("/mohu2/{page}/{row}")
    public String mohu2(Model m, HttpSession session, Map map, String time3, String time4, @PathVariable int page, @PathVariable int row) {
        session.setAttribute("time3", time3);
        session.setAttribute("time4", time4);
        User user = (User) session.getAttribute("dl");
        int areaId = user.getAreaId();
        PageInfo<Items> getitems = itemsService.getitems(areaId, time3, time4, page, row);
        m.addAttribute("plistt", getitems);
        return "usermanagerInfo6";
    }

    @RequestMapping("/mohu3/{page}/{row}")
    public String mohu3(Model m, HttpSession session, Map map, String time5, String time6, @PathVariable int page, @PathVariable int row) {
        session.setAttribute("time5", time5);
        session.setAttribute("time6", time6);
        PageInfo<Items> getitems = itemsService.getitemsid(time5, time6, page, row);
        m.addAttribute("plistt", getitems);
        return "usermanagerInfo7";
    }

    @ResponseBody
    @RequestMapping("/getxian")
    public List<Items> all1(HttpSession session) {
        User user = (User) session.getAttribute("dl");
        int deptId = user.getDeptId();
        List<Items> getxian = itemsService.getxian(deptId);
        return getxian;
    }

    @ResponseBody
    @RequestMapping("/getxian2")
    public List<Items> all2(HttpSession session) {
        User user = (User) session.getAttribute("dl");
        int deptId = user.getDeptId();
        List<Items> getxian2 = itemsService.getxian(deptId);
        return getxian2;
    }

    @ResponseBody
    @RequestMapping("/getshi")
    public List<Items> getshi(HttpSession session) {
        User user = (User) session.getAttribute("dl");
        int areaId = user.getAreaId();
        List<Items> getshi = itemsService.getshi(areaId);
        return getshi;
    }

    @ResponseBody
    @RequestMapping("/getsheng")
    public List<Items> getsheng() {
        List<Items> getsheng = itemsService.getsheng();
        return getsheng;
    }
}
