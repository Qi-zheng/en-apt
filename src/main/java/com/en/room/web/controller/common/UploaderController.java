package com.en.room.web.controller.common;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.en.room.modules.storage.QiNiuUtil;
import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;

public class UploaderController {
//		private Logger logger=LoggerFactory.getLogger(UploaderController.class);
	    private String allowSuffix = "jpg,png,gif,jpeg";//允许文件格式
	    private String uploadCompleteLocation;
	    
	    public String getAllowSuffix() {
	        return allowSuffix;
	    }
	 
	    public void setAllowSuffix(String allowSuffix) {
	        this.allowSuffix = allowSuffix;
	    }
	 
	    /**
	     * 生成图片名
	     * @return
	     */
	    private String getFileNameNew(){
	    	DateFormat dateFormat = new SimpleDateFormat("mmssSSS");
			String picName = dateFormat.format(new Date());
			Random random = new Random();
			for(int i=0;i<3;i++){
				picName += random.nextInt(100) + "";
			}
			return picName;
	    }
	    
		public String getUploadCompleteLocation() {
			return uploadCompleteLocation;
		}

		public void setUploadCompleteLocation(String uploadCompleteLocation) {
			this.uploadCompleteLocation = uploadCompleteLocation;
		}
		
	
		/**
		 * 上传文件，并且返回新的文件名称
		 * @param file
		 * @param destDir
		 * @param request
		 * @return
		 * @throws Exception
		 */
		public String upload(MultipartFile file, String destDir,HttpServletRequest request) throws Exception {
	        String path = request.getContextPath();
	        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	        String fileNameNew = null;
	        try {
                String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
                int length = getAllowSuffix().indexOf(suffix);
                if(length == -1){
                    throw new Exception("请上传允许格式的文件");
                }
                fileNameNew = getFileNameNew()+"."+suffix;
                try {
                Response response = QiNiuUtil.uploadFile(destDir + fileNameNew, file.getBytes());
                // 请求失败时简单状态信息

                } catch (QiniuException e1) {
                    System.out.println(e1.response.toString());

                    // 响应的文本信息
                    System.out.println(e1.response.bodyString());
                }
                this.uploadCompleteLocation = basePath+destDir+fileNameNew;
	        } catch (Exception e) {
	        	e.printStackTrace();
	        	//FIXME:日志记录
	            throw e;
	        }
	        
	        return fileNameNew;
	}
		
	/**
	 * 将图片传送到远端的服务器
	 * @param pic
	 * @param imageUrl
	 * @return 返回远端的图片url(全路径)
	 */
	/*public String uploadRemoteServer(MultipartFile pic,String imageUrl){
		
		//1:文件命名策略
		String newFileName = this.getFileNameNew();
		//2:获取图片的扩展名
		String ext = FilenameUtils.getExtension(pic.getOriginalFilename());
		newFileName = newFileName+"."+ext;
		String url =  imageUrl + newFileName;
		//4:发送图片另一台服务器
		//创建发送图片客户端
		Client client = new Client();
		WebResource resource = client.resource(url);
		//将图片发送到另一个服务器上去
		try {
			resource.put(String.class, pic.getBytes());
		} catch (UniformInterfaceException e) {
			//FIXME:记录日志
			e.printStackTrace();
		} catch (ClientHandlerException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		//5:返回路径
		return url;
	}*/
}
