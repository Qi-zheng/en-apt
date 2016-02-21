package com.en.room.modules.storage;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.PutObjectResult;

import java.io.File;
import java.io.InputStream;

/**
 * Created by Vincent on 2016/1/20.
 */
public class OSSUtil {
    private static OSSClient client = null;

    static {
        String endpoint = "http://oss-cn-beijing.aliyuncs.com";
        String accessKeyId = "gSHFBbp5j6kmEPZO";
        String accessKeySecret = "sYqChwexCRczkKFJZ57pqLqjUQhTLl";
        client = new OSSClient(endpoint, accessKeyId, accessKeySecret);
    }

    public static void upload(String bucketName,String key,InputStream inputStream){
        client.putObject(bucketName, key, inputStream);
        client.shutdown();
    }

    public static void upload(String bucketName,String key,File file){
        client.putObject(bucketName,key,file);
        client.shutdown();
    }


}

