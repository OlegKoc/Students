package controllers;

import db.DBManagerDiscipline;
import entity.Discipline;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DisciplineController", urlPatterns = "/discipline")
public class DisciplineController extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Discipline> disciplines = DBManagerDiscipline.getAllActiveDiscipline();   // вызываем метод с заполненной коллекцией дисциплин
        req.setAttribute("discipline", disciplines); // передаем заполненную коллекцию дисциплин
        req.getRequestDispatcher("WEB-INF/jsp/discipline.jsp").forward(req, resp);
    }


}
