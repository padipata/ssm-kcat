package mapper;

import java.util.ArrayList;

import model.First;
import model.Pager;

public interface FirstMapper {
	public ArrayList<First> login(First first);
	public ArrayList<First> checkUser(First first);
	public void addUser(First first);
	public ArrayList<First> getPartUser(Pager pager);
	public void deleteUser(int id);   //根据id删除用户
	public void modifyUser(First first);   //修改指定id的用户信息
	public First findUserById(int id);   //根据id查询用户对象
}
