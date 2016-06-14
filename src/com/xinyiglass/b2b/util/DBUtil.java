package com.xinyiglass.b2b.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

//import com.xinyiglass.web03.dao.UserVODao;
//import com.xinyiglass.web03.entity.UserVO;

import oracle.jdbc.OracleCallableStatement;

public class DBUtil {
	public static Connection getConnection() throws Exception{
		Connection conn = null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@//192.168.0.26:1521/PDB_APEX","APEX_UAT","apex_uat");
			conn.setAutoCommit(false);//�ر��Զ��ύ
			System.out.println("Database Connects Succsessfully");
		}catch(Exception e){
			e.printStackTrace();
			throw e;
		}
		return conn;
	}
	
	public static void close(Connection conn){
		if(conn != null){
			try{
				conn.close();
			}catch (SQLException e){
				e.printStackTrace();
			}
		}
	}
	
	public static void close(Connection conn,OracleCallableStatement stmt){
		if(conn != null){
			try{
				conn.close();
			}catch (SQLException e){
				e.printStackTrace();
			}
		}
		if(stmt != null){
			try{
				stmt.close();
			}catch (SQLException e){
				e.printStackTrace();
			}
		}
	}
	
	public static void close(Connection conn,OracleCallableStatement stmt,ResultSet rs){
		if(conn != null){
			try{
				conn.close();
			}catch (SQLException e){
				e.printStackTrace();
			}
		}
		if(stmt != null){
			try{
				stmt.close();
			}catch (SQLException e){
				e.printStackTrace();
			}
		}
		if(rs != null){
			try{
				rs.close();
			}catch (SQLException e){
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args){
		try{
			DBUtil.getConnection();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
