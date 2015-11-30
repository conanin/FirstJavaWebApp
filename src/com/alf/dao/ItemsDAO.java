package com.alf.dao;

import java.sql.*;
import java.util.*;
import com.alf.entity.*;
import com.alf.util.DBHelper;

/**
 * @author: conanin
 * @E-mail: conanin@live.cn
 * @version:
 * @Creation date： Nov 16, 2015 3:37:40 PM
 */
public class ItemsDAO {

	public ArrayList<Item> getAllItems() {
		ArrayList<Item> allItems = new ArrayList<Item>();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "select * from items";

		conn = DBHelper.getConnection();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Item items = new Item();
				items.setId(rs.getInt("id"));
				items.setName(rs.getString("name"));
				items.setCity(rs.getString("city"));
				items.setPrice(rs.getInt("price"));
				items.setNumber(rs.getInt("number"));
				items.setPicture(rs.getString("picture"));
				allItems.add(items);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 不可释放connection对象，因为是单例模式。
			try {
				if (rs != null) {
					rs.close();
					rs = null;
				}
				if (stmt != null) {
					stmt.close();
					stmt = null;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return allItems;
	}

	//@Deprecated
	//TODO: watch into root cause.
	//Solution: executeQuery() method of PrepareStatement should be invoked rather than executeQuery(SQL) method of Statement.
	//The method does not work, SQL syntax exception is thrown when execute line 70.
	public Item getItemsById_old(int id) {
		Item items = new Item();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "select * from items where id=?;";
		conn = DBHelper.getConnection();
		try 
		{
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			//rs = stmt.executeQuery(sql);
			rs = stmt.executeQuery();
			if (rs.next()) 
			{
				items.setId(rs.getInt("id"));
				items.setName(rs.getString("name"));
				items.setCity(rs.getString("city"));
				items.setPrice(rs.getInt("price"));
				items.setNumber(rs.getInt("number"));
				items.setPicture(rs.getString("picture"));
			} 
			else 
			{
				items = null;
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		} 
		finally 
		{
			// 不可释放connection对象，因为是单例模式。
			try {
				if (rs != null) {
					rs.close();
					rs = null;
				}
				if (stmt != null) {
					stmt.close();
					stmt = null;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return items;
	}
	
	public Item getItemsById(int id) 
	{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBHelper.getConnection();
			String sql = "select * from items where id=?;"; 
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			rs = stmt.executeQuery();
			if (rs.next()) {
				Item item = new Item();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setCity(rs.getString("city"));
				item.setNumber(rs.getInt("number"));
				item.setPrice(rs.getInt("price"));
				item.setPicture(rs.getString("picture"));
				return item;
			} else {
				return null;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// ÊÍ·ÅÓï¾ä¶ÔÏó
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}

		}
	}
	
	public ArrayList<Item> getViewList(String list)
	{
		System.out.println("list:"+list);
		ArrayList<Item> itemlist = new ArrayList<Item>();
		int iCount=5; 
		if(list!=null&&list.length()>0)
		{
		    String[] arr = list.split(",");
		    System.out.println("arr.length="+arr.length);
		    
		    if(arr.length>=5)
		    {
		       for(int i=arr.length-1;i>=arr.length-iCount;i--)
		       {
		    	  itemlist.add(getItemsById(Integer.parseInt(arr[i])));  
		       }
		    }
		    else
		    {
		    	for(int i=arr.length-1;i>=0;i--)
		    	{
		    		itemlist.add(getItemsById(Integer.parseInt(arr[i])));
		    	}
		    }
		    return itemlist;
		}
		else
		{
			return null;
		}
		
	}

}
