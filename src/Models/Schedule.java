package Models;


public class Schedule {
	private int schedule_id;
	private String schedule_day;
	private String schedule_gender;
	private String schedule_time;
	private String master_name;
	private String master_surname;
	private String reserve_status;
	private int client_id;
	
	public Schedule(int schedule_id,int client_id,String schedule_day, String schedule_gender, String schedule_time,String master_name,String master_surname,String reserve_status) {
		super();
		this.schedule_id=schedule_id;
		this.client_id=client_id;
		this.schedule_day=schedule_day;
		this.schedule_gender=schedule_gender;
		this.schedule_time=schedule_time;
		this.master_name=master_name;
		this.master_surname=master_surname;
		this.reserve_status=reserve_status;
	}
	
	
	public Schedule(int schedule_id,int client_id) {
		super();
		this.schedule_id=schedule_id;
		this.client_id=client_id;
	}
	
	public Schedule(int schedule_id) {
		super();
		this.schedule_id=schedule_id;
	}
	
	
	public Schedule(String schedule_day, String schedule_gender, String schedule_time,String master_name,String master_surname,String reserve_status) {
		super();
		this.schedule_day=schedule_day;
		this.schedule_gender=schedule_gender;
		this.schedule_time=schedule_time;
		this.master_name=master_name;
		this.master_surname=master_surname;
		this.reserve_status=reserve_status;
	}
	
	public Schedule(String schedule_day, String schedule_gender, String schedule_time,String master_name,String master_surname) {
		super();
		this.schedule_day=schedule_day;
		this.schedule_gender=schedule_gender;
		this.schedule_time=schedule_time;
		this.master_name=master_name;
		this.master_surname=master_surname;
	}
	
	public Schedule(int schedule_id,String schedule_day, String schedule_gender, String schedule_time,String master_name,String master_surname,String reserve_status) {
		super();
		this.schedule_id=schedule_id;
		this.schedule_day=schedule_day;
		this.schedule_gender=schedule_gender;
		this.schedule_time=schedule_time;
		this.master_name=master_name;
		this.master_surname=master_surname;
		this.reserve_status=reserve_status;
	}
	
	public Schedule(int schedule_id,String schedule_day, String schedule_gender, String schedule_time,String master_name,String master_surname) {
		super();
		this.schedule_id=schedule_id;
		this.schedule_day=schedule_day;
		this.schedule_gender=schedule_gender;
		this.schedule_time=schedule_time;
		this.master_name=master_name;
		this.master_surname=master_surname;
	}
	
	public void setClient_id(int client_id) {
		this.client_id=client_id;
	}
	public int getClient_id() {
		return client_id;
	}
	
	public void setSchedule_id(int schedule_id) {
		this.schedule_id=schedule_id;
	}
	public int getSchedule_id() {
		return schedule_id;
	}
	
	public void setSchedule_day(String schedule_day) {
		this.schedule_day=schedule_day;
	}
	public String getSchedule_day() {
		return schedule_day;
	}
	
	public void setSchedule_gender(String schedule_gender) {
		this.schedule_gender=schedule_gender;
	}
	public String getSchedule_gender() {
		return schedule_gender;
	}
	
	public void setSchedule_time(String schedule_time) {
		this.schedule_time=schedule_time;
	}
	public String getSchedule_time() {
		return schedule_time;
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
	
	public void setReserve_status(String reserve_status) {
		this.reserve_status=reserve_status;
	}
	public String getReserve_status() {
		return reserve_status;
	}
}
