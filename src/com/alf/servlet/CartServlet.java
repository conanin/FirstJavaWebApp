package com.alf.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alf.dao.ItemsDAO;
import com.alf.entity.Cart;
import com.alf.entity.Item;

/** 
* @author: conanin
  @E-mail: conanin@live.cn
* @version:  
* @Creation date£º Nov 27, 2015 1:00:34 PM 
*/
public class CartServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String action = "";		//add, show and delete
	
	private ItemsDAO itemDAO = new ItemsDAO();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		doPost( req,resp );
	}

	private boolean removeItemFromCart(HttpServletRequest req, HttpServletResponse resp) 
	{
		boolean flag = false;
		String itemId = req.getParameter("id");
		Cart cart = (Cart)req.getSession().getAttribute("cart");
		Item item = itemDAO.getItemsById( Integer.parseInt(itemId) );
		if( cart .removeItemFromCart( item ))
		{
			flag = true;
		}
		return flag;
	}

	private void showCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		req.getRequestDispatcher("/cart.jsp").forward(req, resp);
	}

	private boolean addItemToCart(HttpServletRequest req, HttpServletResponse resp) 
	{
		String itemId = req.getParameter("id");
		String itemNum = req.getParameter("num");
		Item item = itemDAO.getItemsById( Integer.parseInt(itemId) );
		Cart cart = null;
		
		if( req.getSession().getAttribute("cart") == null )
		{
			cart = new Cart();
			req.getSession().setAttribute("cart", cart );
		}
		else
		{
			cart = (Cart)req.getSession().getAttribute("cart");
		}
		if( cart.addItemToCart(item, Integer.parseInt(itemNum)))
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		if( req.getParameter("action") != null )
		{
			if( req.getParameter("action").equals("add") )
			{
				if ( addItemToCart( req, resp ) )
				{
					req.getRequestDispatcher("/success.jsp").forward(req, resp);
				}
				else
				{
					req.getRequestDispatcher("/failure.jsp").forward(req, resp);
				}
			}
			if( req.getParameter("action").equals("show") )
			{
				showCart( req, resp );
				
			}
			if( req.getParameter("action").equals("delete"))
			{
				if ( removeItemFromCart( req, resp ) )
				{
					req.getRequestDispatcher("/cart.jsp").forward(req, resp);
				}
				else
				{
					req.getRequestDispatcher("/cart.jsp").forward(req, resp);
				}
			}
		}
	}
	
	

}
