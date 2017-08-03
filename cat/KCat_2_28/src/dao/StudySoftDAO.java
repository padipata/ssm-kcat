package dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import mapper.StudySoftMapper;
import model.PlaySoft;
import model.StudySoft;
import model.StudySoft_titleB;
import model.StudySoft_titleS;

@Component
public class StudySoftDAO {
	StudySoftMapper studySoftMapper;

	public StudySoftMapper getStudySoftMapper() {
		return studySoftMapper;
	}
	@Resource
	public void setStudySoftMapper(StudySoftMapper studySoftMapper) {
		this.studySoftMapper = studySoftMapper;
	}
/**
 * 获取所有的大标题(学院)
 */
	public ArrayList<StudySoft_titleB> getStudySoftB(){
		return studySoftMapper.getStudySoftB();
	}
/**
 * 通过大标题id获取小标题(专业)
 */
	public ArrayList<StudySoft_titleS> getStudySoftS(int tidB){
		return studySoftMapper.getStudySoftS(tidB);
	}
/**
 * 通过小标题id获取专业软件信息	
 */
	public ArrayList<StudySoft> getStudySoft(int tidS){
		return studySoftMapper.getStudySoft(tidS);
	}

/**
 * 根据id获取该软件全部信息
 */
	public ArrayList<StudySoft> getStudySoft_All(int id){
		return studySoftMapper.getStudySoft_All(id);
	}
/**
 * 通过软件名字查找该软件的信息
 */
	public ArrayList<StudySoft> getStudySoft_id(String name){
		return studySoftMapper.getStudySoft_id(name);
	}

/**
 * 获取所有的软件名字
 */
	public  ArrayList<StudySoft> getAllSoftName(){
		return studySoftMapper.getAllSoftName();
	}
	
}
