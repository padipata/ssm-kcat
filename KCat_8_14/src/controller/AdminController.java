package controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import constan.Global;
import dao.AdminDAO;
import model.Admin;
import model.First;
@Controller
public class AdminController {
	AdminDAO adminDAO;

	public AdminDAO getAdminDAO() {
		return adminDAO;
	}
	@Resource
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	/**
	 * 跳转到管理员登录页面
	 * @param request
	 * @param response
	 */
	@RequestMapping("/adminPage.do")
	public void toAdminIndex(HttpServletRequest request,HttpServletResponse response){
		try {
			request.getRequestDispatcher("/admin/adminLogin.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	
	/**
	 * 检查用户方法
	 * @param admin
	 * @param session
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping("/checkAdmin.do")
	public void checkAdmin(Admin admin,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		System.out.println("进入了checkAmin的controller方法");
		String path="/error.jsp";
		if(adminDAO.checkAdmin(admin)){
			session.setAttribute(Global.ADMIN,admin);  //将整个对象存入ADMIN的session中
			path="/admin/adminIndex.jsp";     //通过.do跳转才能发挥拦截器
		}
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	public void modifyUser(First first){
		
		
	}
	

}
