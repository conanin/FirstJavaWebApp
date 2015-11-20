package com.alf.dao;

import com.alf.entity.*;
/** 
* @author: conanin
  @E-mail: conanin@live.cn
* @version:  
* @Creation date£º Nov 5, 2015 2:47:15 PM 
*/
public class UserDAO {
	
	public boolean userLogin( User user )
	{
		boolean isLogin = false;
		
		if( "admin".equals( user.getUsername()) && "admin".equals( user.getPassword() ))
		{
			isLogin = true;
		}
		
		return isLogin;
	}

}
