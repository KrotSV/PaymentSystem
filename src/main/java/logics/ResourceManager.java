package logics;

import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;

public class ResourceManager {
    public static DAO getDAO(){
        return new DAOmysql();
    }


    public static String format(GregorianCalendar calendar){
        SimpleDateFormat fmt = new SimpleDateFormat("dd-MMM-yyyy");
        fmt.setCalendar(calendar);
        String dateFormatted = fmt.format(calendar.getTime());
        return dateFormatted;
    }
}
