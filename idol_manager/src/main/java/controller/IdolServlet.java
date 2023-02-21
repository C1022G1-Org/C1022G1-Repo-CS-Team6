package controller;

import Service.impl.IdolService;
import model.Idol;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "controller.IdolServlet", value = "/idol-manager")
public class IdolServlet extends HttpServlet {
    private final IdolService idolService = new IdolService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createIdol(request, response);
                break;
            case "update":
                updateIdol(request, response);
                break;
            case "delete":
                deleteIdol(request,response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "update":
                showUpdateForm(request, response);
                break;
            default:
                listIdol(request, response);
                break;
        }
    }

    private void listIdol(HttpServletRequest request, HttpServletResponse response) {
        String name_find = request.getParameter("name_find");
        request.setAttribute("name_find", name_find);
        if (name_find == null) name_find ="";
        request.setAttribute("idols", idolService.selectAllObject(name_find));
        try {
            request.getRequestDispatcher("/view/idol-manager.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteIdol(HttpServletRequest request, HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("deleteId"));
        idolService.deleteIdol(id);
        try {
            response.sendRedirect("/idol-manager");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void showCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/create.jsp");
        dispatcher.forward(request, response);
    }
    private void createIdol(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String birth = request.getParameter("date_of_birth");
        String country = request.getParameter("country");
        String img = request.getParameter("image");
        String skill = request.getParameter("skill");
        Idol idol = new Idol(name, birth, gender, country, skill ,img);
        idolService.create(idol);
        response.sendRedirect("/idol-manager");

    }
    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Idol existingIdol = idolService.findbyID(id);
        request.setAttribute("idol", existingIdol);
        request.getRequestDispatcher("/view/update.jsp").forward(request,response);
    }
    private void updateIdol(HttpServletRequest request, HttpServletResponse response)
    {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String birth = request.getParameter("date_of_birth");
        String country = request.getParameter("country");
        String skill = request.getParameter("skill");
        String image = request.getParameter("image");
       Idol idol = idolService.findbyID(id);
       idol.setName(name);
       idol.setGender(gender);
       idol.setDateOfBirth(birth);
       idol.setCountry(country);
       idol.setSkill(skill);
       idol.setImg(image);
        try {
            idolService.update(idol);
            try {
                response.sendRedirect("/idol-manager");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
