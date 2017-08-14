package dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import mapper.PlaySoftMapper;
import model.PlaySoft;
import model.PlaySoft_title;

@Component
public class PlaySoftDAO {
	PlaySoftMapper playSoftMapper;

	public PlaySoftMapper getPlaySoftMapper() {
		return playSoftMapper;
	}
	@Resource
	public void setPlaySoftMapper(PlaySoftMapper playSoftMapper) {
		this.playSoftMapper = playSoftMapper;
	}
/**
 * 获取所有标题信息	
 */
	public ArrayList<PlaySoft_title> getPlaySoft_title(){
		return playSoftMapper.getPlaySoft_title();
	}
/**
 * 根据tid标题id获取该板块信息
 */
	public ArrayList<PlaySoft> getPlaySoft(int tid){
		System.out.println("进入了PlaySoft的DAO方法");
		return playSoftMapper.getPlaySoft(tid);
	}
/**
 * 根据id获取该软件全部信息
 */
	public ArrayList<PlaySoft> getPlaySoft_All(int id){
		System.out.println("进入了PlaySoft_All的DAO方法");
		return playSoftMapper.getPlaySoft_All(id);
	}	
	
/**
 * 添加对象信息到数据库	
 */
	public void uploadPlay(PlaySoft playSoft){
		playSoftMapper.uploadPlay(playSoft);
	}
}
