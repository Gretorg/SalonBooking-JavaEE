package DataBase;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import Models.Schedule;
import Models.Client;
import Models.Masters;

import java.util.Date;

public class SalonDB {
    private String jdbcURL = "jdbc:mysql://localhost/salon?serverTimezone=UTC";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    //Queries
    private static final String Select_all_from_Schedule = 
    		"select schedule.schedule_id, schedule.schedule_day, gender.gender,Time_schedule.time_of_schedule,\r\n" + 
    		"master.master_name,master.master_surname, Reserve_status.reserve_status\r\n" + 
    		"from schedule join gender\r\n" + 
    		"on schedule.gender_id = gender.gender_id\r\n" + 
    		"	join Time_schedule\r\n" + 
    		"	on schedule.time_id = Time_schedule.time_id\r\n" + 
    		"		join master\r\n" + 
    		"		on schedule.master_id = master.master_id\r\n" + 
    		"			join Reserve_status\r\n" + 
    		"			on schedule.reserve_id = Reserve_status.reserve_id\r\n" + 
    		"where schedule.schedule_day=? and gender.gender_id=?\r\n" + 
    		";";
    
    public static final String Select_all_free_Schedule="select schedule.schedule_id, schedule.schedule_day, gender.gender,Time_schedule.time_of_schedule,\r\n" + 
    		"master.master_name,master.master_surname\r\n" + 
    		"from schedule join gender\r\n" + 
    		"on schedule.gender_id = gender.gender_id\r\n" + 
    		"	join Time_schedule\r\n" + 
    		"	on schedule.time_id = Time_schedule.time_id\r\n" + 
    		"		join master\r\n" + 
    		"		on schedule.master_id = master.master_id\r\n" + 
    		"			join Reserve_status\r\n" + 
    		"			on schedule.reserve_id = Reserve_status.reserve_id\r\n" + 
    		"where schedule.schedule_day=? and gender.gender_id=? and Reserve_status.reserve_status=\"Free\"\r\n" + 
    		";";
    
    public static final String Insert_New_Client="insert into Client values(NULL,?,?,?);";
    public static final String Select_New_client="select * from client where client_name=? and client_surname=? and client_ph_number=?;";
    public static final String Update_Schedule_Reserve="update schedule set reserve_id = 2, client_id = ? where schedule_id=?;";
    
