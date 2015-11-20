package com.alf.util;

import java.sql.Connection;
import java.sql.DriverManager;

/** 
* @author: conanin
  @E-mail: conanin@live.cn
* @version:  
* @Creation date£º Nov 12, 2015 2:51:16 PM 
*/
public class DBHelper {
	private static final String mySqlDriver = "com.mysql.jdbc.Driver"; 
	private static final String url = "jdbc:mysql://localhost:3306/alf_prac?useUnicode=true&characterEncoding=UTF-8";
	private static final String dbusername = "root";
	private static final String dbpassword = "";
	private static Connection conn = null; 
	
	static 
	{
		//Step1: initialize driver class.     
		try 
		{
			Class.forName(mySqlDriver);
		} 
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		} 
	}
	
	public static Connection getConnection(){    
		if( conn == null )
		{
			try 
			{    
   
				//Step2: Setup DB connection     
				conn = DriverManager.getConnection( url, dbusername, dbpassword );
			}
			catch (Exception e) 
			{    
				e.printStackTrace();    
			} 
		}
		
		return conn;
	}   
}
