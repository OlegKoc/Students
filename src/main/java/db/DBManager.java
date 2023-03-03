package db;

import entity.Group;
import entity.Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBManager {

    private static Statement statement;
    private static final String ID = "id";
    private static final String SURNAME = "surname";
    private static final String NAME = "name";
    private static final String DATE = "date";
    private static final String GROUP = "group";


    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); //com.mysql.cj.jdbc.Driver
            Connection connection = DriverManager.getConnection("jdbs:mysql://localhost:3306/nwe_students?user=root&password=vkznm2000"); // соединение с   БД
            statement = connection.createStatement(); // объект для отправки запросов в БД
        } catch (Exception e) {
            e.printStackTrace();

        }
    }


    public static List<Student> getAllActiveStudents() {
        List<Student> students = new ArrayList<>();

        try {
            ResultSet result = statement.executeQuery("SELECT s.id, surname,  name, date, g.group from student as s left join groupp as g on s.id_group = g.id where status = '1'");


            while (result.next()) {
                Student student = new Student();
                student.setID(result.getInt(ID));
                student.setSurname(result.getString(SURNAME));
                student.setName(result.getString(NAME));
                student.setDate(result.getDate(DATE));


                Group group = new Group();
                group.setName(result.getString(GROUP));
                student.setGroup(group);
                students.add(student);

            }

        } catch(Exception e) {
            e.printStackTrace();
        }


        return students;
    }
}