    public static final String Select_masters="select master_id,master_name,master_surname from master;";
    //Connection to MariaDB
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {

            e.printStackTrace();
        } catch (ClassNotFoundException e) {

            e.printStackTrace();
        }
        return connection;
    }
    
    public List<Masters> selectMaster() {
        List<Masters> masters = new ArrayList<>();
        try (Connection connection = getConnection();
            
        	PreparedStatement preparedStatement = connection.prepareStatement(Select_masters);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
            	int master_id=rs.getInt("master_id");
               String master_name=rs.getString("master_name");
               String master_surname=rs.getString("master_surname");
          
               masters.add(new Masters(master_id,master_name,master_surname));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return masters;
    }
    
    //Schedule on the main page
    public List<Schedule> selectSchedule(int id) {
        List<Schedule> schedule = new ArrayList<>();
        try (Connection connection = getConnection();
            
        	PreparedStatement preparedStatement = connection.prepareStatement(Select_all_from_Schedule);) {
            System.out.println(preparedStatement);
            Date date = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            preparedStatement.setString(1,formatter.format(date));
            preparedStatement.setInt(2, id);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
            	int schedule_id=rs.getInt("schedule.schedule_id");
               String schedule_day=rs.getString("schedule.schedule_day");
               String schedule_gender=rs.getString("gender.gender");
               String schedule_time=rs.getString("Time_schedule.time_of_schedule");
               String master_name=rs.getString("master.master_name");
               String master_surname=rs.getString("master.master_surname");
               String reserve_status=rs.getString("Reserve_status.reserve_status");
               schedule.add(new Schedule(schedule_id,schedule_day,schedule_gender,schedule_time,master_name,master_surname,reserve_status));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return schedule;
    }
    
    public List<Schedule> selectScheduleRefresh(int id, String date) {
        List<Schedule> schedule = new ArrayList<>();
        try (Connection connection = getConnection();
            
        	PreparedStatement preparedStatement = connection.prepareStatement(Select_all_from_Schedule);) {
            System.out.println(preparedStatement);
            preparedStatement.setString(1,date);
            preparedStatement.setInt(2, id);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
               int schedule_id=rs.getInt("schedule.schedule_id");
               String schedule_day=rs.getString("schedule.schedule_day");
               String schedule_gender=rs.getString("gender.gender");
               String schedule_time=rs.getString("Time_schedule.time_of_schedule");
               String master_name=rs.getString("master.master_name");
               String master_surname=rs.getString("master.master_surname");
               String reserve_status=rs.getString("Reserve_status.reserve_status");
               schedule.add(new Schedule(schedule_id,schedule_day,schedule_gender,schedule_time,master_name,master_surname,reserve_status));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return schedule;
    }
    
    public List<Schedule> selectScheduleReserve(int id) {
        List<Schedule> schedule = new ArrayList<>();
        try (Connection connection = getConnection();
            
        	PreparedStatement preparedStatement = connection.prepareStatement(Select_all_free_Schedule);) {
            System.out.println(preparedStatement);
            Date date = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            preparedStatement.setString(1,formatter.format(date));
            preparedStatement.setInt(2, id);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
            	int schedule_id=rs.getInt("schedule.schedule_id");
               String schedule_day=rs.getString("schedule.schedule_day");
               String schedule_gender=rs.getString("gender.gender");
               String schedule_time=rs.getString("Time_schedule.time_of_schedule");
               String master_name=rs.getString("master.master_name");
               String master_surname=rs.getString("master.master_surname");
               //String reserve_status=rs.getString("Reserve_status.reserve_status");
               schedule.add(new Schedule(schedule_id,schedule_day,schedule_gender,schedule_time,master_name,master_surname));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return schedule;
    }
 
    
    public boolean updateSchedule(Schedule schedule) throws SQLException{
    	boolean rowUpdated;
    	try (Connection connection = getConnection();
    			PreparedStatement statement = connection.prepareStatement(Update_Schedule_Reserve);) {
			statement.setInt(1, schedule.getClient_id());
			statement.setInt(2, schedule.getSchedule_id());
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}
    
    public List<Schedule> selectScheduleRefreshReserve(int id, String date) {
        List<Schedule> schedule = new ArrayList<>();
        try (Connection connection = getConnection();
            
        	PreparedStatement preparedStatement = connection.prepareStatement(Select_all_free_Schedule);) {
            System.out.println(preparedStatement);
            preparedStatement.setString(1,date);
            preparedStatement.setInt(2, id);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
               int schedule_id=rs.getInt("schedule.schedule_id");
               String schedule_day=rs.getString("schedule.schedule_day");
               String schedule_gender=rs.getString("gender.gender");
               String schedule_time=rs.getString("Time_schedule.time_of_schedule");
               String master_name=rs.getString("master.master_name");
               String master_surname=rs.getString("master.master_surname");
               schedule.add(new Schedule(schedule_id,schedule_day,schedule_gender,schedule_time,master_name,master_surname));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return schedule;
    }
    
	
	public void insertClient(Client client) throws SQLException {
		System.out.println(Insert_New_Client);
		
		try (Connection connection = getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(Insert_New_Client)) {
			preparedStatement.setString(1, client.getClient_name());
			preparedStatement.setString(2, client.getClient_surname());
			preparedStatement.setString(3, client.getClient_ph_number());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}
    
	 public List<Client> selectNewClient(String name,String surname,String number) {
	        List<Client> client = new ArrayList<>();
	        try (Connection connection = getConnection();
	            
	        	PreparedStatement preparedStatement = connection.prepareStatement(Select_New_client);) {
	            System.out.println(preparedStatement);
	            preparedStatement.setString(1,name);
	            preparedStatement.setString(2, surname);
	            preparedStatement.setString(3,number);
	            ResultSet rs = preparedStatement.executeQuery();
	            
	            while (rs.next()) {
	               int client_id=rs.getInt("client_id");
	               String client_name=rs.getString("client_name");
	               String client_surname=rs.getString("client_surname");
	               String client_ph_number=rs.getString("client_ph_number");
	               client.add(new Client(client_id,client_name,client_surname,client_ph_number));
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return client;
	    }
    
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
