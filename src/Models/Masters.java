package Models;

public class Masters {

	private int master_id;
	private String master_name;
	private String master_surname;
	
	public Masters(int master_id, String master_name, String master_surname) {
		this.master_id=master_id;
		this.master_name=master_name;
		this.master_surname=master_surname;
	}
	
	public void setMaster_id(int master_id) {
		this.master_id=master_id;
	}
	public int getMaster_id() {
		return master_id;
	}
	
	public void setMaster_name(String master_name) {
		this.master_name=master_name;
	}
	public String getMaster_name() {
		return master_name;
	}
	
	public void setMaster_surname(String master_surname) {
		this.master_surname=master_surname;
	}
	public String getMaster_surname() {
		return master_surname;
	}
}
