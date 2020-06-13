package Servlets;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataBase.SalonDB;
import Models.Client;
import Models.Masters;
import Models.Schedule;
@WebServlet("/")

public class Schedule_servlet extends HttpServlet  {
	private static final long serialVersionUID = 1L;
	private SalonDB SalonDB;
	
	public void init() {
		SalonDB = new SalonDB();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/home":
				response.sendRedirect("MainPage.jsp");
				break;
			case "/schedule":
				showSchedule(request,response);
				break;
			case "/refresh":
				showScheduleRefresh(request,response);
				break;
			case "/reserve":
				showScheduleReserve(request,response);
				break;
			case "/reserverefresh":
				showScheduleRefreshReserve(request,response);
				break;
			case "/confirm_reserve":
				confirmReserve(request,response);
				break;
			case "/UpdateSchedule":
				insertClient_SelectClientById_UpdateSchedule(request,response);
				break;
			case "/masters":
				showMasters(request,response);
				break;
			default:
				showSchedule(request,response);
				break;
			}	
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
	
	private void showSchedule(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		int gender_id = 1;
		List<Schedule> schedule = SalonDB.selectSchedule(gender_id);
		request.setAttribute("schedule", schedule);
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private void showMasters(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		
		List<Masters> master = SalonDB.selectMaster();
		request.setAttribute("master", master);
		RequestDispatcher dispatcher = request.getRequestDispatcher("masters.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private void showScheduleRefresh(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		int gender_id = Integer.parseInt(request.getParameter("gender_id"));
		String date = request.getParameter("date");
		List<Schedule> schedule = SalonDB.selectScheduleRefresh(gender_id,date);
		request.setAttribute("schedule", schedule);
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private void showScheduleReserve(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		int gender_id = 1;
		List<Schedule> schedule = SalonDB.selectScheduleReserve(gender_id);
		request.setAttribute("schedule", schedule);
		RequestDispatcher dispatcher = request.getRequestDispatcher("reserve_form.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private void showScheduleRefreshReserve(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		int gender_id = Integer.parseInt(request.getParameter("gender_id"));
		String date = request.getParameter("date");
		List<Schedule> schedule = SalonDB.selectScheduleRefreshReserve(gender_id,date);
		request.setAttribute("schedule", schedule);
		RequestDispatcher dispatcher = request.getRequestDispatcher("reserve_form.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private void insertClient_SelectClientById_UpdateSchedule(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
		
		String name = request.getParameter("name");
		String surname = request.getParameter("surname"); 
		String phone_number = request.getParameter("phone_number");
		Client newClient = new Client(name,surname,phone_number);
		SalonDB.insertClient(newClient);
		
		List<Client> client = SalonDB.selectNewClient(name, surname, phone_number);
		request.setAttribute("client", client);
		
		int schedule_id = Integer.parseInt(request.getParameter("schedule_id"));
		List<Schedule> schedule = new ArrayList<>();
		schedule.add(new Schedule(schedule_id));
		
		request.setAttribute("schedule", schedule);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("reserve_confirm.jsp");
		dispatcher.forward(request, response);
	}
	
	
	private void confirmReserve(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		
		
		int client_id = Integer.parseInt(request.getParameter("client_id"));
		int schedule_id = Integer.parseInt(request.getParameter("schedule_id"));
		
		System.out.println(schedule_id);
		Schedule schedule = new Schedule(schedule_id,client_id);
		SalonDB.updateSchedule(schedule);
		response.sendRedirect("schedule");
	}
	
	
}
