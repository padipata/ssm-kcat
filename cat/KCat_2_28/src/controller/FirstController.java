package controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import dao.FirstDAO;
import model.First;
@Controller
public class FirstController {
	FirstDAO firstDAO;

	public FirstDAO getFirstDAO() {
		return firstDAO;
	}
	@Resource
	public void setFirstDAO(FirstDAO firstDAO) {
		this.firstDAO = firstDAO;
	}
/*
 * 检查登录
 */
	@RequestMapping("/login.do")
	@ResponseBody
	public boolean login(HttpSession session,First first){
		System.out.println("进入login"+first.getUserName()+":"+first.getUserPwd());
		ArrayList<First> list=firstDAO.login(first);
		if(list.size()>0){
			return true;
		}else{
			return false;
		}
	}
/*
 * 检查用户名	
 */
	@RequestMapping("/checkUser.do")
	@ResponseBody
	public boolean checkUser(First first){
		System.out.println("进入了add111");
		ArrayList<First> list=firstDAO.checkUser(first);
		if(list.size()>0){     //有用户
			return false;    //判断到由用户名存在
		}
		return true;
	}
/*
 * 添加用户
 * 	
 */
	@RequestMapping("/addUser.do")
	@ResponseBody
	public boolean addUser(First first){
		System.out.println("进入controller_add:"+first.getUserName()+":"+first.getUserPwd()+":"+first.getSex()+":"+first.getEmail()+":"+first.getBirthday());
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");    //设置日期格式
		System.out.println(df.format(new Date()));    //new Date()为获取当前系统时间

		firstDAO.addUser(first);
		return true;
	}

/*
 * 获取所有用户信息 
 * 	
 */
		@RequestMapping("/getAllUser.do")
		@ResponseBody
		public ArrayList<First> getAllUser(){		
			return firstDAO.getAllUser(); 
		}
		
/*
 * 修改用户信息 
 * 	
 */
		
		@RequestMapping("/modifyUser.do")
		@ResponseBody
		public boolean modifyUser(First first){
			System.out.println("进入controller_modify:"+first.getUserName()+":"+first.getUserPwd()+":"+first.getSex()+":"+first.getEmail());
			
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");    //设置日期格式
			System.out.println(df.format(new Date()));    //new Date()为获取当前系统时间

			firstDAO.modifyUser(first);
			return true;
		}

/*
 * 删除用户信息 
 * 	
 */
		@RequestMapping("/deleteUser.do")
		@ResponseBody
		public boolean deleteUser(int id){
			System.out.println("进入controller_delete:id = "+id);
			
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");    //设置日期格式
			System.out.println(df.format(new Date()));    //new Date()为获取当前系统时间

			firstDAO.deleteUser(id);
			return true;
		}
		
}
