/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import form.UserDisplayForm;
import java.io.IOException;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import service.UserService;
import service.impl.UserServiceImpl;

/**
 *
 * @author hungp
 */
@WebServlet(name = "SearchCustomerController", urlPatterns = {"/SearchCustomerController"})
public class SearchCustomerController extends HttpServlet {

    private static final String ERROR = "customer.jsp";
    private static final String SUCCESS = "customer.jsp";
    private UserService userService;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        HttpSession session = request.getSession(true);
        String fullName = getUserFullName(request);
        userService = new UserServiceImpl();
        List<UserDisplayForm> userDisplayForms = userService.searchCustomer(fullName);
        sortUserDisplayForms(userDisplayForms);

        if (!userDisplayForms.isEmpty()) {
            session.setAttribute("LIST_CUSTOMER", userDisplayForms);
        }
        url = SUCCESS;
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);

    }

    private String getUserFullName(HttpServletRequest request) {
        String fullName = request.getParameter("search");
        return fullName;
    }

    private void sortUserDisplayForms(List<UserDisplayForm> userDisplayForms) {
        userDisplayForms.stream().sorted(Comparator.comparing(UserDisplayForm::getUsername)).collect(Collectors.toList());
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
