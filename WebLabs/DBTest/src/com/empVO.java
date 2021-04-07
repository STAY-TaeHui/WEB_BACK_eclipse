package com;

import java.util.Date;

public class empVO {
	 //값을 전달하는데 사용되는 Value Object 클래스
    //테이블에서 조회한 레코드의 컬럼 값을 속성에 저장해야 하므로 컴럼 이름과 동일한 자료형과 이름으로 속성 선언
    //get,set 으로 각각의 값을 return하고 (get) this.~~(set)으로 값을 설정한다.
    private String id;
    private String pwd;
    private String name;
    private String email;
    private Date joinDate;
    
    public empVO() {
        System.out.println("MemberVO start");
    }
 
    public String getId() {
        return id;
    }
 
    public void setId(String id) {
        this.id = id;
    }
 
    public String getPwd() {
        return pwd;
    }
 
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
 
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
 
    public Date getJoinDate() {
        return joinDate;
    }
 
    public void setJoinDate(Date joinDate) {
        this.joinDate = joinDate;
    }
}
