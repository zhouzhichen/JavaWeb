package com.rf.zzc.bean;

public class UserDAO {
	public boolean lok(User u) {
		
		if (u.getName().equals("�ܴ�ү") && u.getPassword().equals("1234")) {
			return true;
		}
	
		return false;
	}
}
