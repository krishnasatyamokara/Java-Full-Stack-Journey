package practice_JSP;

public class Student {
	private String firstName;
	private String lastName;
	
	public Student() {
		firstName = "Satya";
		lastName = "Mokara";
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}
