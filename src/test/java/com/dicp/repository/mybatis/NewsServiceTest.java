//package com.dicp.repository.mybatis;
//
//import org.junit.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.annotation.DirtiesContext;
//import org.springframework.test.annotation.Rollback;
//import org.springframework.test.context.ContextConfiguration;
//
//import com.dicp.modules.test.spring.SpringTransactionalTestCase;
//import com.dicp.service.NewsService;
//
///**
// * 
// * @author zhengqi
// * @date 2016年1月5日 上午10:31:34
// * @{tag}
// */
//@DirtiesContext
//@ContextConfiguration(locations = { "/spring-config.xml", "/spring-config-fbd.xml"})
//public class NewsServiceTest extends SpringTransactionalTestCase {
//	
//	@Autowired
//	private NewsService newsService;
//	
//	@Test
//	@Rollback(false)
//	public void selectNewsTitle() {
//		System.out.println(newsService.selectNewsTitle(20));
//	}
//}
