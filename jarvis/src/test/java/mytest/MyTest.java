package mytest;

import javax.annotation.Resource;

import org.junit.Test;  
import org.junit.runner.RunWith;  
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner; 

import com.dancer.entity.User;
import com.dancer.service.UserService;
import com.dancer.util.JsonUtil;

@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
public class MyTest {
		
		@Resource 
		private UserService userservice;
		
		
		@Test
		public void test1(){
		    	User user = userservice.queryByName("dancer");
		    	System.out.println(JsonUtil.toJSONString(user));
		}
		
}
