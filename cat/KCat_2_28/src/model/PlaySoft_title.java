package model;

public class PlaySoft_title {
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
		return "PlaySoft_title [id=" + id + ", titleName=" + titleName + "]";
	}

}
