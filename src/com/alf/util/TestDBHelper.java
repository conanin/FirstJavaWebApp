package com.alf.util;

import org.junit.Test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Assert;

/** 
* @author: conanin
  @E-mail: conanin@live.cn
* @version:  
* @Creation date£º Nov 12, 2015 3:04:01 PM 
*/
public class TestDBHelper {
	
	@Test
	public void testGetConnection()
	{
		Connection conn = DBHelper.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		try 
		{
			stmt = conn.createStatement();
			rs = stmt.executeQuery( "select * from emp" );
			while( rs.next() )
			{
				System.out.println( rs.getString("ename") );
			}
		Assert.assertTrue( "OK" , conn != null);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				if( rs !=null )
				{
					rs.close();
					rs = null;
				}
				if( stmt != null )
				{
					stmt.close();
					stmt = null;
				}
				if( conn != null )
				{
					conn.close();
					conn = null;
				}
			}
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
	}

}
