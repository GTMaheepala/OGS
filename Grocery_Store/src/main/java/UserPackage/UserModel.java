package UserPackage;

public class UserModel {

	private int id;
	private String first_name;
	private String last_name;
	private String email;
	private int phone_no;
	private String password;
	private int check_user;
	
	public UserModel(int id, String first_name, String last_name, String email, int phone_no, String password, int check_user) {
		super();
		this.id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.phone_no = phone_no;
		this.password = password;
		this.check_user = check_user;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(int phone_no) {
		this.phone_no = phone_no;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getCheck_user() {
		return check_user;
	}

	public void setCheck_user(int check_user) {
		this.check_user = check_user;
	}
	
	
}
