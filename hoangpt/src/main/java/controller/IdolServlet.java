package controller;

import model.Idol;
import repository.Repository;
import service.IService;
import service.Service;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "IdolServlet", value = "/idol")
public class IdolServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IService idolService=new Service();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            if (action.equals("edit")) {
                showUpdateForm(request, response);
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Idol existingIdol = idolService.findbyID(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("idol/edit.jsp");
        request.setAttribute("idol", existingIdol);
        dispatcher.forward(request, response);
    }
    private void updateIdol(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String birth = request.getParameter("birth");
        String country = request.getParameter("country");
        String popular = request.getParameter("popular");
        String skill = request.getParameter("skill");

        Idol idol = new Idol(id, name, gender,birth, country,popular, skill);
        idolService.update(idol);
        RequestDispatcher dispatcher = request.getRequestDispatcher("idol/update.jsp");
        dispatcher.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
