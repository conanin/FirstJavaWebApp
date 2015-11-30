package com.alf.entity;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/** 
* @author: conanin
  @E-mail: conanin@live.cn
* @version:  
* @Creation date£º Nov 26, 2015 2:40:57 PM 
*/
public class Cart {
	private HashMap<Item, Integer> items;
	private double totalCost;
	
	public HashMap<Item, Integer> getItems() 
	{
		return items;
	}
	
	public void setItems(HashMap<Item, Integer> items) 
	{
		this.items = items;
	}
	
	public double getTotalCost() 
	{
		return totalCost;
	}
	
	public void setTotalCost(double totalCost) 
	{
		this.totalCost = totalCost;
	}

	public Cart()
	{
		items = new HashMap<Item, Integer>();
		totalCost = 0;
	}
	
	public boolean addItemToCart( Item item, int count )
	{
		
		if( items.containsKey(item) )
		{
			items.put(item, items.get(item) + count);
		}
		
		else
		{
			items.put(item, count);
		}
		
		this.calTotalCost();
		return true;
	}
	
	public boolean removeItemFromCart( Item item )
	{
		items.remove(item);
		this.calTotalCost();
		return true;
	}
	
	public double calTotalCost()
	{
		double sum = 0;
		Set<Item> keys = items.keySet();
		Iterator<Item> iterator = keys.iterator();
		while( iterator.hasNext())
		{
			Item item = iterator.next();
			sum += item.getPrice() * items.get(item);
		}
		
		this.setTotalCost(sum);
		
		return this.getTotalCost();
	}
}
