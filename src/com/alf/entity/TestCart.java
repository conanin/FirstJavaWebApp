package com.alf.entity;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.junit.Assert;
import org.junit.Test;

/** 
* @author: conanin
  @E-mail: conanin@live.cn
* @version:  
* @Creation date£∫ Nov 26, 2015 2:58:07 PM 
*/
public class TestCart {
	@Test
	public void testCalTotalCost()
	{
		Item item01 = new Item(1);
		item01.setPrice(180);
		item01.setName("Œ÷Ãÿ¿∫«Ú–¨");
		Item item02 = new Item(9);
		item02.setPrice(3999);
		item02.setName("dell± º«±æ");
		
		Cart cart = new Cart();
		cart.addItemToCart(item01, 2);
		cart.addItemToCart(item02, 1);
		cart.addItemToCart(item02, 3);
		
		Set<Map.Entry<Item, Integer>> itemSet = cart.getItems().entrySet();
		for ( Map.Entry<Item, Integer> obj: itemSet )
		{
			System.out.println( obj );
		}
		
		System.out.println( "Total cost is:\t " + cart.calTotalCost() );
		
		Assert.assertTrue( Double.valueOf(cart.calTotalCost()).intValue() == 4359 );	
	}

}
