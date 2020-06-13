package Models;

public class Client {
	private int client_id;
	private String client_name;
	private String client_surname;
	private String client_ph_number;
	
	public Client(int client_id,String client_name,String client_surname,String client_ph_number){
		super();
		this.client_id=client_id;
		this.client_name=client_name;
		this.client_surname=client_surname;
		this.client_ph_number=client_ph_number;
	}
	
	public Client(String client_name,String client_surname,String client_ph_number){
		super();
		this.client_name=client_name;
		this.client_surname=client_surname;
		this.client_ph_number=client_ph_number;
	}
	
	public Client(int client_id){
		super();
		this.client_id=client_id;
	}
	
	public void setClient_id(int client_id) {
		this.client_id=client_id;
	}
	public int getClient_id() {
		return client_id;
	}
	
	public void setClient_name(String client_name) {
		this.client_name=client_name;
	}
	public String getClient_name() {
		return client_name;
	}
	
	public void setClient_surname(String client_surname) {
		this.client_surname=client_surname;
	}
	public String getClient_surname() {
		return client_surname;
	}
	
	public void setClient_ph_number(String client_ph_number) {
		this.client_ph_number=client_ph_number;
	}
	public String getClient_ph_number() {
		return client_ph_number;
	}
}
