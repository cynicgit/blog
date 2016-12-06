package ip.cynic.domain;

public class BlogType {

	private Integer id;
	private String typeName;
	private int orderNo;

	private int blogCount;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getBlogCount() {
		return blogCount;
	}

	public void setBlogCount(int blogCount) {
		this.blogCount = blogCount;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

}
