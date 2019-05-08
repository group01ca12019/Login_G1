package model;

public class User {
	private String name;
	private String pass;
	public User(String name, String pass) {
		super();
		this.name = name;
		this.pass = pass;
	}
	
	
	public String getName() {
		return name;
	}


	public String getPass() {
		return pass;
	}


	@Override
	public String toString() {
		return "User [name=" + name + ", pass=" + pass + "]";
	}
	

}
