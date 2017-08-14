package model;
//暂时没有用的bang标题
public class BangTitle {
	private int id;
	private String titleName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitleName() {
		return titleName;
	}
	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}
	@Override
	public String toString() {
		return "BangTitle [id=" + id + ", titleName=" + titleName + "]";
	}

}
