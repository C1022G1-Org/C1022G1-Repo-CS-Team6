package controller;

import Service.impl.CustomerService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CustomerServlet", value = "/customer-manager")
public class CustomerServlet extends HttpServlet {
    private final CustomerService customerService = new CustomerService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "register":
                break;
            case "create":
                break;
            case "delete":
                deleteCustomer(request,response);
            default:
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){

            case "register":
                showLoginForm(request,response);
                break;
            default:
                showLoginForm(request,response);
//                listCustomer(request, response);
                break;
        }
    }
    private void showLoginForm(HttpServletRequest request, HttpServletResponse response){
        try {
            request.getRequestDispatcher("/view/customer/login.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void listCustomer(HttpServletRequest request, HttpServletResponse response) {
        String name_find = request.getParameter("name_find");
        request.setAttribute("name_find", name_find);
        if (name_find == null) name_find ="";
        request.setAttribute("customers", customerService.selectAllObject(name_find));
        try {
            request.getRequestDispatcher("/view/customer-manager.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("deleteId"));
        customerService.deleteCustomer(id);
        try {
            response.sendRedirect("view/customer/customer-manager");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

}
