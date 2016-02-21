package com.en.room.modules.web;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.shiro.SecurityUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.en.room.entity.User;

/**
 * <p>
 * 防止重复提交过滤器
 * </p>
 *
 */
public class AvoidDuplicateSubmissionInterceptor extends HandlerInterceptorAdapter {
    private static final Log LOG = LogFactory.getLog(AvoidDuplicateSubmissionInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {

        User user = (User) SecurityUtils.getSubject().getPrincipal();
        if (user != null) {
            HandlerMethod handlerMethod = (HandlerMethod) handler;
            Method method = handlerMethod.getMethod();

            AvoidDuplicateSubmission annotation = method.getAnnotation(AvoidDuplicateSubmission.class);
            if (annotation != null) {
                boolean needSaveSession = annotation.needSaveToken();
                if (needSaveSession) {
                    request.getSession(false).setAttribute("token", TokenProcessor.getInstance().generateToken(request));
                }

                boolean needRemoveSession = annotation.needRemoveToken();
                if (needRemoveSession) {
                    if (isRepeatSubmit(request)) {
                        LOG.warn("please don't repeat submit,[user:" + user.getP_h_o() + ",url:"
                                + request.getServletPath() + "]");
                        return false;
                    }
                    request.getSession(false).removeAttribute("token");
                }
            }
        }
        return true;
    }

    private boolean isRepeatSubmit(HttpServletRequest request) {
        String serverToken = (String) request.getSession(false).getAttribute("token");
        if (serverToken == null) {
            return true;
        }
        String clinetToken = request.getParameter("token");
        if (clinetToken == null) {
            return true;
        }
        if (!serverToken.equals(clinetToken)) {
            return true;
        }
        return false;
    }

}
