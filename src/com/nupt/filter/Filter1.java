package com.nupt.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


public class Filter1 implements Filter {

	public void init(FilterConfig config){
		System.out.println("filter1==============init");
	}
	public void doFilter(ServletRequest request,ServletResponse response,FilterChain chain) throws IOException{
		System.out.println("filter1 doFilter============");
	} 
	
	public void destroy(){
		System.out.println("filter1============destroy");
	}
}
