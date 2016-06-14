package com.xinyiglass.b2b.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.OracleCallableStatement;

import com.xinyiglass.b2b.dao.UserVODao;
import com.xinyiglass.b2b.entity.UserVO;
import com.xinyiglass.b2b.util.Constant;
import com.xinyiglass.b2b.util.DBUtil;
import com.xinyiglass.b2b.util.Factory;

public class UserVODaoImpl implements UserVODao {
	public void log(String log){
		if (Constant.DEBUG_MODE){
			System.out.println(log);
		}
	}
	
	public void insert(UserVO u) throws Exception{
		
	}
	
	public void delete(Long userId) throws Exception{
		
	}
	
	public void lock(UserVO u) throws Exception{
		
	}
	
	public void update(UserVO u) throws Exception{
		
	}
	
	public List<UserVO> findAll() throws Exception{
		List<UserVO> userVOList = new ArrayList<UserVO>();
		return userVOList;
	}
	
	public UserVO findByUserName(String userName) throws Exception{
		if (userName==null){
			log("userName is null!");
			return null;
		}
		UserVO u = new UserVO();
		Connection conn = DBUtil.getConnection();
		OracleCallableStatement stmt = null;
		ResultSet rs = null;
		try{
			String sql = "select * from XYG_JBO_CRM_USER_V where user_name = :1";
			stmt = (OracleCallableStatement) conn.prepareCall(sql);
			stmt.setString(1, userName);
			rs = stmt.executeQuery();
			while(rs.next()){
				   u.setRowId(rs.getString("row_id"));
				   u.setUserId(rs.getLong("user_id"));
				   u.setUserName(rs.getString("user_name"));
				   u.setDescription(rs.getString("description"));
				   u.setUserPassword(rs.getString("user_password"));
				   u.setSessionNumber(rs.getLong("session_number"));
				   u.setStartDate(rs.getTimestamp("start_date"));
				   u.setEndDate(rs.getTimestamp("end_date"));
				   u.setLastLogonDate(rs.getTimestamp("last_logon_date"));
				   u.setPasswordDate(rs.getTimestamp("password_date"));
				   u.setEmailAddress(rs.getString("email_address"));
				   u.setFax(rs.getString("fax"));
				   u.setEmpId(rs.getLong("emp_id"));
				   u.setEmpNumber(rs.getString("emp_number"));
				   u.setEmpFullName(rs.getString("emp_full_name"));
				   u.setSex(rs.getString("sex"));
				   u.setSexDesc(rs.getString("sex_desc"));
				   u.setEmail(rs.getString("email"));
				   u.setPhoneNumber(rs.getString("phone_number"));
				   u.setHireDate(rs.getTimestamp("hire_date"));
				   u.setJobId(rs.getLong("job_id"));
				   u.setJobName(rs.getString("job_name"));
				   u.setDepartmentId(rs.getLong("department_id"));
				   u.setDeptName(rs.getString("dept_name"));
				   u.setLocationId(rs.getLong("location_id"));
				   u.setLocationName(rs.getString("location_name"));
				   u.setCreatedBy(rs.getLong("created_by"));
				   u.setCreationDate(rs.getTimestamp("creation_date"));
				   u.setLastUpdatedBy(rs.getLong("last_updated_by"));
				   u.setLastUpdateDate(rs.getTimestamp("last_update_date"));
				   u.setLastUpdateLogin(rs.getLong("last_update_login"));
			}
		}finally{
			DBUtil.close(conn, stmt, rs);
		}
		return u;
	}
	
	public static void main(String[] args){
		UserVODao dao = (UserVODao) Factory.getInstance("UserVODao");
		try{
			UserVO u = dao.findByUserName("WX224677");
			System.out.println("user_id:"+u.getUserId());
			System.out.println("full_name:"+u.getEmpFullName());
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
