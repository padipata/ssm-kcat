package model;

public class Pager {
	private int pageNo;
	private int pageSize;
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	@Override
	public String toString() {
		return "Pager [pageNo=" + pageNo + ", pageSize=" + pageSize + "]";
	}
	
	

}
