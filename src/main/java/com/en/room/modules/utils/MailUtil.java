package com.en.room.modules.utils;

public class MailUtil {
	
	private static PropertiesLoader pl = new PropertiesLoader("application.properties");
	
	/**
	 * 进行邮箱验证
	 * @param toEmail 用户email
	 * @param username 
	 * @param url
	 * @throws Exception
	 */
	public static void sendValidateEmail(String toEmail,String username,String url,Integer emailType) throws Exception{
		 Mail mail = new Mail();  
         mail.setAddress(toEmail, Mail.TO);  
         // 设置发送邮箱  
         String emailname = pl.getProperty("emailname");
         String password = pl.getProperty("emailpassword");
         String emailHost = pl.getProperty("emailhost");
         mail.setFromAddress(emailname);  
         mail.setSMTPHost(emailHost,emailname, password); 
         if(0 == emailType){
        	 mail.setSubject("欢迎使用[盈和数据],邮箱验证");   
             mail.setHtmlBody(getValidateEmailHtmlBody(username, url)); 
         }
         if(1 == emailType){
        	 mail.setSubject("欢迎使用[盈和数据],密码修改");   
             mail.setHtmlBody(getValidatePasswordHtmlBody(username, url)); 
         }
         
         mail.sendBatch();
	}
	
	public static String getValidateEmailHtmlBody(String username,String url){
		
		String content = "<div>尊敬的"+username+"，您好！<br/><br/><br/>点击链接即可激活您的赢和数据账号,<br/><br/>" +
						 "<a href=\""+url+"\" target=_blank >"+url+"</a><br/><br/>为保障您的帐号安全，请在24小时内点击该链接，" +
						 "您也可以将链接复制到浏览器地址栏访问。如果您并未尝试激活邮箱，请忽略本邮件，由此给您带来的不便请谅解。<br/>" +
						 "<br/><br/>本邮件由系统自动发出，请勿直接回复！</div>";
		return content;
	}
    public static String getValidatePasswordHtmlBody(String username,String url){
		
		String content = "<div>尊敬的"+username+"，您好！<br/><br/><br/>点击链接即可修改您的赢和数据密码,<br/><br/>" +
						 "<a href=\""+url+"\" target=_blank >"+url+"</a><br/><br/>为保障您的帐号安全，请在24小时内点击该链接，" +
						 "您也可以将链接复制到浏览器地址栏访问。如果您并未尝试修改密码，请忽略本邮件，由此给您带来的不便请谅解。<br/>" +
						 "<br/><br/>本邮件由系统自动发出，请勿直接回复！</div>";
		return content;
	}
}
