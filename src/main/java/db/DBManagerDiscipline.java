package db;

import entity.Discipline;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBManagerDiscipline {


    private static Statement statement;
    private static final String ID = "id";
    private static final String DISCIPLINE = "discipline";


    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); //com.mysql.cj.jdbc.Driver
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/nwe_students?user=root&password=vkznm2000"); // соединение с   БД
            statement = connection.createStatement(); // объект для отправки запросов в БД
        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    public static List<Discipline> getAllActiveDiscipline() {
        List<Discipline> disciplines = new ArrayList<>();
        try {

            ResultSet resultSet = statement.executeQuery("SELECT d.id, discipline from discipline as d"); //запрос в БД

            while (resultSet.next()) {             //создем объект класса Discipline, проходим циклом по каждой дисциплине и сохраняем в переменную

                Discipline discipline = new Discipline();

                discipline.setID(resultSet.getInt(ID));
                discipline.setName(resultSet.getString(DISCIPLINE));

                disciplines.add(discipline);    // добавляем все дисциплины из объекта discipline  в коллекцию Discipline  и возвращаем  уже заполненную коллекцию
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return disciplines;


    }
}
