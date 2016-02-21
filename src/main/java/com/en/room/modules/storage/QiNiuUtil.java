package com.en.room.modules.storage;



import com.en.room.modules.utils.PropertiesLoader;
import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;

/**
 * 七牛云工具类<br>
 * 1.上传文件<br>
 * @version 0.0.1.20141209
 * @history
 * 	0.0.1.20141209<br>
 */
public class QiNiuUtil {

    private static String uptoken = null;
    private static String bucket = null;
    private static Auth auth = null;
    static{
        PropertiesLoader loader = new PropertiesLoader("application.properties");
        try {
            String ak = loader.getProperty("qiniu.ak");
            String sk = loader.getProperty("qiniu.sk");
            bucket = loader.getProperty("qiniu.bucket");
            auth = Auth.create(ak, sk);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 上传文件
     * @param key
     * @param file
     */
    public static Response uploadFile(String key, String file) throws QiniuException {
        uptoken = auth.uploadToken(bucket);
        UploadManager uploadManager = new UploadManager();
        return uploadManager.put(file, key, uptoken);
    }

    public static Response uploadFile(String key, byte[] file) throws QiniuException {
        uptoken = auth.uploadToken(bucket);
        UploadManager uploadManager = new UploadManager();
        return uploadManager.put(file, key, uptoken);
    }

}
