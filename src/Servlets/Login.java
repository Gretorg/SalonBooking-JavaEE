package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");

        File file = new File("E:\\Workspace EE(Eclipse)\\CourseWorkSalimovskyi\\WebContent\\login_pass.txt");
        FileReader fileReader = new FileReader(file); 
        BufferedReader bufferedReader = new BufferedReader(fileReader); 
        String line;
        int counter=0;
        ArrayList<String> arrayList = new ArrayList<>();
        while((line = bufferedReader.readLine()) != null) {
            arrayList.add(counter,line);
            counter++;
        }
        bufferedReader.close(); 
        for(int i=0;i<arrayList.size();i+=2) {
            String log = arrayList.get(i);
            String pass = arrayList.get(i + 1);
            if (login.equals(log) && password.equals(pass)) {
                if(login.equals("admin")){
                    response.sendRedirect("admin.jsp");
                    return;
                }
                else{
                    response.sendRedirect("user.jsp");
                }
                return;
            }
        }response.sendRedirect("Wrong_data.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

