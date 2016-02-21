package com.en.room.web.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.en.room.modules.sms.SMSUtil;

/**
 * Created by Vincent on 2016/1/23.
 */
@RestController
public class RestSMSController {
//	private Logger logger=LoggerFactory.getLogger(RestSMSController.class);
    @RequestMapping(value = "/sendMsg", method = RequestMethod.GET)
    public void sendMsg(String phoneNumber,String tmpId,String datas){
        try {
            datas = URLDecoder.decode(datas,"UTF-8");
            System.out.println(datas);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        HashMap<String, Object> res = SMSUtil.sendMessages(phoneNumber, tmpId, datas.split(","));

        System.out.println("错误码=" + res.get("statusCode") +" 错误信息= "+res.get("statusMsg"));
    }


}
