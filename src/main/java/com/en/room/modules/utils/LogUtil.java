package com.en.room.modules.utils;

import org.slf4j.LoggerFactory;

public class LogUtil {
	
	public static void info(Class clazz,String message){
		LoggerFactory.getLogger(clazz).info(message);
	}
	
	public static void error(Class clazz,String message){
		LoggerFactory.getLogger(clazz).error(message);
	}

}
