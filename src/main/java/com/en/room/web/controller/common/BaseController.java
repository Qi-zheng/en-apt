package com.en.room.web.controller.common;

import org.springframework.web.bind.annotation.ExceptionHandler;

public class BaseController {
//	private Logger logger=LoggerFactory.getLogger(BaseController.class);
	@ExceptionHandler
	public Exception exceptionHandler(Exception ex) {
		ex.printStackTrace();
		return ex;
	}
}
