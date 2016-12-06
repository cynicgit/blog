package ip.cynic.domain;

/**
 * 友情链接
 * 
 * @author cynic
 * 
 */
public class Link {

	private Integer id;
	private String urlName;
	private String url;
	private int orderNo;// 排序

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUrlName() {
		return urlName;
	}

	public void setUrlName(String urlName) {
		this.urlName = urlName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

}
