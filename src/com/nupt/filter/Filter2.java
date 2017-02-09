package com.nupt.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


public class Filter2 implements Filter {
	public void init(FilterConfig config){
		System.out.println("filter2 init========");
	}
	
	public void doFilter(ServletRequest request,ServletResponse response,FilterChain chain){
		try {
			System.out.println("fiter2 doFilter============");
			chain.doFilter(request,response);
		} catch (IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void destroy(){
		System.out.println("fiter2 destroy==============");
	}
}
