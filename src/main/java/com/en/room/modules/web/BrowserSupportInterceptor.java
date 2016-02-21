package com.en.room.modules.web;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;

/**
 * Created by Administrator on 2015/8/17.
 */
public class BrowserSupportInterceptor extends HandlerInterceptorAdapter {


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        String agent = request.getHeader("User-Agent").toLowerCase();
        String browserName = getBrowserName(agent);

        String contextPath = request.getContextPath();
        String url = request.getServletPath().toString();


        if ("ie5".equals(browserName) || "ie6".equals(browserName) || "ie7".equals(browserName)) {
            response.sendRedirect(contextPath+"/obsolete?redirectURL="
                    + URLEncoder.encode(url,"UTF-8"));
            return false;
        }

        return super.preHandle(request, response, handler);
    }

    /**
     * 获取浏览器版本信息
     */
    private String getBrowserName(String agent) {
        if (agent.indexOf("msie 5") > 0) {
            return "ie5";
        } else if (agent.indexOf("msie 6") > 0) {
            return "ie6";
        } else if (agent.indexOf("msie 7") > 0) {
            return "ie7";
        } else if (agent.indexOf("msie 8") > 0) {
            return "ie8";
        } else if (agent.indexOf("msie 9") > 0) {
            return "ie9";
        } else if (agent.indexOf("msie 10") > 0) {
            return "ie10";
        } else if (agent.indexOf("msie") > 0) {
            return "ie";
        } else if (agent.indexOf("opera") > 0) {
            return "opera";
        } else if (agent.indexOf("opera") > 0) {
            return "opera";
        } else if (agent.indexOf("firefox") > 0) {
            return "firefox";
        } else if (agent.indexOf("webkit") > 0) {
            return "webkit";
        } else if (agent.indexOf("gecko") > 0 && agent.indexOf("rv:11") > 0) {
            return "ie11";
        } else {
            return "Others";
        }
    }

}
