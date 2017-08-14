package controller;


import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import constan.Global;
import dao.HomeworkDAO;

import model.Homework;

@Controller
public class HomeworkController {
	HomeworkDAO homeworkDAO;

	public HomeworkDAO getHomeworkDAO() {
		return homeworkDAO;
	}
	@Resource
	public void setHomeworkDAO(HomeworkDAO homeworkDAO) {
		this.homeworkDAO = homeworkDAO;
	}
	

	//获取所有字段
	@RequestMapping("/getHomework.do")
	public void getHomework(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
		int type_count = homeworkDAO.getCid();    //板块的数量
		ArrayList<Homework> list=new ArrayList<Homework>();
		
		ArrayList<Homework> list_2=new ArrayList<Homework>();
		
		for (int i = 1; i <=type_count ; i++) {
			list=homeworkDAO.getHomework(i);
			for(int j=0;j<list.size();j++){
				list_2.add(list.get(j));
				System.out.println(list_2);
			}
		}
		System.out.println(list_2);
		request.setAttribute(Global.HOMEWORK_DATA, list_2);
		request.getRequestDispatcher("/visitor/zyfz.jsp").forward(request, response);
		return;    //跳转到bang.jsp页面，jsp已经补全
	}
	
	//获取指定分类的所有字段
		@RequestMapping("/getHomework_All.do")
		public void getHomework_All(Homework homework,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
			
			ArrayList<Homework> list=homeworkDAO.getHomework_All(homework.getCid());
			
			request.setAttribute(Global.HOMEWORK_DATA_MORE, list);
			request.getRequestDispatcher("/visitor/zyfz_cg.jsp").forward(request, response);
			return;    //跳转到bang.jsp页面，jsp已经补全
		}
}
