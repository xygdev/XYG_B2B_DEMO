package com.xinyiglass.b2b.util;

import com.xinyiglass.b2b.dao.impl.*;

public class Factory {
	public static Object getInstance(String type){
		Object obj = null;
		if ("EmpVODao".equals(type)){
			//obj=new EmpVODaoImpl();
			/** obj=new EmployeeDAOHibernateImpl();当不再使用JDBC连接数据库时，
			 * 如HibernateI连接时，就需要更改每个new EmployeeDAOJdbcImpl();不方便维护。
			 * 使用工厂模式就可以统一更改了 */	
		}else if("CommonDao".equals(type)){
			//obj=new CommonDaoImpl();
		}else if("UserVODao".equals(type)){
			obj = new  UserVODaoImpl();
		}else if("ListRGDao".equals(type)){
			//obj = new  ListRGDaoImpl();
		}else{
			throw new RuntimeException("实例化type:"+type+" 不支持！");
		}
		return obj;
	}
}
