package com.nupt.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/el")
public class EL extends HttpServlet {
	protected void doGet(HttpServletRequest request,HttpServletResponse response){
		String name ="xiaowang";
		request.setAttribute("name", name);
		
		//数组
		String arr[] = {"a","b","c","d"};
		request.setAttribute("arr", arr);
		
		//对象
		User user =  new User();
		user.setName("xiaowang");
		request.setAttribute("userObject",user);
		//map
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("name","xiaozhang");
		request.setAttribute("mapObj",map);
		
		//List
		List<String> list = new ArrayList<String>();
		list.add("1111");
		list.add("2222");
		request.setAttribute("listObj", list);
		
		
		List<Map<String,Object>> LMap = new ArrayList<Map<String,Object>>();
		Map<String,Object> map1 = new HashMap<String,Object>();
		map1.put("name","list_map1");
		Map<String,Object> map2 = new HashMap<String,Object>();
		map2.put("name","list_map2");
		LMap.add(map1);
		LMap.add(map2);
		request.setAttribute("ListMapObject", LMap);
		
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/jsp/el.jsp");
		try {
			rd.forward(request,response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response){
		doGet(request,response);
	}
}
