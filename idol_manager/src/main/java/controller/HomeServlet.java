package controller;

import Service.impl.IdolService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HomeServlet" , value = "/home")
public class HomeServlet extends HttpServlet {
    private final IdolService idolService = new IdolService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "idol":


                break;
            case "customer":
                break;
            default:
                showHome(request,response);

        }
    }
    public void showHome(HttpServletRequest request, HttpServletResponse response){
        String name_find="";
        request.setAttribute("idols", idolService.selectAllObject(name_find));
        try {
            request.getRequestDispatcher("/view/home.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
