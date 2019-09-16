package com.buba.service;

import java.util.List;

import com.buba.pojo.Items;
import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

public interface ItemsService {
	int add(Items items);

	List<Items> all(int deptId);

	PageInfo<Items> getlike(int deptId, String time1, String time2, int page, int row);

	PageInfo<Items> getitems(int areaId, String time3, String time4, int page, int row);

	PageInfo<Items> getitemsid(String time5, String time6, int page, int row);

	List<Items> getxian(int deptId);

	List<Items> getshi(int areaId);

	List<Items> getsheng();

	List<Items> daochu(int deptId, String time1, String time2);

	List<Items> daochu2(int areaId, String time3, String time4);

	List<Items> daochu3(String time5, String time6);
}
