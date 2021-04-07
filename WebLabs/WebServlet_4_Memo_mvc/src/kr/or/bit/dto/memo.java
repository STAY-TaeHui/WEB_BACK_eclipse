package kr.or.bit.dto;

/*
 * DTO == DB(Table)구조(컬럼명)와 똑같이 만들면 된다. >> [ 자동화 ]ㅆㄱㄴ
 * 
 * create table memo(
	id varchar2(15) not null,
	email varchar2(20) not null,
	content varchar2(100)
);

 *  테이블과 1:1로 설계
 */

public class memo {
	private String id;
	private String email;
	private String content;
	
	public memo() {
		
	}

	public memo(String id, String email, String content) {
		super();
		this.id = id;
		this.email = email;
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "memo [id=" + id + ", email=" + email + ", content=" + content + "]";
	}
}	
