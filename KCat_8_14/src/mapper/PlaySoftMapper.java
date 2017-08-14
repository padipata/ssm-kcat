package mapper;

import java.util.ArrayList;

import model.PlaySoft;
import model.PlaySoft_title;

public interface PlaySoftMapper {
	public ArrayList<PlaySoft_title> getPlaySoft_title();    //获取所有的标题信息
	public ArrayList<PlaySoft> getPlaySoft(int tid);   //通过tid寻找该板块所有内容
	public ArrayList<PlaySoft> getPlaySoft_All(int id);   //通过id寻找该软件的所有信息
	public void uploadPlay(PlaySoft playSoft);    //通过对象将信息添加到数据库
}
