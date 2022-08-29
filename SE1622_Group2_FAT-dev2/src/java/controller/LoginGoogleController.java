/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.GoogleDAO;
import dao.UserDao;
import dto.UserDTO;
import dto.UserGoogleDTO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Properties;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utils.MyApplicationConstants;

/**
 *
 * @author buikh
 */
@WebServlet(name = "LoginGoogleController", urlPatterns = {"/LoginGoogleController"})
public class LoginGoogleController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ServletContext context = this.getServletContext();
        Properties siteMaps = (Properties) context.getAttribute("SITEMAPS");
        String url = siteMaps.getProperty(MyApplicationConstants.AuthenticationFeatures.USER_GOOGLE_PAGE);
        String code = request.getParameter("code");
        String accessToken = GoogleDAO.getToken(code);
        try {
            UserGoogleDTO user = GoogleDAO.getUserInfo(accessToken);
            HttpSession session = request.getSession(true);
            UserDao dao = new UserDao();
            
            if (user != null) {
                boolean result = dao.checkUsernameIsExisted(user.getEmail(), user.getEmail());
                if (result == true) {
                    url = siteMaps.getProperty(MyApplicationConstants.AuthenticationFeatures.USER_GOOGLE_PAGE);
                    UserDTO dto = dao.findByUsernameAndEmail(user.getEmail(), user.getEmail());
                    if(dto != null){
                        session.setAttribute("USER", dto);
                    }
                    
                } else {
                    UserDTO dto = new UserDTO(user.getEmail(), "1", "", "", "", true, "USGOOGLE", user.getGiven_name(), user.getEmail(), user.getPicture());
                    boolean createResult = dao.createNewAccount(dto);
                    if (createResult) {
                        url = siteMaps.getProperty(MyApplicationConstants.AuthenticationFeatures.USER_GOOGLE_PAGE);
                        session.setAttribute("USER", dto);
                    }
                }
            }
        } catch (NamingException ex) {
            log("LoginGoogleController _ Naming " + ex.getMessage());
        } catch (SQLException ex) {
            log("LoginGoogleController _ SQLException " + ex.getMessage());
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        }

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
