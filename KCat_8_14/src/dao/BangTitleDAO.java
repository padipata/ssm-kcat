package dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import mapper.BangTitleMapper;
import model.BangTitle;

@Component
public class BangTitleDAO {
	BangTitleMapper bangTitleMapper;

	public BangTitleMapper getBangTitleMapper() {
		return bangTitleMapper;
	}
	@Resource
	public void setBangTitleMapper(BangTitleMapper bangTitleMapper) {
		this.bangTitleMapper = bangTitleMapper;
	}
	public ArrayList<BangTitle> getTitle(){
		ArrayList<BangTitle> list=bangTitleMapper.getTitle();
		return list;
	}
	

}
