package session.test;

public class Human {

	private String user_id;
	private String user_name;
	private int level;
	private int connect_count;
	private int birth_year;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getConnect_count() {
		return connect_count;
	}

	public void setConnect_count(int connect_count) {
		this.connect_count = connect_count;
	}

	public int getBirth_year() {
		return birth_year;
	}

	public void setBirth_year(int birth_year) {
		this.birth_year = birth_year;
	}

	@Override
	public String toString() {
		return "Human [user_id=" + user_id + ", user_name=" + user_name + ", level=" + level + ", connect_count="
				+ connect_count + ", birth_year=" + birth_year + "]";
	}

}
