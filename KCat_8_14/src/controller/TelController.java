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
import dao.TelDAO;
import model.Tel;

@Controller
public class TelController {
	TelDAO telDAO;

	public TelDAO getTelDAO() {
		return telDAO;
	}
	
	@Resource
	public void setTelDAO(TelDAO telDAO) {
		this.telDAO = telDAO;
	}
	
	@RequestMapping("/getTel.do")
	public void getTel(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		ArrayList<Tel> list=telDAO.getTel();
		System.out.println(list);
		request.setAttribute(Global.Tel_DATA, list);	
		request.getRequestDispatcher("/visitor/xydh.jsp").forward(request, response);
		
		return;
	}
	
}
