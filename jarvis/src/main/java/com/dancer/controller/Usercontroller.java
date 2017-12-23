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
 * @Description: �û���¼
 * @author dancer
 * @param  
 * @return 
 * @throws 
 * @data 2017��4��15������2:04:38
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
			System.out.println(name+"-------------�ѵ�¼------------------->");
			return "home";
		}
	}
	@RequestMapping("/skip")
	public String userlogin(HttpSession session,HttpServletRequest request,String pagename){
		if(pagename==null){
			return "home";
		}	
			//�ض���ҳ��
			return "redirect:/"+pagename+".html";
	}
	
//	@RequestMapping("/login")
//	public String login(HttpServletRequest request)throws Exception{
//		//�����½ʧ�ܴ�request�л�ȡ��֤�쳣��Ϣ��shiroLoginFailure����shiro�쳣���ȫ�޶���
//				String exceptionClassName = (String) request.getAttribute("shiroLoginFailure");
//				//����shiro���ص��쳣��·���жϣ��׳�ָ���쳣��Ϣ
//				if(exceptionClassName!=null){
//					if (UnknownAccountException.class.getName().equals(exceptionClassName)){ 
//						//���ջ��׸��쳣������
//						throw new CustomException("�˺Ų�����");				
//					} else if (IncorrectCredentialsException.class.getName().equals(
//							exceptionClassName)) {
//						throw new CustomException("�������");
//					 }else if("randomCodeError".equals(exceptionClassName)){
//						throw new CustomException("��֤����� ");
//					} else {
//						throw new Exception();//�������쳣����������δ֪����
//					 }
//				}
//				
//				//�˷����������½�ɹ�����֤�ɹ�����shiro��֤�ɹ����Զ���ת����һ������·��
//				//��½ʧ�ܻ���loginҳ��
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
		System.out.println("���ֺ����벻��Ϊ��");
		return"no";
		}
		else if(!user.getPassword().equals(password1)){
		System.out.println(user.getPassword()+"�����������벻һ��"+password1);
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
			//���������λ��
			int ran=(int)(Math.random()*9000)+1000;
			String ma = String.valueOf(ran);
			System.out.println(ran);
			try {
				JJEmailutil.yanz(email,"��֤��","��֤�룺<font color='blue'>"+ran+"</font>");
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				System.out.println("��·δ���ӡ�����");
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
		//���������λ��
		int ran=(int)(Math.random()*9000)+1000;
		String ma = String.valueOf(ran);
		System.out.println(ran);
		try {
			JJEmailutil.yanz(email,"��֤��","��֤�룺<font color='blue'>"+ran+"</font>");
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			System.out.println("��·δ���ӡ�����");
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
