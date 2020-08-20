package exception;

public class Exception extends RuntimeException{
	private String url;
	public Exception(String msg, String url) {
		super(msg);
		this.url=url;
	}
	public String getUrl() {
		return url;
	}
}