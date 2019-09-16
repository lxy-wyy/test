package com.buba.service.lmpl;

import java.util.List;

import com.buba.pojo.Items;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buba.dao.ItemsDao;
import com.buba.service.ItemsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class ItemsServiceImpl implements ItemsService{
	@Autowired
	private ItemsDao itemsDao;

	@Override
	public int add(Items items) {
		// TODO Auto-generated method stub
		return itemsDao.add(items);
	}

	@Override
	public List<Items> all(int deptId) {
		// TODO Auto-generated method stub
		return itemsDao.all(deptId);
	}

	@Override
	public PageInfo<Items> getlike(int deptId, String time1, String time2, int page, int row) {
		PageHelper.startPage(page,row);
		List<Items> list = itemsDao.getlike(deptId, time1, time2);
		PageInfo<Items> pageInfo = new PageInfo<Items>(list,5);
		return pageInfo;
	}

	@Override
	public PageInfo<Items> getitems(int areaId, String time3, String time4, int page, int row) {
		PageHelper.startPage(page,row);
		List<Items> list = itemsDao.getitems(areaId, time3, time4);
		PageInfo<Items> pageInfo = new PageInfo<Items>(list,5);
		return pageInfo;
	}

	@Override
	public PageInfo<Items> getitemsid(String time5, String time6, int page, int row) {
		PageHelper.startPage(page,row);
		List<Items> list = itemsDao.getitemsid(time5,time6);
		PageInfo<Items> pageInfo = new PageInfo<Items>(list,5);
		return pageInfo;
	}
	
	@Override
	public List<Items> getxian(int deptId) {
		// TODO Auto-generated method stub
		return itemsDao.getxian(deptId);
	}

	@Override
	public List<Items> getshi(int areaId) {
		// TODO Auto-generated method stub
		return itemsDao.getshi(areaId);
	}

	@Override
	public List<Items> getsheng() {
		// TODO Auto-generated method stub
		return itemsDao.getsheng();
	}

	@Override
	public List<Items> daochu(int deptId, String time1, String time2) {
		// TODO Auto-generated method stub
		return itemsDao.daochu(deptId, time1, time2);
	}

	@Override
	public List<Items> daochu2(int areaId, String time3, String time4) {
		// TODO Auto-generated method stub
		return itemsDao.daochu2(areaId, time3, time4);
	}

	@Override
	public List<Items> daochu3(String time5, String time6) {
		// TODO Auto-generated method stub
		return itemsDao.daochu3(time5, time6);
	}


}
