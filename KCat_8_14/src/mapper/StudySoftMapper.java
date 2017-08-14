package mapper;

import java.util.ArrayList;
import model.StudySoft;
import model.StudySoft_titleB;
import model.StudySoft_titleS;

public interface StudySoftMapper {
	public ArrayList<StudySoft_titleB> getStudySoftB();
	public ArrayList<StudySoft_titleS> getStudySoftS(int tidB);
	public ArrayList<StudySoft> getStudySoft(int tidS);
	public ArrayList<StudySoft> getStudySoft_All(int id);   //通过id寻找该软件的所有信息
	public ArrayList<StudySoft> getStudySoft_id(String name);   //通过软件名字查找该软件的信息
	public ArrayList<StudySoft> getAllSoftName(); //获得所有软件的名字
	public void addSoftName(String softName); //添加软件的名字
	public void addStudySoft(StudySoft studySoft); //添加专业软件
	public int getSoftName_id(String softName); //获得软件名字对应的序号
}
