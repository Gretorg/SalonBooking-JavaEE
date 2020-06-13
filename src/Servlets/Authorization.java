package Servlets;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;

@WebServlet("/Authorization")
public class Authorization extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");

        File file = new File("E:\\Workspace EE(Eclipse)\\CourseWorkSalimovskyi\\WebContent\\login_pass.txt");

        FileReader fileReader = new FileReader(file); 
        BufferedReader bufferedReader = new BufferedReader(fileReader); 

        String line;
        int counter=2;
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(0,login);//add in the start of arrayList login and password
        arrayList.add(1,password);
        while((line = bufferedReader.readLine()) != null) {
            arrayList.add(counter,line);
            counter++;
        }
        bufferedReader.close(); 

        for(int i=2;i<arrayList.size();i+=2) {

           if (arrayList.get(0).equals(arrayList.get(i))) {
               response.sendRedirect("change_login.jsp");
               return;
            }
        }

        FileWriter fileWriter = new FileWriter(file); 
        BufferedWriter bufferedWriter = new BufferedWriter(fileWriter); 

        for(int j=0;j<arrayList.size();j++){
            bufferedWriter.write(arrayList.get(j) + "\n");
        }

        bufferedWriter.close(); 
        response.sendRedirect("index.jsp");

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}


