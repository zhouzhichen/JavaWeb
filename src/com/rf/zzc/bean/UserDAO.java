package com.rf.zzc.bean;

public class UserDAO {
	public boolean lok(User u) {
		
		if (u.getName().equals("÷‹¥Û“Ø") && u.getPassword().equals("1234")) {
			return true;
		}
	
		return false;
	}
}
