package com.buba.dao;
import java.util.List;

import com.buba.pojo.Items;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ItemsDao {
	int add(Items items);

    List<Items> all(int deptId);

    List<Items> getlike(@Param("deptId") int deptId, @Param("time1") String time1, @Param("time2") String time2);

    List<Items> getitems(@Param("areaId") int areaId, @Param("time3") String time3, @Param("time4") String time4);

    List<Items> getitemsid(@Param("time5") String time5, @Param("time6") String time6);

    List<Items> getxian(int deptId);

    List<Items> getshi(int areaId);

    List<Items> getsheng();

    List<Items> daochu(@Param("deptId") int deptId, @Param("time1") String time1, @Param("time2") String time2);

    List<Items> daochu2(@Param("areaId") int areaId, @Param("time3") String time3, @Param("time4") String time4);

    List<Items> daochu3(@Param("time5") String time5, @Param("time6") String time6);

}
