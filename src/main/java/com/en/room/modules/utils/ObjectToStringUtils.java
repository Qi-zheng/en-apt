package com.en.room.modules.utils;

import java.lang.reflect.Field;

public class ObjectToStringUtils {

	
	public static String objectToStringNotNull(Object obj) {
		StringBuilder sb = new StringBuilder();
//		String name = "";
		sb.append(obj.getClass().getSimpleName() + "[");
		try {
			for (Field f : obj.getClass().getDeclaredFields()) {
			    f.setAccessible(true);
			    if (f.get(obj) != null && !"serialVersionUID".equals(f.getName())) { //判断字段是否为空，并且对象属性中的基本都会转为对象类型来判断
//			    	name = f.getName();
//			    	name = name.substring(0, 1).toUpperCase() + name.substring(1, name.length());
//			    	Method m = obj.getClass().getMethod("get" + name);
//			    	Object value = m.invoke(obj);
			    	sb.append(" " +f.getName() + "=" +  f.get(obj) + ",");
			    }
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		sb.delete(sb.length()-1, sb.length());
		sb.append("]");
		return sb.toString();
	}
}
