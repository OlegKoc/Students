package db;

import entity.Group;
import entity.Student;
import services.StringService;

import java.sql.*;
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
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/nwe_students?user=root&password=vkznm2000"); // соединение с   БД
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
                student.setId(result.getInt(ID));
                student.setSurname(result.getString(SURNAME));
                student.setName(result.getString(NAME));
                student.setDate(result.getDate(DATE));


                Group group = new Group();
                group.setName(result.getString(GROUP));
                student.setGroup(group);
                students.add(student);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }


        return students;
    }

    public static int getGroupId(String groupName) {
        try {
            ResultSet resultSet = statement.executeQuery(String.format("select id from groupp as g where g.group = '%s';", groupName)); // executeQuery - запрос из БД
            while (resultSet.next()) {

                return resultSet.getInt(ID);
            } // цикл(вернет группу), если такой группы нет, то работа метода закончится и далее вызываем метод, который создает новую группу(строчка ниже)

            statement.execute(String.format("insert into `groupp` (`group`) values ('% s');", groupName)); //execute - метод, который что-то  создает в БД
            resultSet = statement.executeQuery(String.format("select id from groupp as g where g.group = '%s';", groupName));
            while (resultSet.next()){
                return resultSet.getInt(ID);
            }


        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Ошибка");
        }
        return -1;
    }


    public static void createStudent(String surname, String name, int groupId, String date) // метод, который создает студента
    {

        try {
            statement.execute(String.format("insert into `student` (`surname`, `name`, `id_group`, `date`) values('%s', '%s', '%d', '%s');", surname, name, groupId, date));


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void  deleteStudents(String[] ids){

        try {
            statement.execute(String.format("update `student` set `status` ='0' where id in(%s);", StringService.convertIdsIntoString(ids)));
        } catch (Exception e) {
            e.printStackTrace();

        }
    }
}
// insert into `student` (`surname`, `name`, `id_group`, `date`) values('Кочуров', 'Роман', '1', '2023-01-15');

