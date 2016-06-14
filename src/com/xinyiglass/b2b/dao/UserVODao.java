package com.xinyiglass.b2b.dao;

import java.util.List;

import com.xinyiglass.b2b.entity.UserVO;

public interface UserVODao {
	public void insert(UserVO u) throws Exception;
	public void delete(Long userId) throws Exception;
	public void lock(UserVO u) throws Exception;
	public void update(UserVO u) throws Exception;
	public List<UserVO> findAll() throws Exception;
	public UserVO findByUserName(String userName) throws Exception;
	//public List<UserVO> findByCondition(String condition,List<Integer> para,List<String> paraVal) throws Exception;
}
