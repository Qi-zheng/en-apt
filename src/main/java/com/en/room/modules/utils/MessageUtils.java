package com.en.room.modules.utils;


public class MessageUtils {
	
//	/**
//	 * service层记录日志
//	 * @param userName
//	 * @param method
//	 * @param inputParam
//	 * @return
//	 */
//	public static String logMessage(String userName, String method, String inputParam) {
//		return userName + "-" + method + "-input:(" + inputParam + ")";
//	}
//	
//	public static String logMessage(HttpServletRequest request, String handler, String inputParam) {
//		User user = (User)SecurityUtils.getSubject().getPrincipal();
//		return logMessage(request, user, handler, inputParam);
//	}
//	
//	public static String logMessage(HttpServletRequest request, User user, String handler, String inputParam) {
//		return "用户" + user.getLoginname() + "-" + "通过ip:" + request.getRemoteAddr() + "-" + handler + "-入参为:(" + inputParam + ")";
//	}
//
//	public static String logMessage(HttpServletRequest request, String handler) {
//		User user = (User)SecurityUtils.getSubject().getPrincipal();
//		return "用户" + user.getLoginname() + "-" + "通过ip:" + request.getRemoteAddr() + "-" + handler;
//	}
//	
//	public static String logMessage(HttpServletRequest request,  String handler, String inputParam ,boolean isLogin) {
//		return "未登录用户-" + "通过ip:" + request.getRemoteAddr() + "-" + handler + "-入参为:(" + inputParam + ")";
//	}
//	public static String logMessage(HttpServletRequest request, String handler ,boolean isLogin) {
//		return "未登录用户-" + "通过ip:" + request.getRemoteAddr() + "-" + handler;
//	}
}
