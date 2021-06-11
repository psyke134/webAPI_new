package Model;

public class Account {
	private String username;
	private String password;
	private String email;
	private String phone_number;
	private String address;
	private String name;
	
	public Account(String username, String password, String email, String phone_number, String address, String name)
	{
		this.username = username;
		this.password = password;
		this.email = email;
		this.phone_number = phone_number;
		this.address = address;
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
