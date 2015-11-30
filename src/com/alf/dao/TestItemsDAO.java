package com.alf.dao;

import org.junit.Test;

import com.alf.entity.Item;

import org.junit.Assert;

/** 
* @author: conanin
  @E-mail: conanin@live.cn
* @version:  
* @Creation date�� Nov 18, 2015 2:14:16 PM 
*/
public class TestItemsDAO {
   @Test
   public void testGetItemsById()
   {
	   ItemsDAO dao = new ItemsDAO();
	   Item item = dao.getItemsById_old(3);
	   //Items item = dao.getItemsById(3);
	   System.out.println( item.getName() );
	   Assert.assertTrue( item.getName().equals("�Ϳ��˶�Ь"));
   }

}
