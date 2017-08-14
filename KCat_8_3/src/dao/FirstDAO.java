package dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import mapper.FirstMapper;
import model.First;
import model.Pager;
@Component
public class FirstDAO {
	FirstMapper firstMapper;

	public FirstMapper getFirstMapper() {
		return firstMapper;
	}
	@Resource
	public void setFirstMapper(FirstMapper firstMapper) {
		this.firstMapper = firstMapper;
	}
	//检查用户名和密码
	public ArrayList<First> login(First first){
		ArrayList<First> list=firstMapper.login(first);
		return list;
	}
	//检查用户名
	public ArrayList<First> checkUser(First first){
		ArrayList<First> list=firstMapper.checkUser(first);
		return list;
	}
	//添加用户
	public void addUser(First first){
		firstMapper.addUser(first);
	}
	
	//查询指定数量的用户对象
	public ArrayList<First> getPartUser(Pager pager){
		return firstMapper.getPartUser(pager);
	}
	//删除指定id的用户对象
	public void deleteUser(int id){
		System.out.println("传到dao层的id为:"+id);
		firstMapper.deleteUser(id);
	}
	//根据id修改用户对象	
	public void modifyUser(First first){
		firstMapper.modifyUser(first);
	}
	//根据id查询用户对象
	public First findUserById(int id){
		return firstMapper.findUserById(id);
	}

	//获取所有用户信息
	public ArrayList<First> getAllUser(){
		return firstMapper.getAllUser();
	}
	
}
