package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.FirstDAO;
import model.First;
import model.Pager;
//后台管理用户页面（受到拦截）

@Controller
@RequestMapping("/back")
public class Back_FirstController {
	FirstDAO firstDAO;

	public FirstDAO getFirstDAO() {
		return firstDAO;
	}
	@Resource
	public void setFirstDAO(FirstDAO firstDAO) {
		this.firstDAO = firstDAO;
	}
	
/**
 * 跳转到用户管理页面	
 * @param request
 * @param response
 */
	@RequestMapping("/toPartUserPage.do")	
	public void toPartUserPage(HttpServletRequest request,HttpServletResponse response){
		try {
			request.getRequestDispatcher("/admin/userManage.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

/**
 * 获取指定部分内容的用户信息
 * @return
 */
	@RequestMapping("/getPartUser.do")
	@ResponseBody
	public ArrayList<First> getPartUser(){

		Pager pager=new Pager();   //这里我用固定的第几页与页的Size，之后需要修改通过判断去传数值
		pager.setPageNo(0);	  //从0开始
		pager.setPageSize(3);   //显示三条
		System.out.println(firstDAO.getPartUser(pager));
		return firstDAO.getPartUser(pager);
	}
/**
 * 删除指定id的用户	
 * @param id
 */
	@RequestMapping("/deleteUser.do")
	public void deleteUser(int id,HttpServletRequest request,HttpServletResponse response){
		System.out.println("First从前端获取到的id为："+id);
		firstDAO.deleteUser(id);   //没有返回执行信息
		//执行删除之后不做点什么会跳转错误！！！
		try {
			request.getRequestDispatcher("/admin/userManage.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
/**
 * 根据id修改用户	
 * @param first
 */
	@RequestMapping("/modifyUser.do")
	public void modifyUser(First first){
		firstDAO.modifyUser(first);   //没有返回执行信息
	}
/**
 * 根据id查询用户对象
 * @param id
 * @return
 */
	@RequestMapping("/findUserById.do")
	@ResponseBody
	public First findUserById(int id){
		return firstDAO.findUserById(id);
	}
	
}
