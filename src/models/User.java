package models;

public class User {
	public String id = "";
	public String name = ""; // Fullname
	public String imageUrl = "";
	public String description = "";
	public String urlInfo = "";
	public String email = "";
	public String password = "";
	public String firstName = "";
	public String lastName = "";
	public String heardFrom = "";
	public String updates = "";
	public String contactVia = "";

	public User() {
		firstName = "";
		lastName = "";
		email = "";
	}

	public User(String firstName, String lastName, String email, String heardFrom, String updates, String contactVia) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.heardFrom = heardFrom;
		this.updates = updates;
		this.contactVia = contactVia;
	}

	public User(String id, String name, String imageUrl, String description, String urlInfo) {
		this.id = id;
		this.name = name;
		this.imageUrl = imageUrl;
		this.description = description;
		this.urlInfo = urlInfo;
	}

	public User(String name, String email, String password) {
		this.name = name;
		this.email = email;
		this.password = password;
	}

	public String getName() {
		return this.name;
	}

	public String getEmail() {
		return this.email;
	}

	public String getPassword() {
		return this.password;
	}

	public String getLastName() {
		return this.lastName;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public String getHeardFrom() {
		return this.heardFrom;
	}

	public String getUpdates() {
		return this.updates;
	}

	public String getContactVia() {
		return this.contactVia;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setPwd(String pwd) {
		this.password = pwd;
	}
}
