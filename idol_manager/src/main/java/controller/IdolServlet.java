package controller;

import Service.impl.IdolService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
            request.getRequestDispatcher("view/idol-manager.jsp").forward(request, response);
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

}
