package com.nupt.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/third")
public class Third extends HttpServlet {
	protected void doGet(HttpServletRequest request,HttpServletResponse response){
		try {
			PrintWriter pw = response.getWriter();
			pw.write("I love you !");
			pw.flush();
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	protected void doPost(HttpServletRequest request,HttpServletResponse response){
		
	}
}
