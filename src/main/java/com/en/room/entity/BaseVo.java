package com.en.room.entity;

import java.io.Serializable;

import com.en.room.modules.utils.ObjectToStringUtils;

/**
 * 
 * @author zhengqi
 * @date 2016年1月5日 下午1:02:14
 * @{tag}
 */
public class BaseVo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7141685894200303847L;

	@Override
	public String toString() {
		return ObjectToStringUtils.objectToStringNotNull(this);
	}
	
}
