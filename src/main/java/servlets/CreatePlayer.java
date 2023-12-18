package servlets;

import model.Player;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/create")
public class CreatePlayer extends HttpServlet {
    private static SessionFactory sessionFactory;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/pages/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
            Configuration configuration = new Configuration().configure();
            sessionFactory = configuration.buildSessionFactory();
            Session session = sessionFactory.openSession();
            session.beginTransaction();

            String name = req.getParameter("name");
            String dndClass = req.getParameter("dndClass");
            String dndRace = req.getParameter("dndRace");

            Player player = new Player(name, dndClass, dndRace);
            session.save(player);

            session.getTransaction().commit();
            session.close();
            resp.sendRedirect("/read");
    }
}
