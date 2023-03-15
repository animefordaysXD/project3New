package com.ict.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.dao.DAO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private DAO dao;

	public void setDao(DAO dao) {
		this.dao = dao;
	}
	@Override
	public int getId(String email) {
		System.out.println("eeeee");
		return dao.getId(email);
	}
	

}
