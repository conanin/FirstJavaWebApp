package com.alf.entity;

/**
 * @author: conanin
 * @E-mail: conanin@live.cn
 * @version:
 * @Creation date£º Nov 16, 2015 3:32:56 PM
 */
public class Items {
	private int id;
	private String name;
	private String city;
	private int price;
	private int number;
	private String picture;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

}
