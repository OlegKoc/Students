package services;

import java.sql.Date;
import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class DateService {

    public static String convertDateForDB(String date) {

        String dateForDb;

        try {
            DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
            Date formattedDate = (Date) format.parse(date);
            Format formattr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            dateForDb = formattr.format(formattedDate);


        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("ошибка в форматировании");
        }
        return dateForDb;
    }
}
