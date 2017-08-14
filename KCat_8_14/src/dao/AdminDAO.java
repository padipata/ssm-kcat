package dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import mapper.AdminMapper;
import model.Admin;
@Component
public class AdminDAO {
	AdminMapper adminMapper;

	public AdminMapper getAdminMapper() {
		return adminMapper;
	}
	@Resource
	public void setAdminMapper(AdminMapper adminMapper) {
		this.adminMapper = adminMapper;
	}
	//根据传来的用户名和密码判断用户是否存在
	public boolean checkAdmin(Admin admin){
		ArrayList<Admin> list=adminMapper.checkAdmin(admin);
		if(list.size()>0){
			return true;
		}
		return false;
	}
	

}
