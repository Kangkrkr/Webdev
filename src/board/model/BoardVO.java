package board.model;

import java.io.Serializable;

import org.apache.commons.codec.digest.DigestUtils;

// board 테이블의 아이템들과 맵핑되는 VO 객체를 만든다.
public class BoardVO implements Serializable {

	private int no;
	private String title;
	private String name;
	private String content;
	private String regdate;
	private String pwd;
	private int readcount;
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = DigestUtils.sha512Hex(pwd);
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", title=" + title + ", name=" + name + ", content=" + content + ", regdate="
				+ regdate + ", pwd=" + pwd + ", readcount=" + readcount + "]";
	}

}
