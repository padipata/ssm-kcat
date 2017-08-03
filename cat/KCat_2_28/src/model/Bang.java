package model;

public class Bang {
	private int id;
	private String videoName;
	private int videoType;
	private String videoUrl;
	private String videoImage;
	private String videoExplain;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getVideoName() {
		return videoName;
	}
	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}
	public int getVideoType() {
		return videoType;
	}
	public void setVideoType(int videoType) {
		this.videoType = videoType;
	}
	public String getVideoUrl() {
		return videoUrl;
	}
	public void setVideoUrl(String videoUrl) {
		this.videoUrl = videoUrl;
	}
	public String getVideoImage() {
		return videoImage;
	}
	public void setVideoImage(String videoImage) {
		this.videoImage = videoImage;
	}
	public String getVideoExplain() {
		return videoExplain;
	}
	public void setVideoExplain(String videoExplain) {
		this.videoExplain = videoExplain;
	}
	@Override
	public String toString() {
		return "Bang [id=" + id + ", videoName=" + videoName + ", videoType=" + videoType + ", videoUrl=" + videoUrl
				+ ", videoImage=" + videoImage + ", videoExplain=" + videoExplain + "]";
	}


}
