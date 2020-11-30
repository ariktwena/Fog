package web.admin;

import domain.user.User;
import web.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdminStart", urlPatterns = { "/AdminStart" } )
public class Start extends BaseServlet {
    
    /**
     * Renders the index.jsp page
     * @see BaseServlet
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    
        try {
            User usr = (User) req.getSession().getAttribute("currentUser");
        
            log("Trying to log into admin :" + usr);
        
            if (usr == null || !usr.isAdmin()) {
                log("User is not admin: " + usr );
                resp.sendError(401);
            } else {
                log("User is admin: " + usr);
                render("Administrator - Start", "/WEB-INF/pages/admin/adminpage.jsp", req, resp);
            }
        
        } catch (Exception e){
            log(e.getMessage());
        }
    }

}
