package com.ict.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	public int getId(String email) {
		 String a = email.trim();
		 System.out.println("a is " + a);
		 try {
			 int count = sqlSessionTemplate.selectOne("login.email",a);
			
			 
			    return count > 0 ? 1 : 0;	
		} catch (Exception e) {
			e.printStackTrace();
			return 233323;
		}
		 
		   

	}

	
	

}
