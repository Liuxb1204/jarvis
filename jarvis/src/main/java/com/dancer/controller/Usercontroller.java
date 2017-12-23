package com.dancer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dancer.entity.User;
import com.dancer.service.UserService;

/**
 * 
 * @Description: 用户登录
 * @author dancer
 * @param  
 * @return 
 * @throws 
 * @data 2017年4月15日下午2:04:38
 */
@Controller
@RequestMapping("/user")
public class Usercontroller {
	
	@Autowired
	private UserService userservice;
	@RequestMapping("/login")
	public String userlogin(User user,String image,HttpSession session,HttpServletRequest request,String pagename){
		String ma=(String) session.getAttribute("validateCode");
		User byName = userservice.queryByName(user.getUsername());
		if(byName==null || !user.getPassword().equals(byName.getPassword())){
			request.setAttribute("username", user.getUsername());
			return "login";
		}
		else{
			session.setAttribute("name", user.getUsername());		
			String name=(String) session.getAttribute("name");
			System.out.println(name+"-------------已登录------------------->");
			return "home";
		}
	}
	@RequestMapping("/skip")
	public String userlogin(HttpSession session,HttpServletRequest request,String pagename){
		if(pagename==null){
			return "home";
		}	
			//重定向页面
			return "redirect:/"+pagename+".html";
	}
	
//	@RequestMapping("/login")
//	public String login(HttpServletRequest request)throws Exception{
//		//如果登陆失败从request中获取认证异常信息，shiroLoginFailure就是shiro异常类的全限定名
//				String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
//				//根据shiro返回的异常类路径判断，抛出指定异常信息
//				if(exceptionClassName!=null){
//					if (UnknownAccountException.class.getName().equals(exceptionClassName)){ 
//						//最终会抛给异常处理器
//						throw new CustomException("账号不存在");				
//					} else if (IncorrectCredentialsException.class.getName().equals(
//							exceptionClassName)) {
//						throw new CustomException("密码错误");
//					 }else if("randomCodeError".equals(exceptionClassName)){
//						throw new CustomException("验证码错误 ");
//					} else {
//						throw new Exception();//最终在异常处理器生成未知错误
//					 }
//				}
//				
//				//此方法不处理登陆成功（认证成功），shiro认证成功会自动跳转到上一个请求路径
//				//登陆失败还到login页面
//				return "login";
//	}
	
	@RequestMapping("/jiaoyan")
	public @ResponseBody String selectByName(String username){
		User queryName = userservice.queryByName(username);
		if(queryName==null){
			return "null";
		}else{
			return queryName.getPassword();
		}		
	}
	/*@RequestMapping("/zhuce")
	public @ResponseBody String userZhuce(User user,String password1){
		if(user.getUsername().equals("")||user.getPassword().equals("")){
		System.out.println("名字和密码不能为空");
		return"no";
		}
		else if(!user.getPassword().equals(password1)){
		System.out.println(user.getPassword()+"两次输入密码不一致"+password1);
		return "no";
		}
		else{
		System.out.println(user+"----------");
		}
		if(userservice.queryByName(user.getUsername())==null){
			userservice.addUser(user);
			return "ok";
		}
		return "error";
	}
	@RequestMapping("/youx")
	public @ResponseBody String youx(String email)throws MessagingException{
			//随机生成四位数
			int ran=(int)(Math.random()*9000)+1000;
			String ma = String.valueOf(ran);
			System.out.println(ran);
			try {
				JJEmailutil.yanz(email,"验证码","验证码：<font color='blue'>"+ran+"</font>");
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				System.out.println("网路未连接···");
				e.printStackTrace();
				return "error";
			}
			return ma;	
		}	*/
	/*@RequestMapping("/removepsw")
	public @ResponseBody String removePsw(String username,String email)throws MessagingException{
		System.out.println(username+email);
		if(email==null){
			User name = userservice.queryName(username);
			if(name==null){
				return "nohave";
			}else{
				return name.getEmail();
			}
		}
		//随机生成四位数
		int ran=(int)(Math.random()*9000)+1000;
		String ma = String.valueOf(ran);
		System.out.println(ran);
		try {
			JJEmailutil.yanz(email,"验证码","验证码：<font color='blue'>"+ran+"</font>");
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			System.out.println("网路未连接···");
			e.printStackTrace();
			return "error";
		}
		return ma;
	}	
	@RequestMapping("/xiugai")
	public @ResponseBody String Xiugai(String username,String password){
		userservice.Xiugaipsw(username, password);
		return "ok";
		}	*/
}
