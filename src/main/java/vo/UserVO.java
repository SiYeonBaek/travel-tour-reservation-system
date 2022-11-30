package vo;

public class UserVO {
	
	//	uidx varchar2(10) primary key,	-- 유저 고유번호
	//	uname varchar2(5) not null,		-- 유저 이름
	//	"uid" varchar2(20) not null,		-- 유저 아이디
	//	upwd varchar2(20)  not null,		-- 유저 비밀번호
	//	uaddr varchar2(300),		-- 유저 주소
	//	uphone varchar2(12) not null,		-- 유저 핸드폰 번호
	//	uemail varchar2(200),		-- 유저 이메일
	//	ubirth varchar2(8) not null		-- 유저 생일
	
	// Field
	private String uidx;
	private String uname;
	private String uid;
	private String upwd;
	private String uaddr;
	private String uphone;
	private String uemail;
	private String ubirth;
	
	// Getter/Setter
	public String getUidx() {
		return uidx;
	}
	public void setUidx(String uidx) {
		this.uidx = uidx;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUaddr() {
		return uaddr;
	}
	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUbirth() {
		return ubirth;
	}
	public void setUbirth(String ubirth) {
		this.ubirth = ubirth;
	}
	
	
}
