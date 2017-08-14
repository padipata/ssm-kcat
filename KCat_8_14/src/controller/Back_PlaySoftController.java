package controller;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import dao.PlaySoftDAO;
import model.PlaySoft;

@Controller
@RequestMapping("/back")
public class Back_PlaySoftController {
	PlaySoftDAO playSoftDAO;
	
	public PlaySoftDAO getPlaySoftDAO() {
		return playSoftDAO;
	}
	@Resource
	public void setPlaySoftDAO(PlaySoftDAO playSoftDAO) {
		this.playSoftDAO = playSoftDAO;
	}
	
	
/**
 * 跳转到错误页面	
 * @param request
 * @param response
 */
	@RequestMapping("/error.do")	
	public void toError(HttpServletRequest request,HttpServletResponse response){
		try {
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
/**
 * 跳转到adminIndex：管理员首页
 * @param request
 * @param response
 */
//	@RequestMapping("/index.do")
//	public void toAdminIndex(HttpServletRequest request,HttpServletResponse response){
//		try {
//			request.getRequestDispatcher("/admin/adminIndex.jsp").forward(request, response);
//		} catch (ServletException | IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}	
	
/**
 * 跳转到上传页面
 * @param request
 * @param response
 */
	@RequestMapping("/uploadPage.do")  //提交跳转用jsp，直接点击用.do隐藏
	public void toPlayUpload(HttpServletRequest request,HttpServletResponse response){
		System.out.println("进入了uploadPage的controller方法");
		try {
			request.getRequestDispatcher("/admin/yuleruanjianUpload.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	
	
/**
 * 首先获取时间为文件命名
 * copy文件到指定位置
 * 将对象信息存入数据库	
 * @param playSoft
 * @param request
 * @param imageFile
 * @param response
 * @throws ServletException
 * @throws IOException
 */
	@RequestMapping("/uploadPlay.do")
	public void uploadPlay(PlaySoft playSoft,HttpServletRequest request,@RequestParam("imageFile") MultipartFile imageFile,HttpServletResponse response) throws ServletException, IOException{
		
		//根据时间生成文件名		
		String uploadUrl=request.getSession().getServletContext().getRealPath("/")+"images//ylrj//";      //获取路径:存储到娱乐软件
//		String filename=imageFile.getOriginalFilename();    //获取文件名

		Calendar cal=Calendar.getInstance();
		int year=cal.get(Calendar.YEAR);//获取年
		int month=cal.get(Calendar.MONTH)+1;//获取月
		String month_2="";
		String day_2="";
		String hour_2="";
		String minute_2="";
		String second_2="";
		
		if(month<10){
			month_2="0"+month;
		}else{
			month_2=""+month;
		}
		int day=cal.get(Calendar.DAY_OF_MONTH);//获取月
		if(day<10){
			day_2="0"+day;
		}else{
			day_2=""+day;
		}
		int hour=cal.get(Calendar.HOUR_OF_DAY);
		if(hour<10){
			hour_2="0"+hour;
		}else{
			hour_2=""+hour;
		}
		int minute=cal.get(Calendar.MINUTE);
		if(minute<10){
			minute_2="0"+minute;
		}else{
			minute_2=""+minute;
		}
		int second=cal.get(Calendar.SECOND);
		if(second<10){
			second_2="0"+second;
		}else{
			second_2=""+second;
		}

		String filename=year+month_2+day_2+hour_2+minute_2+second_2+".jpg";   //只限上传jpg文件
		System.out.println("总"+filename);

		File dir=new File(uploadUrl);   //新建File文件夹对象
		if(!dir.exists()){    //判断不存在新建文件夹
			dir.mkdirs();
		}
		System.out.println("文件上传到"+uploadUrl+filename);
		File targetFile=new File(uploadUrl+filename);    //新建文件内容对象
		if(!targetFile.exists()){
			try {
				targetFile.createNewFile();    //文件不存在新建文件
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		try {
			imageFile.transferTo(targetFile);
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//存入数据库
		playSoft.setSoftImage("ylrj/"+filename);
		playSoftDAO.uploadPlay(playSoft);
		
		request.getRequestDispatcher("/admin/yuleruanjianUpload.jsp").forward(request, response);
	}

}
