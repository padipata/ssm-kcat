package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dao.BangDAO;
import model.Bang;
import model.BangTitle;

@Controller
public class BangController {

	BangDAO bangDAO;

	public BangDAO getBangDAO() {
		return bangDAO;
	}
	@Resource
	public void setBangDAO(BangDAO bangDAO) {
		this.bangDAO = bangDAO;
	}
/**
 * 跳转到帮帮帮页面
 * @param request
 * @param response
 */
	@RequestMapping("/bang.do")
	public void toAdminIndex(HttpServletRequest request,HttpServletResponse response){
		try {
			request.getRequestDispatcher("/visitor/bang.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}		
	

/**
 * 标题获取
 * @param session
 * @throws IOException
 * @throws ServletException 
 */
	@RequestMapping("/getTitle.do")
	@ResponseBody
	public ArrayList<BangTitle> getTitle(){
		return bangDAO.getTitle();      //获取对象的数组
	}
	
	/**
	 * 内容具体信息获取
	 * @param session
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/getBang.do")
	@ResponseBody
	public ArrayList<Bang> getBang(Bang bang) throws IOException{
		System.out.println("获取bang的类型"+bang.getVideoType());
		return bangDAO.getBang(bang.getVideoType());

	}
	
}
