package com.xinyiglass.b2b.util;

import com.xinyiglass.b2b.dao.impl.*;

public class Factory {
	public static Object getInstance(String type){
		Object obj = null;
		if ("EmpVODao".equals(type)){
			//obj=new EmpVODaoImpl();
			/** obj=new EmployeeDAOHibernateImpl();������ʹ��JDBC�������ݿ�ʱ��
			 * ��HibernateI����ʱ������Ҫ����ÿ��new EmployeeDAOJdbcImpl();������ά����
			 * ʹ�ù���ģʽ�Ϳ���ͳһ������ */	
		}else if("CommonDao".equals(type)){
			//obj=new CommonDaoImpl();
		}else if("UserVODao".equals(type)){
			obj = new  UserVODaoImpl();
		}else if("ListRGDao".equals(type)){
			//obj = new  ListRGDaoImpl();
		}else{
			throw new RuntimeException("ʵ����type:"+type+" ��֧�֣�");
		}
		return obj;
	}
}
